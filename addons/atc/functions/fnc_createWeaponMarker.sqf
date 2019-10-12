#include "script_component.hpp"

params ["_array", "_type", ["_displayDetails", true], ["_radarSide", civilian], ["_targetType", 0]];

private ["_projectile", "_callsign", "_side", "_markerColor", "_markerArray"];
private _return = [];
{
	_projectile = _x select 0;

	_callsign = getText (configFile >> "CfgWeapons" >> (_x select 1) >> "displayName");

	_side = _x select 2;
	_markerColor = [_side, _radarSide, _targetType] call FUNC(getRadarMarkerColor);

	_markerArray = [_projectile, _callsign, _displayDetails, _markerColor] call FUNC(drawRadarMarker);
	_return pushback _markerArray;
} forEach _array;

_return
