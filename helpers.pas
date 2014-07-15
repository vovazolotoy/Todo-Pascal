(*
	Simple task managment application (c) Vova Zolotoy 2014
*)
Unit helpers;

interface

{* Check if there is some specific option *}
function hasOption(option: String): Boolean;

{* Get value of some specific option *}
function getOption(option: String; alt: String): String;

{* Show application help *}
procedure displayHelp(version: String);

implementation
 
{* Check if there is some specific option *}
function hasOption(option: String): Boolean;
var int: Integer;
	has: Boolean = False;
begin
	for int := 1 to ParamCount do
    	if option = ParamStr(int) then
    		has := True;
	HasOption := has;
end;

{* Get value of some specific option *}
function getOption(option: String; alt: String): String;
var int: Integer;
	has: Boolean = False;
begin
	for int := 1 to ParamCount do
		if (ParamStr(int) = option) OR (ParamStr(int) = alt)
		then
			getOption := ParamStr(int + 1);
end;

{* Show application help *}
procedure displayHelp(version: String);
begin
	writeln('usage: todo <subcommand> [options] [args]');
	writeln('Simple task managment application (c) Vova Zolotoy 2014, version: ', version);
end;

end.