(*
	Simple task managment application (c) Vlad Zolotoy 2014

	Yeah, it's written in Pascal! Why? For fun! Pascal was
	my first programing language. I miss it. I decide to use it
	for developing small UNIX-style CLI application.

	Commands:
	todo -v --version	: display software version
	todo -h --help		: show help index...
	todo add -t "Task"	: add new task
*)
Unit tasks;

interface

procedure addTask(task: String);

implementation
 
procedure addTask(task: String);
begin
	writeln('Task added: ', task);
end;
 
end.
