obj/structures

	icon = 'structures.dmi'

	var/list/destroy

	Click()
		usr.dir = get_dir(usr,src)
		var/i
		if(!(usr.holding == null))
			for(i in usr.holding.properties)
				if(i in src.destroy)
					hurtme(1)

		clicked()