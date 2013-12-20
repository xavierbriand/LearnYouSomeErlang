-module(functions).
-compile([export_all]). % replace by -export/1 later

head([H|_]) -> H.

second([_|[X|_]]) -> X.

same(X,X) -> true;
same(_,_) -> false.

valid_time({Date = {Y,M,D}, Time = {H,I,S}}) ->
    io:format("The Date Tuple (~p) says today is: ~p/~p/~p,~n", [Date,Y,M,D]),
    io:format("The Time Tuple (~p) indicates: ~p:~p:~p,~n", [Time,H,I,S]);
valid_time(_) ->
    io:format("Stop feeding me wrong data!~n").
