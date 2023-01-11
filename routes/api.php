<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RealEstateController;
use App\Http\Controllers\UserRealEstateController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\UserController;

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



//Route::resource('real_estates', RealEstateController::class);
Route::get('/users', [UserController::class, 'index']);
Route::post('/users', [UserController::class, 'store']);
Route::put('/users/{id}', [UserController::class, 'update']);
Route::delete('/users/{id}', [UserController::class, 'destroy']);

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::get('/users/{id}/real_estates', [UserRealEstateController::class, 'index'])->name('users.real_estates.index');

Route::get('/real_estates', [RealEstateController::class, 'index']);
Route::get('/real_estates/{id}', [RealEstateController::class, 'show']);


Route::group(['middleware' => ['auth:sanctum']], function () {
Route::get('/profile', function(Request $request) {
    return auth()->user();});
Route::resource('real_estates', RealEstateController::class)->only(['update','store','destroy']);

// API route for logout user
//Route::post('/logout', [AuthController::class, 'logout']);
});


//Route::get('users.real_estates', UserRealEstateController::class)->only(['index']);
