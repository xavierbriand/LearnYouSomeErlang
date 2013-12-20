-module(useless).
-export([add/2, hello/0, great_and_add_two/1])

add(A,B) ->
    A + B.

%% show greetings
%% io:format/1 is the standard function used to output text.
hello() ->
    io:format("Hello, world!~n").

great_and_add_two(X) ->
    hello(),
    add(X,2).
