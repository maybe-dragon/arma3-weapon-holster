// This is the original weapon holster script by Phantom Wolf ( https://www.armaholic.com/page.php?id=30571 ).
// I only prefixed the action title.

while {alive player} do {
  waitUntil {primaryWeapon player != "" or handgunWeapon player != ""};
  _unitholsteraction = player addAction ["PW: No weapon in hand",{
	player action ["SWITCHWEAPON",player,player,-1];
	},nil,6,false,true];
  waitUntil {currentWeapon player == "" or {primaryWeapon player == "" && handgunWeapon player == ""}};
  if (primaryWeapon player == "" && handgunWeapon player == "") exitWith {
	player removeAction _unitholsteraction;
  };
  player removeAction _unitholsteraction;
  _unitequipprimaryactiontext = "Weapon " + getText (configfile >> "CfgWeapons" >> primaryWeapon player >> "displayName");
   _unitequipprimaryaction = player addAction [_unitequipprimaryactiontext,{
	 player action ["SWITCHWEAPON",player,player,0];
	 },nil,6,false,true];
   waitUntil {currentWeapon player != "" or primaryWeapon player == ""};
   player removeAction _unitequipprimaryaction;
};
