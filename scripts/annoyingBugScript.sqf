while {alive player} do {
	sleep 3;
	systemChat 'adding an action';
	_action = player addAction
	[
		"Annoying action",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script
			_string = format ["action id: %1", _actionId];
			hint _string;
		},
		nil,		// arguments
		1.5,		// priority
		false,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"true", 	// condition
		50,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];
	sleep 3;
	systemChat 'removing the action';
	player removeAction _action;
};
