/*
	@file		onPlayerRespawn.sqf
	@author		Rarek [AW]
				JediNarwals [TG]
	@description
		Calls on player respawn.
*/

player switchCamera "EXTERNAL";
enableRadio false;														// That will clear the voices from my head...
enableSentences FALSE;													// Stop talking to myself
enableSaving [FALSE,FALSE];												// "Everything Not saved will be lost." - Nintendo 'Quit Screen' message
player enableFatigue false;												// Disables fatigue

// if (hasInterface) then {[] execVM 'scripts\sthud\init.sqf'};
// if (hasInterface) then {[] execVM 'scripts\stgi\init.sqf'};
//--------------------- Player actions

waitUntil {player == player};
if (player == player) then {removeAllActions player; [] spawn jedi_fnc_setupActions;}