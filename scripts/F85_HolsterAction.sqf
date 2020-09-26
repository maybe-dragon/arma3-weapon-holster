/*
 * Author: Fafnir
 * Homepage: https://github.com/maybe-dragon/arma3-weapon-holster
 * License: MIT, do whatever you want
 */

private _title = "No weapon in hand";

// Remove any previous actions with this title. Necessary if it is called more than once for a player, e.g. in `onPlayerRespawn.sqf`.
{
	private _params = player actionParams _x;
	if (_params select 0 == _title) then {
		player removeAction _x;
	}
}
forEach actionIDs player;

// Add the action. Only visible when the player is not in a vehicle and has a weapon in their hands.
_action = player addAction [
    _title,  // title
	{
		// params ["_target", "_caller", "_actionId", "_arguments"];
		player action ["SWITCHWEAPON", player, player, -1];
	},			// script       {}
	nil,		// arguments    nil
	6,			// priority     1.5
	false,		// showWindow   true
	true,		// hideOnUse    true
	"",			// shortcut     ""
	'vehicle player == player and currentWeapon player != ""', 	// condition    "true"
	50,			// radius       50
	false,		// unconscious  false
	"",			// selection    ""
	""			// memoryPoint  ""
];
