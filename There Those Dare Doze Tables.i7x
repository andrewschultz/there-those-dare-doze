Version 1/221007 of There Those Dare Doze Tables by Andrew Schultz begins here.

"This is the main tables file for TTDD. It largely encompasses the point-scoring mechanisms, but there are homonym clues, too."

[UTILITIES:
rorg.py organizes rules as they are in table (the puzzles are organized by room and then alphabetically.)]

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"arrows"	--	"air/rows"	vh-arrows rule	false	true	true	false	rare rows	vc-arrows rule	vr-arrows rule	"arrows"	--
"bare"	"bows"	--	--	false	true	true	false	rare rows	vc-bare-bows rule	vr-bare-bows rule	--	--
"fair"	"foes"	--	--	false	true	true	false	rare rows	vc-fair-foes rule	vr-fair-foes rule	--	--
"hair"	"hose"	"hare/hoes"	vh-hair-hose rule	false	true	true	false	rare rows	vc-hair-hose rule	vr-hair-hose rule	--	--
"glare"	"glows"	--	--	false	true	true	false	rare rows	vc-glare-glows rule	vr-glare-glows rule	--	--
"snare"	"snows"	--	--	false	true	true	false	rare rows	vc-snare-snows rule	vr-snare-snows rule	--	--
"stair"	"stows"	"stare"	vh-stair-stows rule	false	true	true	false	rare rows	vc-stair-stows rule	vr-stair-stows rule	--	--
"blam"	"bleak"	--	--	false	true	true	false	cram creek	vc-blam-bleak rule	vr-blam-bleak rule	--	-- [start way north]
"maam"	"meek"	--	--	false	true	true	false	cram creek	vc-maam-meek rule	vr-maam-meek rule	--	--
"slam"	"sleek"	--	--	false	true	true	false	cram creek	vc-slam-sleek rule	vr-slam-sleek rule	--	--
"wham"	"weak"	--	--	false	true	true	false	cram creek	vc-wham-weak rule	vr-wham-weak rule	--	--
"clam"	"clique"	--	--	false	true	true	false	cram creek	vc-clam-clique rule	vr-clam-clique rule	--	"You can summon a [b]CLAM CLIQUE[r] [once-now of vc-clam-clique rule] you've pushed the Sham Sheik away in a verbal duel."
"far"	"phage"	--	--	false	true	true	false	car cage	vc-far-phage rule	vr-far-phage rule	--	-- [start way south]
"our"	"age"	"hour"	vh-our-age rule	false	true	true	false	car cage	vc-our-age rule	vr-our-age rule	--	--
"rar|rawr|rahr|rhar|rowr|rarr|raar"	"rage"	--	--	false	true	true	false	car cage	vc-rar-rage rule	vr-rar-rage rule	--	--
"star"	"stage"	--	--	false	true	true	false	car cage	vc-star-stage rule	vr-star-stage rule	--	"You can pull out the [b]STAR STAGE[r] [once-now of vc-star-stage rule] you've manipulated the Car Cage enough."
"crave"	"crowned"	--	--	false	true	true	false	grave ground	vc-crave-crowned rule	vr-crave-crowned rule	--	-- [start way west]
"pave"	"pound"	--	--	false	true	true	false	grave ground	vc-pave-pound rule	vr-pave-pound rule	--	--
"rave"	"round"	--	--	false	true	true	false	grave ground	vc-rave-round rule	vr-rave-round rule	--	--
"save"	"sound"	--	--	false	true	true	false	grave ground	vc-save-sound rule	vr-save-sound rule	--	--
"fave"	"found"	--	--	false	true	true	false	grave ground	vc-fave-found rule	vr-fave-found rule	--	"You can get Dave a [b]FAVE FOUND[r] [once-now of vc-fave-found rule] he has enough motivations to choose from."
"tower"	"tomb"	--	--	false	true	true	false	rowr room	vc-tower-tomb rule	vr-tower-tomb rule	--	-- [start way east]
"wower"	"womb"	--	--	false	true	true	false	rowr room	vc-wower-womb rule	vr-wower-womb rule	--	--
"dour"	"doom"	"dower"	vh-dour-doom rule	false	true	true	false	rowr room	vc-dour-doom rule	vr-dour-doom rule	--	--
"glower"	"gloom"	--	--	false	true	true	false	rowr room	vc-glower-gloom rule	vr-glower-gloom rule	--	--
"plower"	"plume"	--	--	false	true	true	false	rowr room	vc-plower-plume rule	vr-plower-plume rule	--	--
"flower"	"flume"	--	--	false	true	true	false	rowr room	vc-flower-flume rule	vr-flower-flume rule	--	--
"hope"	"huts"	"hutz"	vh-hope-huts rule	false	true	true	false	rare rows	vc-hope-huts rule	vr-hope-huts rule	--	-- [final bit]
"rope"	"ruts"	--	--	false	true	true	false	rare rows	vc-rope-ruts rule	vr-rope-ruts rule	--	--

this is the vh-arrows rule:
	say "No, that [if sco-arrows is true]was[else]is[end if] only half it."

a goodrhyme rule (this is the vc-arrows rule):
	if player is not in rare rows, unavailable;
	if sco-arrows is true:
		vcal "You already [had-have-s] ammunition!";
		already-done;
	ready;

this is the vr-arrows rule:
	now sco-arrows is true;
	say "Now that you know to look for arrows, or to some of them, you find a bunch, and a bunch fall from the sky, too. Fortunately, none fall on your head. There's enough for a good round of fighting, and [if sco-bare-bows is true]they're good ammo for the bare bows[else]there's got to be something that can sling them, somewhere[end if].";
	move arrows to rare rows;
	ll-rows-down 2653;
	abide by the to-cage-progress rule;

a goodrhyme rule (this is the vc-bare-bows rule):
	if player is not in rare rows, unavailable;
	if sco-bare-bows is true:
		vcal "You already [had-have-s] weaponry!";
		already-done;
	ready;

this is the vr-bare-bows rule:
	now sco-bare-bows is true;
	say "Splat! And just like that, a bunch of high quality bows, or what you assumed to be high quality, drop from some unknown direction on the ground. They don't have any ammunition to go with them, but [if sco-arrows is true]that's okay. You already have some[else]there's got to be some, somewhere[end if].";
	move bare bows to rare rows;
	ll-rows-down 2704;
	abide by the to-cage-progress rule;

a goodrhyme rule (this is the vc-fair-foes rule):
	if player is not in rare rows, unavailable;
	if sco-fair-foes is true:
		vcal "You already [had-have-s] allies!";
		already-done;
	ready;

this is the vr-fair-foes rule:
	now sco-fair-foes is true;
	say "Several warriors approach. They introduce themselves as the Fair Foes. They will be very objective, but decisive, in disposing of baddies. They will be invulnerable to any sly counterarguments.";
	move fair foes to Rare Rows;
	ll-rows-down 2704;
	abide by the to-cage-progress rule;

this is the vh-hair-hose rule:
	if the player's command includes "hare":
		say "You'd need more than one rabbit.";
	else:
		say "Not around the Prayer Pros! Something less sacrilegious, if you please."

a goodrhyme rule (this is the vc-hair-hose rule):
	if player is not in rare rows, unavailable;
	if sco-hair-hose is true:
		vcal "You already acquired hair hose!";
		already-done;
	ready;

this is the vr-hair-hose rule:
	now sco-hair-hose is true;
	say "You now have stuff so your head doesn't get too wet. You're not sure why you need it, but it'll be helpful.";
	ll-rows-down 2704;
	try-open Cram Creek;

a goodrhyme rule (this is the vc-glare-glows rule):
	if player is not in rare rows, unavailable;
	if sco-glare-glows is true:
		vcal "You already established an unnaturally bright glare of your own.";
		already-done;
	ready;

this is the vr-glare-glows rule:
	now sco-glare-glows is true;
	say "You look around, and you see a pair of eyes staring back at you. But instead of flinching, you look into them. You feel scared at first, but slowly, you get your courage out. It makes you feel you won't be stared down by anybody trying to pretend you are out of your league.";
	ll-rows-down 2755;
	try-open Rare Rows;

a goodrhyme rule (this is the vc-snare-snows rule):
	if player is not in rare rows, unavailable;
	if sco-snare-snows is true:
		vcal "You already harvested snows!";
		already-done;
	ready;

this is the vr-snare-snows rule:
	now sco-snare-snows is true;
	say "Oh, there you go. You wait a bit, and you shuffle your feet, and somehow, your little snow dance works. You collect the snow, and you look for places to put it before it melts. You find it, off to the east, where the air starts getting hotter. You hear a sizzling as the snow disappears.";
	ll-rows-down 2755;
	try-open Rowr Room;

this is the vh-stair-stows rule:
	say "Yes, there [if sco-stair-stows is true]was something to look for, and you found it.[else]is something to look for. But where?[end if]"

a goodrhyme rule (this is the vc-stair-stows rule):
	if player is not in rare rows, unavailable;
	if sco-stair-stows is true:
		vcal "You already found where the missing stair was!";
		already-done;
	ready;

this is the vr-stair-stows rule:
	now sco-stair-stows is true;
	say "You just know somewhere there's a stair hidden. It's a matter of finding it. And you do! Then you wonder where to place it. Why, just off to the west, the land drops off. That's a good place.";
	ll-rows-down 2755;
	try-open Grave Ground;

a goodrhyme rule (this is the vc-blam-bleak rule):
	abide by the creek-sheik rule;
	if sco-blam-bleak is true:
		vcal "You already fingered the Sham Sheik as bleak! And quite rightly, too.";
		already-done;
	ready;

this is the vr-blam-bleak rule:
	now sco-blam-bleak is true;
	abide by the sheik-bonus rule;
	say "Ooh! Cutting! You claim the Sheik is not as happy or powerful as he seems. Surprisingly, he has no good refutation.";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-maam-meek rule):
	abide by the creek-sheik rule;
	if sco-maam-meek is true:
		vcal "You already cut at the Sham Sheik's overvaluation of the masculine ideal, or something.";
		already-done;
	ready;

this is the vr-maam-meek rule:
	now sco-maam-meek is true;
	abide by the sheik-bonus rule;
	say "You insult the Sham Sheik's perceived masculinity, which shouldn't be an insult to most well-adjusted people, but it is to him! And it's an effective one!";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-slam-sleek rule):
	abide by the creek-sheik rule;
	if sco-slam-sleek is true:
		vcal "You already dropped a slam, sleek, on the Sham Sheik.";
		already-done;
	ready;

this is the vr-slam-sleek rule:
	now sco-slam-sleek is true;
	abide by the sheik-bonus rule;
	say "You don't just slam the Sheik. You do so with a minimum of wasted words, before he can cut you off and tell you you're boring. You repeat the barb, as if he did not understand the first time. Devastating!";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-wham-weak rule):
	abide by the creek-sheik rule;
	if sco-wham-weak is true:
		vcal "You already fingered the Sham Sheik as weak! And quite rightly, too.";
		already-done;
	ready;

this is the vr-wham-weak rule:
	now sco-wham-weak is true;
	abide by the sheik-bonus rule;
	say "Straightforward but effective. You question how much power the Sheik has, and over whom. He winces.";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-clam-clique rule):
	unless player is in cram creek or clam clique is in location of player, unavailable;
	if sco-clam-clique is true:
		vcal "You already got the clam clique on your side!";
		already-done;
	if sheik-score < 3:
		vcp "You hear a commotion beneath the creek, but one look from the Sham Sheik, and the riverbed inhabitants go calm again.";
		not-yet;
	ready;

this is the vr-clam-clique rule:
	now sco-clam-clique is true;
	say "Hooray! With the Sham Sheik gone, the clam clique is unafraid to come out greet you. They seem to be smiling as they flap their mouths/lids. They run off south. Your work here is done.";
	move clam clique to rare rows;
	solve-room;
	if sheik-score is 3:
		now to-number of clam clique is reserve-number of cram creek;
		now to-number of cram creek is reserve-number of cram creek;
	else:
		declue clam clique;
		declue cram creek;

a goodrhyme rule (this is the vc-far-phage rule):
	abide by the cage-or-sage rule;
	if sco-far-phage is true:
		vcal "Too many phages, and they might infect you!";
		already-done;
	ready;

this is the vr-far-phage rule:
	now sco-far-phage is true;
	car-cage-down 2655;
	abide by the in-cage rule;
	say "A distant virus pops through and seeps into the Mar Mage. The strongest staff in the world won't do any good, here!";
	abide by the cage-change rule;

this is the vh-our-age rule:
	say "That is too specific a time frame.";

a goodrhyme rule (this is the vc-our-age rule):
	abide by the cage-or-sage rule;
	if sco-our-age is true:
		vcal "You already aligned things temporally!";
		already-done;
	ready;

this is the vr-our-age rule:
	now sco-our-age is true;
	car-cage-down 2653;
	abide by the in-cage rule;
	say "You drag the Mar Mage out of whatever temporal oddity they are living in to face the present and also to make sure their hand isn't in the cookie jar of some ancient magic. They blush. Guilty!";
	abide by the cage-change rule;

a goodrhyme rule (this is the vc-rar-rage rule):
	abide by the cage-or-sage rule;
	if sco-rar-rage is true:
		vcal "You already raged effectively! The next time won't work so well. It might be counterproductive.";
		already-done;
	ready;

this is the vr-rar-rage rule:
	now sco-rar-rage is true;
	car-cage-down 2654;
	abide by the in-cage rule;
	say "Your rage doesn't make perfect sense, but it doesn't have to. You're mad enough, and it's from the heart, and that's what counts.";
	abide by the cage-change rule;

a goodrhyme rule (this is the vc-star-stage rule):
	if player is not in car cage, unavailable;
	if cage-prep-score < 2:
		vcp "You haven't prepared enough to change the stage yet. But yes, that is the way to go once you do!";
		not-yet;
	if sco-star-stage is true:
		vcal "The star stage has already been summoned!";
		already-done;
	ready;

this is the vr-star-stage rule:
	now sco-star-stage is true;
	say "On the star stage, the Mar Mage suddenly grows more powerful. You seem to have no chance...";
	say "[line break]...until in swoops a savior from distant lands. The SAAR SAGE! The battle is quick, pyrotechnic and brutal.";
	moot mar mage;
	move saar sage to Rare Rows;
	solve-room;
	if cage-prep-score is 2:
		now to-number of car cage is reserve-number of car cage;
		now to-number of saar sage is reserve-number of car cage;
	else:
		declue car cage;
		declue saar sage;

a goodrhyme rule (this is the vc-crave-crowned rule):
	abide by the grave-dave rule;
	if sco-crave-crowned is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-crave-crowned rule:
	now sco-crave-crowned is true;
	grave-ground-down 2757;
	abide by the dave-bonus rule;
	say "Dave seems charged with motivation!";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-pave-pound rule):
	abide by the grave-dave rule;
	if sco-pave-pound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-pave-pound rule:
	now sco-pave-pound is true;
	grave-ground-down 2705;
	abide by the dave-bonus rule;
	say "Well it's unclear whether or not you need to exhort Dave to pound the pavement, or if you have a pound full of prisoners to pay. Either way, it seems to interest him more than you'd expect.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-rave-round rule):
	abide by the grave-dave rule;
	if sco-rave-round is true:
		vcal "Too much raving might leave Dave tired. Perhaps you should try something else.";
		already-done;
	ready;

this is the vr-rave-round rule:
	now sco-rave-round is true;
	grave-ground-down 2705;
	abide by the dave-bonus rule;
	say "For whatever good it might do, you run around in a circle acting as sort of a hype man or woman or whatever. Surprisingly, all this jolly and day around actually makes him feel better.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-save-sound rule):
	abide by the grave-dave rule;
	if sco-save-sound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-save-sound rule:
	now sco-save-sound is true;
	grave-ground-down 2705;
	abide by the dave-bonus rule;
	say "You catalog ways to save things soundly, as well as ways to economize on the yelling you need to do. Dave looks relieved at all this, explaining briefly that he always felt that if he wasn't yelling, he wasn't really giving 110%. He knows better now.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-fave-found rule):
	abide by the grave-dave rule;
	if dave-score < 3:
		vcp "Hmm, that would be a good idea once Dave had [if dave-score is 0]favorites[else if dave-score is 1]some more[else]a bit more[end if] desires to choose from.";
		not-yet;
	if sco-fave-found is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-fave-found rule:
	now sco-fave-found is true;
	say "'Aha! Yes, that's what I'll focus on. My afterlife has not just purpose now but also focus!' Dave gives you a thumbs-up.[paragraph break]You feel a big wave in from the distance, not actually water to get you wet and all upset and so forth, but a wave of energy. Well, it sort of paused there at first, to wind up and build up kinetic energy before actually releasing itself. That just made everything powerful. Dave seems to glow as it passes through him, saying he'll see you in a bit as he runs to Rare Rows, and you feel energized, yourself.";
	move dave to Rare Rows;
	solve-room;
	if dave-score is 3:
		now to-number of dave downed is reserve-number of grave ground;
		now to-number of grave ground is reserve-number of grave ground;
	else:
		declue dave downed;
		declue grave ground;

a goodrhyme rule (this is the vc-tower-tomb rule):
	abide by the rowr-how-er rule;
	if sco-tower-tomb is true:
		vcal "You already built a tower-tomb!";
		already-done;
	ready;

this is the vr-tower-tomb rule:
	now sco-tower-tomb is true;
	abide by the flip-how-er rule;
	say "Pop! It seems like you can see a passage briefly to a tower tomb. But it covers up. You know it's there, though[just-noise].";
	opt-rule vc-wower-womb rule;
	bump-up tomb-womb;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-wower-womb rule):
	abide by the rowr-how-er rule;
	if sco-wower-womb is true:
		vcal "Duplicating wow factor doesn't increase the wows.";
		already-done;
	ready;

this is the vr-wower-womb rule:
	now sco-wower-womb is true;
	abide by the flip-how-er rule;
	say "A passage opens downstairs briefly. It's too narrow, and anyway, one doesn't go back into a womb, but it's there[just-noise].";
	opt-rule vc-tower-tomb rule;
	bump-up tomb-womb;
	abide by the rowr-room-transform rule;

this is the vh-dour-doom rule:
	say "We need more than money, here."

a goodrhyme rule (this is the vc-dour-doom rule):
	abide by the rowr-how-er rule;
	if sco-dour-doom is true:
		vcal "No, all that doom you fobbed off might leak back into you.";
		already-done;
	ready;

this is the vr-dour-doom rule:
	now sco-dour-doom is true;
	abide by the flip-how-er rule;
	say "You invoke a sense of doom so dour, the rowring itself gets quieter.";
	opt-rule vc-glower-gloom rule;
	bump-up doom-gloom;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-glower-gloom rule):
	abide by the rowr-how-er rule;
	if sco-glower-gloom is true:
		vcal "THere's a limit to how much glowering and gloom is helpful, here.";
		already-done;
	ready;

this is the vr-glower-gloom rule:
	now sco-glower-gloom is true;
	abide by the flip-how-er rule;
	say "You invoke a sense of gloom so glowery, the rowring itself gets quieter.";
	opt-rule vc-dour-doom rule;
	bump-up doom-gloom;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-plower-plume rule):
	abide by the rowr-how-er rule;
	if sco-plower-plume is true:
		vcal "The plower plume was a neat one-time display. It's done its work.";
		already-done;
	ready;

this is the vr-plower-plume rule:
	now sco-plower-plume is true;
	abide by the flip-how-er rule;
	say "A giant plume rises into the air. Two, actually. One of a snow plow, the other of a plow you might see on the farm. They seem to almost try to destroy the room you are in.";
	opt-rule vc-flower-flume rule;
	bump-up flume-plume;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-flower-flume rule):
	abide by the rowr-how-er rule;
	if sco-flower-flume is true:
		vcal "The flower flume was a neat one-time display. It's done its work.";
		already-done;
	ready;

this is the vr-flower-flume rule:
	now sco-flower-flume is true;
	abide by the flip-how-er rule;
	say "Oh wow! Not just one flower flume but a whole bouquet of flowers! The visual pyrotechnics definitely distract you from the noise.";
	opt-rule vc-plower-plume rule;
	bump-up flume-plume;
	abide by the rowr-room-transform rule;

this is the vh-hope-huts rule:
	say "And why not wish for Troy McClure, while you're at it?"

a goodrhyme rule (this is the vc-hope-huts rule):
	if ppnn is not fungible, unavailable;
	if sco-hope-huts is true:
		vcal "You already created the hope huts!";
		already-done;
	ready;

this is the vr-hope-huts rule:
	now sco-hope-huts is true;
	say "Huts are built! The Prayer Pros go over to inspect them.";
	move hope huts to rare rows;
	abide by the huts-and-ruts rule;

a goodrhyme rule (this is the vc-rope-ruts rule):
	if ppnn is not fungible, unavailable;
	if sco-rope-ruts is true:
		vcal "You already created the rope ruts!";
		already-done;
	ready;

this is the vr-rope-ruts rule:
	now sco-rope-ruts is true;
	say "Rope ruts appear!";
	move rope ruts to rare rows;
	abide by the huts-and-ruts rule;

chapter auxiliary rules

section very general

to bump-up (moo - a rowr-mood):
	if moo is unactivated:
		now moo is halfway;
	else if moo is halfway:
		now moo is fullon;
	else:
		say "BUG. I tried to increase a mood that was already maximized. Let me know how this happened!"

to opt-rm:
	repeat through table of verb checks:
		if there is no best-room entry, next;
		if best-room entry is not location of player, next;
		if idid entry is true, next;
		if check-rule entry is optionable, now core entry is false;

to opt-rule (ru - a rule):
	repeat through table of verb checks:
		unless run-rule entry is ru or check-rule entry is ru, next;
		if idid entry is false, now core entry is false;
		continue the action;
	say "TRIVIAL BUG: I did not see [ru] in the table of verb checks. If you can let me know at my github repository, I'd appreciate knowing this so I can fix it!"

to say just-noise: say ". Just having more places for the noise to dissipate is a good thing"

to bump-room (rm - a room): increment win-score of location of player;

to solve-room:
	now location of player is solved;
	opt-rm;
	print-the-loc;

section rare rows specific

to ll-rows-down (nu - a number):
	decrease to-number of rare rows by nu;
	decrease to-number of prayer pros by nu;
	if to-number of rare rows is 0:
		now to-number of rare rows is -3;
		now to-number of arrows is -2;
		now to-number of bare bows is -2;
		now to-number of fair foes is -2;
		now to-number of prayer pros is -4;
		continue the action;
	now to-number of arrows is nu;
	now to-number of bare bows is nu;
	now to-number of fair foes is nu;

to say had-have-s: say "[if fair foes are moot]had[else]have[end if] enough"

section to the south

to car-cage-down (nu - a number):
	if sco-star-stage is true:
		declue car cage;
		declue saar sage;
		continue the action;
	decrease to-number of car cage by nu;
	decrease to-number of saar sage by nu;
	if cage-prep-score is 2:
		now reserve-number of car cage is 0 - to-number of car cage;
		now to-number of car cage is 2705;
		now to-number of saar sage is 2705;

this is the to-cage-progress rule:
	let binary-thing be (boolval of sco-fair-foes * 4) + (boolval of sco-bare-bows * 2) + (boolval of sco-arrows);
	if binary-thing is 1:
		say "Hmm! But what can you do with arrows? You're not a fighter, and you have no weapons.";
	else if binary-thing is 2:
		say "It would be nice if the bare bows had some ammunition and people that could use them.";
	else if binary-thing is 3:
		say "The bows and arrows would be good in a fight, but you have no accuracy. Maybe get some allies?";
	else if binary-thing is 4:
		say "The fair foes don't seem to have anything to do. They aren't equipped for battle.";
	else if binary-thing is 5:
		say "The fair foes pick up the arrows and study them with interest, but something is missing.";
	else if binary-thing is 6:
		say "The fair foes pick up the bare bows and study them with interest, but something is missing.";
	else if binary-thing is 7:
		say "The fair foes nod appreciatively. They nock arrows to the bare bows, then nod. They are ready to do as you command.";

this is the cage-or-sage rule:
	unless player is in car cage or saar sage is in location of player, unavailable;

this is the in-cage rule:
	if player is not in Car Cage, say "You hear a rumbling to the south. The Saar Sage seems invigorated as well. Hooray, brownie points!" instead;
	if sco-star-stage is true:
		say "The star stage seems pretty relaxed, but for whatever reason, your action, incongruous as it seems, made things better. Without knowing it, you ";
		if the player's command includes "phage", say "you set people on the pathway to cure the common cold. Not in your own universe, sadly.";
		if the player's command includes "age", say "accelerated technological progress so people get jetpacks sooner. Not in your own universe, sadly.";
		if the player's command includes "rage", say "allowed everyday folk to express their discontent in new and instructive ways.";
		the rule succeeds;

this is the cage-change rule:
	say "The universe seems to lurch, or at least this small part of it. The Mar Mage shakes their fist. '[one of]Lucky! It can't happen again[or]No! I don't believe it! You can't keep this up[or]If you pulled that off, I must be the underdog now[stopping]!'[paragraph break]";
	say "[one of]However, it settles back. But you did something, you know that[or]Something has shattered. The car cage can become something more positive, you feel[or]It felt good to show off a bit, even though [if sco-star-stage is true]you already summoned the star stage[else]the car cage seemed ripe for change[end if]. No need to be all business, all the time[stopping].";

section to the west

to grave-ground-down (nu - a number):
	if sco-fave-found is true:
		declue grave ground;
		declue dave downed;
		continue the action;
	decrease to-number of grave ground by nu;
	decrease to-number of dave downed by nu;
	if dave-score is 3:
		now reserve-number of grave ground is 0 - to-number of car cage;
		now to-number of grave ground is 2705;
		now to-number of dave downed is 2705;

this is the grave-dave rule:
	unless player is in grave ground or dave is in location of player, the rule fails;

this is the dave-bonus rule:
	if dave-score is 4:
		if dave is not in location of player:
			say "You feel a ripple across space. Dave must be that much happier back in Rare Rows.";
		else:
			say "Dave pumps his fist. He's grateful for the additional support!";
		bump-room grave ground;
		the rule succeeds;

this is the ground-boost rule: say "[one of]Dave's head stays raised after this bit of positivity[or]Dave pumps his fist. And yet he isn't fully energized. Yet. In fact he seems to be weighing his two new interests[or]Dave looks really gung-ho now, but he looks confused whether to start[stopping].";

section to the north

to cram-creek-down (nu - a number):
	if sco-clam-clique is true:
		declue cram creek;
		declue clam clique;
		continue the action;
	if dave-score < 3:
		decrease to-number of clam clique by nu;
		decrease to-number of sham sheik by nu;
		decrease to-number of cram creek by nu;
	else if dave-score is 3:
		now reserve-number of cram creek is 0 - to-number of cram creek;
		now to-number of cram creek is 2706;

this is the creek-sheik rule: if player is not in cram creek and clam clique is not in location of player, unavailable;

this is the sheik-bonus rule:
	if sheik-score is not 4, continue the action;
	if player is in rare rows:
		say "The clam clique rapidly opens and closes their shells favorably. The clacking is as close to a laugh as you'll get. You're not running up the score, but rather, you're just making sure someone like the Sham Sheik can't cast a spell next time.";
	else:
		say "You shout your final critique for all to hear. Maybe the immediate victory was won, but hooray eternal vigilance against stuff like the Sham Sheik pulls, and all that sort of thing.";
	bump-room cram creek;
	the rule succeeds;

this is the check-sheik rule:
	if sheik-score is 3:
		say "That does it! The Sham Sheik retreats in humiliation. The creek seems to stir a bit. You may have to call what's in there.[paragraph break]Oh, there's one more way to mock the now-departed Sheik if you want a bonus point, but it's not critical.";
		moot sham sheik;
		the rule succeeds;
	say "The Sham Sheik looks [one of]slightly irked and less intimidating. You can't administer a coup de grace, but he realizes you're no pushover[or]genuinely vexed. You're getting to him[stopping]!";

section to the east

to adjust-rowr-reading:
	if rowr-full-score is 6:
		declue-here;
		declue how er whom;
		continue the action;
	now to-number of rowr room is new-rowr-scan;
	now to-number of how er whom is new-rowr-scan;

this is the flip-how-er rule:
	if player is in rare rows:
		declue-here;
		declue how er whom;
		say "You hear a commotion off to the east. The 'How, er, whom' voice gets louder, then settles down again.";
		the rule succeeds;

this is the rowr-how-er rule:
	if player is not in rowr room and how er whom is not in location of player, unavailable;

this is the rowr-room-transform rule:
	now win-score of rowr room is rowr-max;
	adjust-rowr-reading;
	if old-rowr-progress is 3:
		say "Nothing much happens otherwise, but you feel good about going above and beyond.";
		the rule succeeds;
	let up-rowr be whether or not rowr-progress-score is old-rowr-progress;
	now old-rowr-progress is rowr-progress-score;
	if up-rowr is true:
		say "You feel a sense of intellectual satisfaction but not emotional fulfillment. Perhaps you need to shift your focus on what to change.";
		the rule succeeds;
	if rowr-progress-score is 3:
		say "Suddenly, you hear a rumbling. The top blows off the room! It's now a bower! Words escape -- simple ones, you can't quite figure them out--back to the Rare Rows. You can find more to do if you want, but you've done what you need.";
		move how er whom to rare rows;
		solve-room;
	else if rowr-progress-score is 2:
		say "The room seems to shake significantly. You stumble a bit. The room feels very unstable. The noise is almost bearable now, and perhaps you can make it completely so.";
	else:
		say "You feel a slight but long-lasting tremor. The noise seems to reduce a bit, which is nice.";
	the rule succeeds;

this is the huts-and-ruts rule:
	decrease to-number of ppnn by 2704;
	if sco-rope-ruts is false:
		say "But the huts are not sturdy enough yet. They need support.";
		continue the action;
	else if sco-hope-huts is false:
		say "The rope ruts seem adequate, but what can they support?";
		continue the action;
	say "The Prayer Pros look at the ruts and huts and back and forth. Yes. The new meditation places are adequate. The Prayer Pros all bow slightly to you, shaking your hand and clapping your shoulder in turn. A chorus of 'Ne[']er Nos' or 'Ne[']er Knows' (it could be either) rises. They no longer notice you. You feel deserted and trapped at first.[paragraph break]Then you close your eyes and think a Spare S'Pose. Then another. And another. When you open them, you are back outside [shows]. Very little time has passed.[paragraph break]You wonder what you have learned. You doubt you've learned anything. But you helped someone, somewhere. You know the Prayer Pros are praying for you, for your life to be a bit more interesting. You resolve to search more for oddities even more. You walk by the 'One wish in' sign again. It's changed ... to ...";
	process the score and thinking changes rule;
	end the story finally saying "DONE DISHIN['] FUN FISHIN[']";
	say "But you do think about the Prayer Pros over the years. Did people still respect them? Did the entities they petitioned? Were they happy in their jobs? Were they too mechanical with their prayers or too sloppy? All this seems like sophistry, but it also applies to real-world concerns of asking for favors or giving them. They're there to think about, when you've got a bit of solitude. Perhaps they've petitioned someone else.";
	if cur-bonus is max-bonus:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]
	follow the shutdown rules;

volume table of noways

table of noways
noway-rm	noway-txt
Rare Rows	"There are no hidden directions here."
Ground Grave	"[if sco-fave-found is false]It's even spookier and darker if you go further from the rare rows. Best to just go back east[else]The wound wave pushes you back east[end if]."
Cram Creek	"[if sco-clam-clique is true]Spam's Peak holds nothing. You can and should just retreat to the south[else]The creek goes off too far into the distance. Whatever you need to do, it has to be right here[end if]."
Rowr Room	"[if rowr room is solved]You've opened things up, but you don't need to go any further[else]It's a room[end if]. The only way back is west."
Car Cage	"[if sco-star-stage is true]You might fall off the star stage[else]The car cage blocks you[end if]. The only way out is back north."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
cram creek	--	"creak"	"A different sort of noise [if cram creek is solved]was[else]is[end if] required here."
grave ground	homonyms-waive rule	"waive"	--

this is the homonyms-waive rule:
	if sco-fave-found is true:
		say "No, you want to keep the wave. Your work here is done.";
		the rule succeeds;

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

There Those Dare Doze Tables ends here.

---- DOCUMENTATION ----
