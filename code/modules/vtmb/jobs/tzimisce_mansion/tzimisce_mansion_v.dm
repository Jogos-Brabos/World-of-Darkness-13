/datum/job/vamp/tzimisce_mansion_v
	supervisors = "the Laws of Hospitality"
	total_positions = 1
	spawn_positions = 1

/datum/timelock/tzimisce_mansion_v
	name = "Tzismice Mansion Roles"

/datum/timelock/tzimisce_mansion_v/New(name, time_required, list/roles)
	. = ..()
	src.roles = JOB_TZIMISCE_MANSION_ROLES_LIST


/datum/timelock/living
	name = "Living Roles"

/datum/timelock/living/can_play(client/C)
	return C.get_time_living() >= time_required

/datum/timelock/living/get_role_requirement(client/C)
	return time_required - C.get_time_living()
