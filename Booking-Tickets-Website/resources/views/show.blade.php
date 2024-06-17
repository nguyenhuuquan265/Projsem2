<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{$ticket->event_name}}</title>
</head>
<body>
    <h1>{{$ticket->event_name}}</h1>
    <p>Date: {{$ticket->event_date}}</p>
    <p>Price: ${{$ticket->price}}</p>
    <p>Available Tickets: {{$ticket->available_tickets}}</p>
    
    <form method="POST" action="/book">
        @csrf 
        <input type="hidden" name="ticket_id" value="{{$ticket->id}}">
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" min="1" max="{{$ticket->available_tickets}}">
        <button type="sumbit">Book</button>
    </form>
</body>
</html>