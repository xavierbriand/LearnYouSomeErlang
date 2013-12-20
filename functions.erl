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

old_enough(Age) when Age >= 18 -> true;
old_enough(_) -> false.

right_age(Age) when Age >= 16, Age =< 77 -> true;
right_age(_) -> false.

right_age2(Age) when Age < 16; Age > 77 -> false;
right_age2(_) -> true.
