/*
 * Author: Fafnir
 * Homepage: https://github.com/maybe-dragon/arma3-weapon-holster
 * License: MIT
 */

// Only initialize once
if (player getVariable "F85_HolsterAction_init") exitWith {false};
player setVariable ["F85_HolsterAction_init", true];

// Add the action. Only visible when the player is not in a vehicle and has a weapon in their hands.
_action = player addAction [
    "No weapon in hand",  // title
	{
		// params ["_target", "_caller", "_actionId", "_arguments"];
		player action ["SWITCHWEAPON", player, player, -1];
	},			// script       {}
	nil,		// arguments    nil
	6,			// priority     1.5
	false,		// showWindow   true
	true,		// hideOnUse    true
	"",			// shortcut     ""
	"vehicle player == player and currentWeapon player != ''", 	// condition    "true"
	50,			// radius       50
	false,		// unconscious  false
	"",			// selection    ""
	""			// memoryPoint  ""
];
