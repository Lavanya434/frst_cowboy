{application, 'frst_cowboy', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['frst_cowboy_app','frst_cowboy_sup','my_handler']},
	{registered, [frst_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {frst_cowboy_app, []}},
	{env, []}
]}.