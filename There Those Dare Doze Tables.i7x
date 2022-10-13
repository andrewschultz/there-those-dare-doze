Version 1/221007 of There Those Dare Doze Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of There Those Dare Doze Tables."

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"hope"	"huts"	--	--	false	true	true	false	rare rows	vc-hope-huts rule	vr-hope-huts rule	--	--
"rope"	"ruts"	--	--	false	true	true	false	rare rows	vc-rope-ruts rule	vr-rope-ruts rule	--	--

a goodrhyme rule (this is the vc-hope-huts rule):
	if ppnn is not fungible, unavailable;
	if sco-hope-huts is true:
		vcal "You already created the hope huts!";
		already-done;
	ready;

this is the vr-hope-huts rule:
	now sco-hope-huts is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-rope-ruts rule):
	if ppnn is not fungible, unavailable;
	if sco-rope-ruts is true:
		vcal "You already created the rope ruts!";
		already-done;
	ready;

this is the vr-rope-ruts rule:
	now sco-rope-ruts is true;
	say "Rope ruts appear!";
	abide by the hope-and-rope rule;

section auxiliary rules

this is the hope-and-rope rule:
	if rope-and-hope is 2:
		say "The Prayer Pros have a new place to lie down. Their prayers will be more effective now, and they will use them more efficiently so that something like whatever discourage them before will not happen again. At least not so easily they shake your hand and thank you. You trot off. You've done a good job.";
		end the story;
	else:
		say "You sense there is a bit more to do. What can [if sco-rope-ruts is true]the rope hole[else]hold the rope[end if]?";

volume table of noways

table of noways
noway-rm	noway-txt
Rare Rows	"There are no hidden directions here"
Ground Grave	"It's even spookier and darker if you go further from the rare rows."
Cram Creek	"The creek goes off too far into the distance. Whatever you need to do, it has to be right here."
Rowr Room	"It's a room. The only way back is west."
Car Cage	"The only way out is back north."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

There Those Dare Doze Tables ends here.

---- DOCUMENTATION ----
