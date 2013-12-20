-module(functions).
-compile([export_all]). % replace by -export/1 later

head([H|_]) -> H.
