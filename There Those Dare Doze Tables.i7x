Version 1/221007 of There Those Dare Doze Tables by Andrew Schultz begins here.

"This is the main tables file for TTDD. It largely encompasses the point-scoring mechanisms, but there are homonym clues, too."

[the puzzles are organized by room and then alphabetically.]

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"arrows"	--	--	--	false	true	true	false	rare rows	vc-arrows rule	vr-arrows rule	"arrows"	--
"bare"	"bows"	--	--	false	true	true	false	rare rows	vc-bare-bows rule	vr-bare-bows rule	--	--
"fair"	"foes"	--	--	false	true	true	false	rare rows	vc-fair-foes rule	vr-fair-foes rule	--	--
"hair"	"hose"	--	--	false	true	true	false	rare rows	vc-hair-hose rule	vr-hair-hose rule	--	--
"glare"	"glows"	--	--	false	true	true	false	rare rows	vc-glare-glows rule	vr-glare-glows rule	--	--
"snare"	"snows"	--	--	false	true	true	false	rare rows	vc-snare-snows rule	vr-snare-snows rule	--	--
"stair"	"stows"	--	--	false	true	true	false	rare rows	vc-stair-stows rule	vr-stair-stows rule	--	--
"blam"	"bleak"	--	--	false	true	true	false	cram creek	vc-blam-bleak rule	vr-blam-bleak rule	--	-- [start way north]
"maam"	"meek"	--	--	false	true	true	false	cram creek	vc-maam-meek rule	vr-maam-meek rule	--	--
"slam"	"sleek"	--	--	false	true	true	false	cram creek	vc-slam-sleek rule	vr-slam-sleek rule	--	--
"wham"	"weak"	--	--	false	true	true	false	cram creek	vc-wham-weak rule	vr-wham-weak rule	--	--
"clam"	"clique"	--	--	false	true	true	false	cram creek	vc-clam-clique rule	vr-clam-clique rule	--	--
"far"	"phage"	--	--	false	true	true	false	car cage	vc-far-phage rule	vr-far-phage rule	--	-- [start way south]
"our"	"age"	"hour"	vh-our-age rule	false	true	true	false	car cage	vc-our-age rule	vr-our-age rule	--	--
"rar|rawr|rahr|rhar|rowr|rarr|raar"	"rage"	--	--	false	true	true	false	car cage	vc-rar-rage rule	vr-rar-rage rule	--	--
"star"	"stage"	--	--	false	true	true	false	car cage	vc-star-stage rule	vr-star-stage rule	--	--
"crave"	"crowned"	--	--	false	true	true	false	grave ground	vc-crave-crowned rule	vr-crave-crowned rule	--	-- [start way west]
"pave"	"pound"	--	--	false	true	true	false	grave ground	vc-pave-pound rule	vr-pave-pound rule	--	--
"rave"	"round"	--	--	false	true	true	false	grave ground	vc-rave-round rule	vr-rave-round rule	--	--
"save"	"sound"	--	--	false	true	true	false	grave ground	vc-save-sound rule	vr-save-sound rule	--	--
"wave"	"wound"	--	--	false	true	true	false	grave ground	vc-wave-wound rule	vr-wave-wound rule	--	--
"tower"	"tomb"	--	--	false	true	true	false	rowr room	vc-tower-tomb rule	vr-tower-tomb rule	--	-- [start way east]
"wower"	"womb"	--	--	false	true	true	false	rowr room	vc-wower-womb rule	vr-wower-womb rule	--	--
"dour"	"doom"	--	--	false	true	true	false	rowr room	vc-dour-doom rule	vr-dour-doom rule	--	--
"glower"	"gloom"	--	--	false	true	true	false	rowr room	vc-glower-gloom rule	vr-glower-gloom rule	--	--
"plower"	"plume"	--	--	false	true	true	false	rowr room	vc-plower-plume rule	vr-plower-plume rule	--	--
"flower"	"flume"	--	--	false	true	true	false	rowr room	vc-flower-flume rule	vr-flower-flume rule	--	--
"hope"	"huts"	--	--	false	true	true	false	rare rows	vc-hope-huts rule	vr-hope-huts rule	--	-- [final bit]
"rope"	"ruts"	--	--	false	true	true	false	rare rows	vc-rope-ruts rule	vr-rope-ruts rule	--	--

this is the vh-our-age rule:
	say "That is too specific a time frame.";

a goodrhyme rule (this is the vc-our-age rule):
	if player is not in car cage, unavailable;
	if sco-our-age is true:
		vcal "You already aligned things temporally!";
		already-done;
	ready;

this is the vr-our-age rule:
	now sco-our-age is true;
	say "You drag the Mar Mage out of whatever temporal oddity they are living in to face the present and also to make sure their hand isn't in the cookie jar of some ancient magic. They blush. Guilty!";
	abide by the cage-change rule;

a goodrhyme rule (this is the vc-far-phage rule):
	if player is not in car cage, unavailable;
	if sco-far-phage is true:
		vcal "You really don't want more phages than you need!";
		already-done;
	ready;

this is the vr-far-phage rule:
	now sco-far-phage is true;
	say "A distant virus pops through and seeps into the Mar Mage. The strongest staff in the world won't do any good, here!";
	abide by the cage-change rule;

a goodrhyme rule (this is the vc-rar-rage rule):
	if player is not in car cage, unavailable;
	if sco-rar-rage is true:
		vcal "You already raged effectively! The next time won't work so well. It might be counterproductive.";
		already-done;
	ready;

this is the vr-rar-rage rule:
	now sco-rar-rage is true;
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
	move saar sage to Rare Rows;
	solve-room;

a goodrhyme rule (this is the vc-snare-snows rule):
	if player is not in rare rows, unavailable;
	if sco-snare-snows is true:
		vcal "You already harvested snows!";
		already-done;
	ready;

this is the vr-snare-snows rule:
	now sco-snare-snows is true;
	say "Oh, there you go. You wait a bit, and you shuffle your feet, and somehow, your little snow dance works. You collect the snow, and you look for places to put it before it melts. You find it, off to the east, where the air starts getting hotter. You hear a sizzling as the snow disappears.";

a goodrhyme rule (this is the vc-glare-glows rule):
	if player is not in rare rows, unavailable;
	if sco-glare-glows is true:
		vcal "You already established an unnaturally bright glare of your own.";
		already-done;
	ready;

this is the vr-glare-glows rule:
	now sco-glare-glows is true;
	say "You look around, and you see a pair of eyes staring back at you. But instead of flinching, you look into them. You feel scared at first, but slowly, you get your courage out. It makes you feel you won't be stared down by anybody trying to pretend you are out of your league.";

a goodrhyme rule (this is the vc-stair-stows rule):
	if player is not in rare rows, unavailable;
	if sco-stair-stows is true:
		vcal "You already found where the missing stair was!";
		already-done;
	ready;

this is the vr-stair-stows rule:
	now sco-stair-stows is true;
	say "You just know somewhere there's a stair hidden. It's a matter of finding it. And you do! Then you wonder where to place it. Why, just off to the west, the land drops off. That's a good place.";

a goodrhyme rule (this is the vc-hair-hose rule):
	if player is not in rare rows, unavailable;
	if sco-hair-hose is true:
		vcal "You already acquired hair hose!";
		already-done;
	ready;

this is the vr-hair-hose rule:
	now sco-hair-hose is true;
	say "You now have stuff so your head doesn't get too wet. You're not sure why you need it, but it'll be helpful.";

a goodrhyme rule (this is the vc-fair-foes rule):
	if player is not in rare rows, unavailable;
	if sco-fair-foes is true:
		vcal "The fair foes have already been summoned!";
		already-done;
	ready;

this is the vr-fair-foes rule:
	now sco-fair-foes is true;
	say "Several warriors approach. They introduce themselves as the Fair Foes. They will be very objective, but decisive, in disposing of baddies. They will be invulnerable to any sly counterarguments.";
	move fair foes to Rare Rows;

a goodrhyme rule (this is the vc-arrows rule):
	if player is not in rare rows, unavailable;
	if sco-arrows is true:
		vcal "You already have enough arrows!";
		already-done;
	ready;

this is the vr-arrows rule:
	now sco-arrows is true;
	say "Now that you know to look for arrows, or to some of them, you find a bunch, and a bunch fall from the sky, too. Fortunately, none fall on your head. There's enough for a good round of fighting.";
	move arrows to rare rows;

a goodrhyme rule (this is the vc-bare-bows rule):
	if player is not in rare rows, unavailable;
	if sco-bare-bows is true:
		vcal "You already have enough bare bows!";
		already-done;
	ready;

this is the vr-bare-bows rule:
	now sco-bare-bows is true;
	say "Splat! And just like that, a bunch of high quality bows, or what you assumed to be high quality, drop from some unknown direction on the ground. They don't have any ammunition to go with them, but [if sco-arrows is true]that's okay. You already have some[else]there's got to be some, somewhere[end if].";
	move bare bows to rare rows;

a goodrhyme rule (this is the vc-slam-sleek rule):
	if player is not in cram creek, unavailable;
	if sco-slam-sleek is true:
		vcal "You already dropped a slam, sleek, on the Sham Sheik.";
		already-done;
	ready;

this is the vr-slam-sleek rule:
	now sco-slam-sleek is true;
	say "You don't just slam the Sheik. You do so with a minimum of wasted words, before he can cut you off and tell you you're boring. You repeat the barb, as if he did not understand the first time. Devastating!";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-wham-weak rule):
	if player is not in cram creek, unavailable;
	if sco-wham-weak is true:
		vcal "You already fingered the Sham Sheik as weak! And quite rightly, too.";
		already-done;
	ready;

this is the vr-wham-weak rule:
	now sco-wham-weak is true;
	say "Straightforward but effective. You question how much power the Sheik has, and over whom. He winces.";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-blam-bleak rule):
	if player is not in cram creek, unavailable;
	if sco-blam-bleak is true:
		vcal "You already fingered the Sham Sheik as bleak! And quite rightly, too.";
		already-done;
	ready;

this is the vr-blam-bleak rule:
	now sco-blam-bleak is true;
	say "Ooh! Cutting! You claim the Sheik is not as happy or powerful as he seems. Surprisingly, he has no good refutation.";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-maam-meek rule):
	if player is not in cram creek, unavailable;
	if sco-maam-meek is true:
		vcal "You already cut at the Sham Sheik's overvaluation of the masculine ideal, or something.";
		already-done;
	ready;

this is the vr-maam-meek rule:
	now sco-maam-meek is true;
	say "You insult the Sham Sheik's perceived masculinity, which shouldn't be an insult to most well-adjusted people, but it is to him! And it's an effective one!";
	abide by the check-sheik rule;

a goodrhyme rule (this is the vc-clam-clique rule):
	if player is not in cram creek, unavailable;
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

a goodrhyme rule (this is the vc-rave-round rule):
	if player is not in grave ground, unavailable;
	if sco-rave-round is true:
		vcal "Too much raving might leave Dave tired. Perhaps you should try something else.";
		already-done;
	ready;

this is the vr-rave-round rule:
	now sco-rave-round is true;
	say "For whatever good it might do, you run around in a circle acting as sort of a hype man or woman or whatever. Surprisingly, all this jolly and day around actually makes him feel better.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-pave-pound rule):
	if player is not in grave ground, unavailable;
	if sco-pave-pound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-pave-pound rule:
	now sco-pave-pound is true;
	say "Well it's unclear whether or not you need to exhort Dave to pound the pavement, or if you have a pound full of prisoners to pay. Either way, it seems to interest him more than you'd expect full salary ";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-wave-wound rule):
	if player is not in grave ground, unavailable;
	if sco-wave-wound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-wave-wound rule:
	now sco-wave-wound is true;
	say "A big wave comes crashing in from the distance, not actually water to get you wet and all upset and so forth, but a wave of energy. Well, it sort of paused there at first, to wind up and build up kinetic energy before actually releasing itself. That just made everything powerful. Dave seems to glow as it passes through him, and you feel energized, yourself.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-save-sound rule):
	if player is not in grave ground, unavailable;
	if sco-save-sound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-save-sound rule:
	now sco-save-sound is true;
	say "You catalog ways to save things soundly, as well as ways to economize on the yelling you need to do. Dave looks relieved at all this, explaining briefly that he always felt that if he wasn't yelling, he wasn't really giving 110%. He knows better now.";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-crave-crowned rule):
	if player is not in grave ground, unavailable;
	if sco-crave-crowned is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-crave-crowned rule:
	now sco-crave-crowned is true;
	say "Dave seems charged with motivation!";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-tower-tomb rule):
	if player is not in rowr room, unavailable;
	if sco-tower-tomb is true:
		vcal "You already built a tower-tomb!";
		already-done;
	ready;

this is the vr-tower-tomb rule:
	now sco-tower-tomb is true;
	say "Pop! It seems like you can see a passage briefly to a tower tomb. But it covers up. You know it's there, though[just-noise]";
	opt-rule vc-wower-womb rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-wower-womb rule):
	if player is not in rowr room, unavailable;
	if sco-wower-womb is true:
		vcal "Duplicating wow factor doesn't increase the wows.";
		already-done;
	ready;

this is the vr-wower-womb rule:
	now sco-wower-womb is true;
	say "A passage opens downstairs briefly. Then it closes. But you know it's there[just-noise].";
	opt-rule vc-tower-tomb rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-dour-doom rule):
	if player is not in rowr room, unavailable;
	if sco-dour-doom is true:
		vcal "No, all that doom you fobbed off might leak back into you.";
		already-done;
	ready;

this is the vr-dour-doom rule:
	now sco-dour-doom is true;
	say "You invoke a sense of doom so dour, the rowring itself gets quieter.";
	opt-rule vc-glower-gloom rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-glower-gloom rule):
	if player is not in rowr room, unavailable;
	if sco-glower-gloom is true:
		vcal "THere's a limit to how much glowering and gloom is helpful, here.";
		already-done;
	ready;

this is the vr-glower-gloom rule:
	now sco-glower-gloom is true;
	say "You invoke a sense of gloom so glowery, the rowring itself gets quieter.";
	opt-rule vc-dour-doom rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-plower-plume rule):
	if player is not in rowr room, unavailable;
	if sco-plower-plume is true:
		vcal "The plower plume was a neat one-time display. It's done its work.";
		already-done;
	ready;

this is the vr-plower-plume rule:
	now sco-plower-plume is true;
	say "A giant plume rises into the air. Two, actually. One of a snow plow, the other of a plow you might see on the farm. They seem to almost try to destroy the room you are in.";
	opt-rule vc-flower-flume rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-flower-flume rule):
	if player is not in rowr room, unavailable;
	if sco-flower-flume is true:
		vcal "The flower flume was a neat one-time display. It's done its work.";
		already-done;
	ready;

this is the vr-flower-flume rule:
	now sco-flower-flume is true;
	say "Oh wow! Not just one flower flume but a whole bouquet of flowers! The visual pyrotechnics definitely distract you from the noise.";
	opt-rule vc-plower-plume rule;
	abide by the rowr-room-transform rule;

a goodrhyme rule (this is the vc-hope-huts rule):
	if ppnn is not fungible, unavailable;
	if sco-hope-huts is true:
		vcal "You already created the hope huts!";
		already-done;
	ready;

this is the vr-hope-huts rule:
	now sco-hope-huts is true;
	say "Huts are built! The Prayer Pros go over to inspect them.";
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
	abide by the huts-and-ruts rule;

section auxiliary rules

to opt-rm:
	repeat through table of verb checks:
		if there is no best-room entry, next;
		if best-room entry is not location of player, next;
		if idid entry is true, next;
		if check-rule entry is optionable, now core entry is false;

to opt-rule (ru - a rule):
	repeat through table of verb checks:
		unless run-rule entry is ru, next;
		if idid entry is false, now core entry is false;
		continue the action;
	say "TRIVIAL BUG: I did not see [ru] in the table of verb checks. If you can let me know at my github repository, I'd appreciate knowing this so I can fix it!"

to say just-noise: say ". Just having more places for the noise to dissipate is a good thing"

to bump-room: increment win-score of location of player;

to solve-room:
	now location of player is solved;
	if number of solved rooms is 0:
		say "[i][bracket][b]NOTE[r][i]: a person or entity you rhymed will be moved back to Rare Rows, but since this is a Petite Mort game, I didn't have time to tweak the code for rhymes or rhyme guesses with them. Sorry about that! You've done what you could. I'll fill these details in post-Ectocomp.[close bracket][r]";
	opt-rm;

this is the cage-change rule:
	say "The universe seems to lurch, or at least this small part of it. The Mar Mage shakes their fist. 'No! I don't believe it! You can't keep this up!'[line break]";
	say "[one of]However, it settles back. But you did something, you know that[or]Something has shattered. The car cage can become something more positive, you feel[or]Why not? Show off a bit, even though [if sco-star-stage is true]you defeated the star stage[else]the car cage seemed ripe for change[end if][stopping].";

this is the ground-boost rule:
	if dave-score is 4:
		say "Dave jumps up! He feels fully released by your thoughts. He tries to shake your hand, but he fails, because he is undead and incorporeal. As he vanishes to ... wherever he needs to, you feel there's maybe one more thing you could do to help him.";
		move dave to Rare Rows;
		solve-room;
		the rule succeeds;
	else if dave-score is 5:
		say "You feel a ripple across space. Dave is grateful for the additional support!";
		bump-room;

this is the check-sheik rule:
	if sheik-score is 3:
		say "That does it! The Sham Sheik retreats in humiliation. The creek seems to stir a bit. You may have to call what's in there.[paragraph break]Oh, there's one more way to mock the now-departed Sheik if you want a bonus point, but it's not critical.";
		moot sham sheik;
		the rule succeeds;
	else if sheik-score is 4:
		say "And why not? You're not doing this to pile on, but rather, to help the next person who may be frustrated with his trolling. One can always use better preventative measures there.";
		bump-room;
		the rule succeeds;
	say "The Sham Sheik looks [one of][or]a little more [or]a lot more [stopping]peeved. You're getting to him!";

to process-dave:
	say "Dave perks up! He looks [one of]slightly[or]somewhat[or]really[or]adequately[or]extra[stopping] perky and more willing and able to help.";
	if dave-score is 4:
		say "Dave shakes your hand. 'Thank you! I feel like my old self now! There's one more thing ... no, it's not necessary. I can help the Prayer Pros now.'";
		solve-room;
	else if dave-score is 5:
		say "'Thanks, man. You didn't have to.' You nod. You enjoyed the exercise and practice. Who knows when it could come in handy?";

this is the rowr-room-transform rule:
	now win-score of rowr room is rowr-max;
	if old-rowr-score is 3:
		say "Nothing much happens otherwise, but you feel good about going above and beyond.";
		the rule succeeds;
	let up-rowr be whether or not rowr-score is old-rowr-score;
	now old-rowr-score is rowr-score;
	if up-rowr is true:
		say "Nothing massive happens this time--perhaps you need to change what you are thinking of.";
		the rule succeeds;
	if rowr-score is 3:
		say "Suddenly, you hear a rumbling. The top blows off the room! It's now a bower! Words escape -- simple ones, you can't quite figure them out--back to the Rare Rows. You can find more to do if you want, but you've done what you need.";
		solve-room;
	else if rowr-score is 2:
		say "The room seems to shake significantly. You stumble a bit. The room feels very unstable. The noise is as loud as ever.";
	else:
		say "You feel a slight but long-lasting tremor. The noise isn't that bad, still.";
	the rule succeeds;

this is the huts-and-ruts rule:
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
	follow the shutdown rules;

volume table of noways

table of noways
noway-rm	noway-txt
Rare Rows	"There are no hidden directions here."
Ground Grave	"It's even spookier and darker if you go further from the rare rows."
Cram Creek	"The creek goes off too far into the distance. Whatever you need to do, it has to be right here."
Rowr Room	"It's a room. The only way back is west."
Car Cage	"The only way out is back north."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
rare rows	--	"stare"	"Yes, there [if sco-stair-stows is true]was something to look for, and you found it.[else]is something to look for. But where?[end if]"
rare rows	--	"hoes"	"Not around the Prayer Pros!"
rare rows	--	"air/rows"	"No, that [if sco-arrows is true]was[else]is[end if] only half it."
grave ground	--	"waive"	"No, something more positive."

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

There Those Dare Doze Tables ends here.

---- DOCUMENTATION ----
