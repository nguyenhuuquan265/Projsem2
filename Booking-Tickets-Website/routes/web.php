

use App\Http\Controllers\TicketController;

Route::get('/',[TicketController::class,'index']);
Route::get('/tickets', [TicketController::class, 'show']);
Route::post('/book', [TicketController::class, 'book']);