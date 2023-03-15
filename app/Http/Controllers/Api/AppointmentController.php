<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\ForApiTrait;
use App\Http\Resources\namingResource;
use App\Models\Appointment;
use App\Models\Doctor;
use App\Models\User;

use Tymon\JWTAuth\Facades\JWTAuth;


class AppointmentController extends Controller
{
    use ForApiTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
       return $this->showTrait(Appointment::class);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user=JWTAuth::parseToken()->authenticate();
        $doctor=Doctor::where('user_id',$user->id)->first();
        $appointment=Appointment::where('id',$id)->where('dr_id',$doctor->id)->get();
        if($user->id == $id || $user->role == 'admin' || !$appointment->isEmpty() ){
           return $this->showOneTrait(Appointment::class,$id);
        }
        else{
            return response()->json(['status' => 'You are Not Admin or Manager or Owner']);
        }


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user=JWTAuth::parseToken()->authenticate();
        $appointment=Appointment::where('id',$id)->first();
        $doctor=Doctor::where('user_id',$user->id)->first();
        if($appointment)
       { if($user->id == $id || $user->role == 'admin' || $appointment->dr_id == $doctor->id ){
           $appointment->update($request->all());
           return $this->showOneTrait(Appointment::class,$id);
        }
        else{
            return response()->json(['status' => 'You are Not Admin or Manager or Owner']);
        }}
        else{
            return response()->json(['status' => 'The appointment not Found']);

        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return $this->deleteItem(Appointment::class,$id);
    }
}
