Version 1/221007 of There Those Dare Doze Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of There Those Dare Doze Tables."

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"snare"	"snows"	--	--	false	true	true	false	rare rows	vc-snare-snows rule	vr-snare-snows rule	--	--
"glare"	"glows"	--	--	false	true	true	false	rare rows	vc-glare-glows rule	vr-glare-glows rule	--	--
"stair"	"stows"	--	--	false	true	true	false	rare rows	vc-stair-stows rule	vr-stair-stows rule	--	--
"hair"	"hose"	--	--	false	true	true	false	rare rows	vc-hair-hose rule	vr-hair-hose rule	--	--
"fair"	"foes"	--	--	false	true	true	false	rare rows	vc-fair-foes rule	vr-fair-foes rule	--	--
"arrows"	--	--	--	false	true	true	false	rare rows	vc-arrows rule	vr-arrows rule	"arrows"	--
"bare"	"bows"	--	--	false	true	true	false	rare rows	vc-bare-bows rule	vr-bare-bows rule	--	--
"clam"	"clique"	--	--	false	true	true	false	cram creek	vc-clam-clique rule	vr-clam-clique rule	--	--
"slam"	"sleek"	--	--	false	true	true	false	cram creek	vc-slam-sleek rule	vr-slam-sleek rule	--	--
"wham"	"weak"	--	--	false	true	true	false	cram creek	vc-wham-weak rule	vr-wham-weak rule	--	--
"blam"	"bleak"	--	--	false	true	true	false	cram creek	vc-blam-bleak rule	vr-blam-bleak rule	--	--
"maam"	"meek"	--	--	false	true	true	false	cram creek	vc-maam-meek rule	vr-maam-meek rule	--	--
"our"	"age"	--	--	false	true	true	false	car cage	vc-our-age rule	vr-our-age rule	--	--
"far"	"phage"	--	--	false	true	true	false	car cage	vc-far-phage rule	vr-far-phage rule	--	--
"rar|rawr|rahr|rhar|rowr|rarr|raar"	"rage"	--	--	false	true	true	false	car cage	vc-rar-rage rule	vr-rar-rage rule	--	--
"star"	"stage"	--	--	false	true	true	false	car cage	vc-star-stage rule	vr-star-stage rule	--	--
"rave"	"round"	--	--	false	true	true	false	grave ground	vc-rave-round rule	vr-rave-round rule	--	--
"pave"	"pound"	--	--	false	true	true	false	grave ground	vc-pave-pound rule	vr-pave-pound rule	--	--
"wave"	"wound"	--	--	false	true	true	false	grave ground	vc-wave-wound rule	vr-wave-wound rule	--	--
"save"	"sound"	--	--	false	true	true	false	grave ground	vc-save-sound rule	vr-save-sound rule	--	--
"crave"	"crowned"	--	--	false	true	true	false	grave ground	vc-crave-crowned rule	vr-crave-crowned rule	--	--
"hope"	"huts"	--	--	false	true	true	false	rare rows	vc-hope-huts rule	vr-hope-huts rule	--	--
"rope"	"ruts"	--	--	false	true	true	false	rare rows	vc-rope-ruts rule	vr-rope-ruts rule	--	--

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
	if cage-prep-score < 3:
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

a goodrhyme rule (this is the vc-snare-snows rule):
	if player is not in rare rows, unavailable;
	if sco-snare-snows is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-snare-snows is true:
		vcal "You already harvested snows!";
		already-done;
	ready;

this is the vr-snare-snows rule:
	now sco-snare-snows is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-glare-glows rule):
	if player is not in rare rows, unavailable;
	if sco-glare-glows is true:
		vcal "You already established an unnaturally bright glare of your own.";
		already-done;
	ready;

this is the vr-glare-glows rule:
	now sco-glare-glows is true;
	say "Hooray! You figured what to do! You get a point!";

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
	say "Hooray! You figured what to do! You get a point!";
	move arrows to rare rows;

a goodrhyme rule (this is the vc-bare-bows rule):
	if player is not in rare rows, unavailable;
	if sco-bare-bows is true:
		vcal "You already have enough bare bows!";
		already-done;
	ready;

this is the vr-bare-bows rule:
	now sco-bare-bows is true;
	say "Hooray! You figured what to do! You get a point!";
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

a goodrhyme rule (this is the vc-rave-round rule):
	if player is not in grave ground, unavailable;
	if sco-rave-round is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-rave-round rule:
	now sco-rave-round is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-pave-pound rule):
	if player is not in grave ground, unavailable;
	if sco-pave-pound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-pave-pound rule:
	now sco-pave-pound is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-wave-wound rule):
	if player is not in grave ground, unavailable;
	if sco-wave-wound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-wave-wound rule:
	now sco-wave-wound is true;
	say "Hooray! You figured what to do! You get a point!";
	abide by the ground-boost rule;

a goodrhyme rule (this is the vc-save-sound rule):
	if player is not in grave ground, unavailable;
	if sco-save-sound is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-save-sound rule:
	now sco-save-sound is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-crave-crowned rule):
	if player is not in grave ground, unavailable;
	if sco-crave-crowned is true:
		vcal "You already boosted Dave this way!";
		already-done;
	ready;

this is the vr-crave-crowned rule:
	now sco-crave-crowned is true;
	process-dave;

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

to bump-room: increment win-score of location of player;

this is the cage-change rule:
	say "The universe seems to lurch, or at least this small part of it. The Mar Mage shakes their fist. 'No! I don't believe it! You can't keep this up!'[line break]";
	say "[one of]However, it settles back. You've done damage but nothing serious[or]It takes a little longer to settle back this time[or]Something has shattered. The car cage can become something more positive[stopping]";

this is the ground-boost rule:
	if dave-score is 4:
		say "Dave jumps up! He feels fully released by your thoughts. He tries to shake your hand, but he fails, because he is undead and incorporeal. As he vanishes to ... wherever he needs to, you feel there's maybe one more thing you could do to help him.";
		moot dave;
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
	else if dave-score is 5:
		say "'Thanks, man. You didn't have to.' You nod. You enjoyed the exercise and practice. Who knows when it could come in handy?";

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
