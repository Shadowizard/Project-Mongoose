/obj/structures/rubble

	name = "rubble"
	desc = "A pile of wreckage"
	icon_state = "rubble"
	layer = 3.1

	var/drops = list(/obj/items/stacks/rods,/obj/items/stacks/scrap,/obj/items/stacks/bricks,/obj/items/stacks/bricks)

	HP = 1

	clicked()
		src.density = 0
		step(usr,get_dir(usr,src))
		src.density = 1
		sleep(2)

	destroy = list("dig")

	destroyme()
		if(prob(75))
			var/result = pick(drops)
			var/obj/items/stacks/R = new result(src.loc)
			R.stack = rand(1,(R.stack_lim/2))
			usr << "You excavate \an [R.name] from the rubble"
		else
			usr << "You fail to excavate anything usefull from the rubble"
		del src
