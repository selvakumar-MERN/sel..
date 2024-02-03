<?php

use App\Http\Controllers\Admin\OrderController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('dashboard');
});


Route::prefix('admin')->name('admin.')->group(function () {



    Route::prefix('order')->name('order.')->group(function () {
            Route::get('/',[OrderController::class,'show'])->name('list');
            Route::get('/create',[OrderController::class,'add'])->name('create');
            Route::post('/store',[OrderController::class,'store'])->name('store');
            Route::get('/edit/{id}',[OrderController::class,'edit'])->name('edit');
            Route::post('/update/{id}',[OrderController::class,'update'])->name('update');
            Route::delete('/delete/{id}',[OrderController::class,'destroy'])->name('delete');
    });

});
