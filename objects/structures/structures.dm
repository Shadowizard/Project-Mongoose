obj/structures

	icon = 'structures.dmi'

	var/list/destroy

	Click()
		usr.dir = get_dir(usr,src)
		if(get_dist(usr,src) <= 1)
			var/i
			if(!(usr.holding == null))
				for(i in usr.holding.properties)
					if(i in src.destroy)
						hurtme(1)

			clicked()

	examined()
		if(HP == maxHP)
			usr << "<SPAN CLASS=examine> It looks undamaged </SPAN>"
		else if(HP << maxHP)
			if(HP >= (maxHP/2))
				usr << "<SPAN CLASS=examine> It looks slightly beat-up </SPAN>"
			if(HP << (maxHP/2))
				usr << "<SPAN CLASS=warning> It looks quite damaged </SPAN>"