
params ["_unit","_JIP"];

_orginal = [] execVM "scripts\PW_HolsterAction-edit.sqf";
//_bug = [] execVM "scripts\annoyingBugScript.sqf"; // Does not seem to trigger the bug
_new = [] execVM "scripts\F85_HolsterAction.sqf";
_second = [] execVM "scripts\F85_HolsterAction.sqf";