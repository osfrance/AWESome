if (orbis_awesome_hasACEInteractMenu) then {
    [] call orbis_ground_fnc_addACEInteractMenu;
} else {
    player addEventHandler ["GetInMan", {_this call orbis_ground_fnc_getInAddAction}];
};