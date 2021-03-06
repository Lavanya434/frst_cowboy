-module(my_handler).
-behaviour(cowboy_http_handler).

-export([init/3]).
-export([handle/2]).
-export([terminate/3]).

-record(state, {
}).

init(_, Req, _Opts) ->
	{ok, Req, #state{}}.

handle(Req, State=#state{}) ->
    {ok, Req2} = cowboy_req:reply(200,
        [{<<"content-type">>, <<"text/plain">>}],
        [<<"Hello Erlang!">>, <<"hi">>],
        Req),
    io:format("hi"),
    {ok, Req2, State}.

terminate(_Reason, _Req, _State) ->
	ok.
