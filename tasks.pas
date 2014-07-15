(*
	Simple task managment application (c) Vova Zolotoy 2014
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