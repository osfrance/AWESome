#include "script_component.hpp"

params ["_vehicle", "_side"];

private _NeutralTo = _vehicle getVariable [QGVAR(isNeutralTo), []];
if (_side in _NeutralTo) then {
	_NeutralTo = _NeutralTo - [_side];
} else {
	_NeutralTo pushBackUnique _side;
};

_vehicle setVariable [QGVAR(isNeutralTo), _NeutralTo, true];
