# Arma 3 - Weapon holster script

Inspired by [Phantom Wolf's Weapon holster script](https://www.armaholic.com/page.php?id=30571)

Adds an action to the player ("No weapon in hand"), which puts the players weapon on his back.

## Differences to the original script

- Won't show inside of vehicles
- Does not add multiple actions if the script is instantiated twice? (Not sure how this accidentally happens)
- Does not add an action to re-equip the primary weapon, because this can already be done with the normal Arma3 hotkeys
- Does not use a loop and thus, does not re-add the action if it is removed for some reason.
  
## Usage
 
- Copy the file `scripts/F85_HolsterAction.sqf`
- Add the following line to `initplayerlocal.sqf` or `onPlayerRespawn.sqf`:
```
  _holster = [] execVM "scripts\F85_HolsterAction.sqf";
```
