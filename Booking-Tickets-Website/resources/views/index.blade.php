<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tickets</title>
</head>
<body>
    <h1>Available Tickets</h1>
    @if(session('success'))
    <p>{{session('success')}}</p>
    @endif
    @if(session('error'))
    <p>{{session('error')}}</p>
    @endif
    <ul>
        @foreach($tickets as $ticket)
        <li>
            {{$ticket->event_name}} - {{$ticket->event_date}} - ${{$ticket->price}}
            <a href="/tickets/{{$ticket->id}}">View</a>
        </li>
        @endforeach
    </ul>
</body>
</html>