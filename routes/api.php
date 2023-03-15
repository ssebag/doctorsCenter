<?php
use App\Http\Controllers\Api\PatientController;
use App\Http\Controllers\Api\DoctorController;
use App\Http\Controllers\Api\DepartmentController;
use App\Http\Controllers\Api\AppointmentController;
use App\Http\Controllers\Api\AccAppointmentController;
use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
/** patient */

/**doctor */
Route::get('/doctor/{id}',[DoctorController::class,'show'])->name('one.doctor');

/**department */
Route::get('/departments',[DepartmentController::class,'index'])->name('all.department');
Route::get('/department/{id}',[DepartmentController::class,'show'])->name('one.department');

/**appointment 2222 & 1 */
Route::get('/appointments',[AppointmentController::class,'index'])->name('all.appointment.for.manager');

Route::get('/appointment/delete/{id}',[AppointmentController::class,'destroy'])->name('delete.appointment');

/**accepted appointment for  manager and admin */
Route::get('/accepted/appointments',[AccAppointmentController::class,'index'])->name('all.acc.appointment.for.manager');
Route::get('/accepted/appointment/{id}',[AccAppointmentController::class,'show'])->name('one.acc.appointment.for.manager');


/**login */
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);
});
/**middleware for admin */

Route::middleware(['JwtAdminMiddleware'])->group(function(){
    Route::get('/doctors',[DoctorController::class,'index'])->name('all.doctors.for.admin');  //7
    Route::get('/users',[PatientController::class,'index'])->name('all.user.for.admin');  //3
    Route::get('/patient/delete/{id}',[PatientController::class,'destroy'])->name('delete.patient');  //4
    Route::post('/department/save',[DepartmentController::class,'store'])->name('store.department.for.admin'); //8
    Route::get('/department/delete/{id}',[DepartmentController::class,'destroy'])->name('delete.department');  //5

    Route::get('/doctor/delete/{id}',[DoctorController::class,'destroy'])->name('delete.doctor');
});

/**middleware for normal user */
Route::middleware(['JwtUserMiddleware'])->group(function(){
    Route::get('/user/{id}',[PatientController::class,'show'])->name('one.user');  //1
    Route::get('/appointment/{id}',[AppointmentController::class,'show'])->name('one.appointment.for.manager'); //2
    Route::post('/appointment/edit/{id}',[AppointmentController::class,'update'])->name('appointment.edit'); //9
    Route::get('/doctorPatient/{id}',[DoctorController::class,'showPatient'])->name('doctor.patient'); /** to show patient who related to specific doctor */ //10
    Route::post('/doctor/edit/{id}',[DoctorController::class,'update'])->name('doctors.update');  //11


});
