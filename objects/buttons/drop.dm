/obj/buttons/drop

	icon_state = "halfbutton"
	screen_loc = "7,1"

	Click()
		if(!(usr.holding == null))
			var/obj/items/I = usr.holding
			I.drop()