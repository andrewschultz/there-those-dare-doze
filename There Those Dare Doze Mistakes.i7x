Version 1/221007 of There Those Dare Doze Mistakes by Andrew Schultz begins here.

"This encompasses all the credit TTDD gives for good guesses."

volume general stuff

to current-table-note-x (tn - a table name):
	current-table-note tn;

table of general good guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"ride"	"wrong"	--	false	--	"There is no fourth option for the guide gong, but you do have a chance for a heel turn at game's end."
"side"	"song"	--	false	--	"This is a no-frills text adventure. No music, no graphics, besides the middling-at-best cover art."

volume room guesses

table of car cage guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"gar"	"gauge"	--	false	--	"You remember, for no parrticular reason, that a 64-gauge cigar is one inch thick. Or is that diameter? Or circumference?"

table of cram creek guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bam"	"beak"	--	false	--	"Alas, no birds swoop down to assist you."
"lamb"	"leak|leek"	--	false	--	"That might work in a pasture, but not here."
"spam"	"speak"	no-clique rule	false	--	"You need quality and not quantity of words. Plus, you're not sure how to speak in ALL CAPS."

this is the no-clique rule:
	if sco-clam-clique is false, the rule succeeds;
	the rule fails;

table of grave ground guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"wave"	"wound"	no-wave rule	--	--	"You call for a wave, but it might not come until after Dave's sorted out what he likes."

this is the no-wave rule:
	if sco-fave-found is false, the rule succeeds;
	the rule fails;

table of rare rows guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"air|err|ere"	"ohs|owes"	--	false	--	"[if arrows are moot]You don't need any more arrows raining down[else if sco-arrows is true]There's no need to split up the arrows[else]Hmm! You feel on the right track, for some odd reason. But you can't put everything together[end if]."
"blare"	"blows"	--	false	--	"No euphemisms for violence, please."
"brer"	"bros"	--	false	--	"That's overdoing the whole 'we are family' angle."
"care"	"cos"	--	false	--	"No, more than corporate help is required here."
"claire"	"close|clothes"	--	false	--	"No, what you're wearing is okay, and you don't need someone to help you finish the job."
"flayer|flare|flair"	"flows"	--	false	--	"Alas, anything violent or even a bright explosion may be overkill."
"frere"	"fros|froze"	--	false	--	"Foreign language is innovative but not necessary."
"impair"	"impose"	--	false	--	"Psychological warfare is not the way to go. It is the opposite of prayer. Even clever stuff like what you just found."
"lair"	"lows"	--	false	--	"You briefly spend a second fearing if someone or something down under might swallow you up. It does not. Whoah!"
"mare|mayor"	"mows"	--	false	--	"The land is too desolate to need mowing."
"nair|neer"	"nose|knows"	--	false	--	"[knows-stuff]!"
"pair|pare"	"pose|poes"	--	false	--	"[pose-poes]."
"spare"	"spose"	--	false	--	"A spare 's'pose' feels like false humility."
"tear"	"toes"	--	false	--	"Self-mutilation is not a good alternative to prayer."

to say knows-stuff:
	if the player's command includes "knows":
		say "But prayer and such is built on faith";
	else if the player's command includes "neer":
		say "No, you're much better looking with your nose attached to your face";
	else:
		say "Cosmetic hair removal can wait. You, like, have a big important spiritual quest, or something"

to say pose-poes:
	if the player's command includes "pose":
		say "No, one must be sincere and not pose";
	else:
		say "A suitable author for Halloween, but I'm trying to avoid literary references. Unless they give a really awful pun"

table of rowr room guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"sour"	"assume"	--	false	--	"You assume this trickery won't get you a point, and what do you know? You're right on!"

volume thing guesses

table of ppnn guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"cope"	"cuts"	--	false	--	"The right idea, but you need something more concrete."
"mope"	"mutts"	--	false	--	"The Prayer Pros could use pets, even ones not very cheery, but first comes more basic needs."
"slope"	"sluts"	--	false	--	"Whoever they're for, um, no."

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
a topic	a rule	a truth state	a rule	text

There Those Dare Doze Mistakes ends here.

---- DOCUMENTATION ----
