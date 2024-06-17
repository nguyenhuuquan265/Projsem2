namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ticket;

class TicketController extends Controller
{
    public function index(){
        $tickets = Ticket::all();
        return view('tickets.index', compact('tickets'));
    }

    public function show($id)
    {
        $ticket = Ticket::find($id);
        return view('tickets.show',compact('tickets'));
    }

    public function show($id)
    {
        $ticket = Ticket::find($id);
        return view('tickets.show',compact('ticket'));
    }
    public function book(Request $request){
        $ticket = Ticket::find($request->ticket_id);

        if($ticket->available_tickets >= $request->quantity){
            $ticket->available_tickets -= $request->quantity;
            $ticket->save();

            return redirect('/')->with('success','Booking ticket successfully');
        }

        return redirect('/')->with('error','Not enough tickets available');
    }
}
