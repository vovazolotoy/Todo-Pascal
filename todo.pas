(*
	Simple task managment application (c) Vova Zolotoy 2014

	Yeah, it's written in Pascal! Why? For fun! Pascal was
	my first programing language. I miss it. I decide to use it
	for developing small UNIX-style CLI application.

	Commands:
	todo -v --version	: display software version
	todo -h --help		: show help index...
	todo add -t "Task"	: add new task
*)
Program todo;

uses helpers, tasks;

const version = '0.1.1';

begin

	if ParamCount = 0 then
		writeln('Please use the --help option to get usage application');

	if hasOption('-v') or hasOption('--version') then
		writeln(version);

	if hasOption('-h') or hasOption('--help') then
		displayHelp(version);

	if hasOption('add') then
		addTask(getOption('-t', '-task'));
	
end.
