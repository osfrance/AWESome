private _vehicle = _this select 0;

private _aeroConfigs = [_vehicle] call orbis_aerodynamics_fnc_getAeroConfig;
_vehicle setVariable ["orbis_aerodynamics_aeroConfig", _aeroConfigs];

// report if needed (dev script)
// diag_log format ["orbis_aerodynamics _vehicle: %1, _aeroConfigs: %2", _vehicle, _aeroConfigs];
