"FIRST_ONE" by "TheTechRobo".

Tim Cook Value is initially "mad".

There is an iPad on the ground here.

There is a purse in the Lobby. "Tim Cook set down his purse for a second, so it's on the ground. He doesn't like his purse, but since it holds his phone, he doesn't want it stolen."

The purse contains an iPhone. The description of the iPhone is "It's the iPhone 2G. You want to steal it but you aren't a criminal."

Facial Head Canada is a room. "You are in Facial Head Canada, a great place that exists. :)".

The Lobby is East. "There's a wonderful place in Ontario, and that's not Marineland - it's this lobby!"

Tim Cook is in the Lobby. "Tim Cook is a jerk and nobody here likes him."

[Instead of stealing the purse, say "Don't Die!"]

before taking the purse:
	if the purse contains an iPhone: 
		say "The purse is far too valuable for Tim Cook to let you have it.";
		stop the action;
	otherwise:
		say "You have stolen Tim Cook's purse. He doesn't seem to mind.";
		continue the action;
instead of taking the iPhone:
	if the player is in the Lobby:
		if a random chance of 1 in 100 succeeds:
			say "Hey! Give that back!, Tim Cook says. You oblige.";
			now Tim Cook has the iPhone;
		otherwise:
			say "Tim Cook is now chasing you.";
			now the player is in Facial Head Canada;
			say "You outran him, but you didn't get the purse.";
			now the player is carrying the iPhone;
			now Tim Cook Value is "mad";
	otherwise: continue the action;
instead of going to the Lobby:
	if the player does not have the iPhone:
		say "You're lucky! Since Tim Cook is such an idiot, he completely forgot about you - he would only have remembered if you had the iPhone.";
		continue the action;
	if Tim Cook Value is "mad":
		say "Are you sure that going back in there with his iPhone is a good idea?";
		stop the action;
	otherwise:
		continue the action;
