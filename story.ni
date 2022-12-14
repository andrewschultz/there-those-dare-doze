"There Those Dare Doze" by Andrew Schultz

volume basics

the story description is "Wild-Weird-Styled Steered".

the story headline is "Prime Pro-Rhyme Row entry 5".

release along with cover art.

release along with a website.

release along with the "parchment" interpreter.

include Trivial Niceties by Andrew Schultz.

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

include There Those Dare Doze Definitions by Andrew Schultz.

include There Those Dare Doze Globals by Andrew Schultz.

include There Those Dare Doze Mistakes by Andrew Schultz.

include There Those Dare Doze Tables by Andrew Schultz.

section debug - not for release

include There Those Dare Doze Tests by Andrew Schultz.

volume game specific stuff

this is the situational-cuing-reject rule: do nothing;

volume when play begins

when play begins:
	say "You immediately regretted buying the candy corn the day after Christmas. You expected it to taste different, because it came in rainbow colors. It did not. You ate one of each once or twice a month, but there was a whole lot of it. You had meant to pitch it for a while, But you felt guilt wasting food, any food.";
	wfas;
	say "So it's wound up in your backpack for quick energy during long bike rides. But even then, it's gone slowly. You planned to finish it on Halloween. The last of the day's chores. You take a ride down an alley you hadn't been down, and you see something glowing. A sign saying 'One Wish In!' You remove your backpack.";
	wfas;
	say "Your backpack, like the sign, is glowing. You open it up to see the source: the old candy corn. You discover a small hole under the sign, and you dump the candy corn in there.";
	wfas;
	say "Nothing happens. Bummer!";
	wfas;
	say "But when the alley ends at a major street, You see a storefront you never did before. You know some of them are seasonal, but this one is really weird. It's called [shows]. What could it be selling? The door is open. It's dark inside.";
	wfas;
	say "The door slams shut behind you. 'Chair ... CHOSE!' booms a voice. You feel you'd better sit down.";
	wfas;
	say "As you do, you're told the story of the Prayer Pros, trying to stave off a nameless, faceless evil, but They can't find the right words or tone for their prayers, So what happens is, they just get tired of the whole business, and they decide to sleep on it. But the sleep isn't just a nap. It's lasted quite long now, and they need somebody, anybody. Are you up for the job? You're the only person who actually seems to eat candy corn.";
	wfas;
	say "Whether you are or not, it doesn't matter. The area around the chair shimmers. You blink. You're in a wide-open space.";
	wfas;

volume you

description of the player is "There's something written on ... whatever you're wearing. [if ppnn is fungible]You [one of][read-ppnn]can finally read it![or]read it again: [stopping] POPE? PUTZ, NOPE! NUTS![else]It's [adverb] too blurry right now.[end if]"

to say read-ppnn: now flag-read-ppnn is true.

to say adverb:
	let nsl  be number of solved rooms;
	if nsl is 0:
		say "totally";
	else if nsl is 1:
		say "still really";
	else if nsl is 2:
		say "sadly pretty";
	else if nsl is 3:
		say "barely unreadably";
	else:
		say "no longer";

volume rooms

after looking when player is not in rare rows and guide-gong-warn is false:
	say "[i][bracket][b]NOTE:[r] [i]while the game map is simple, here's a small thing to help you narrow down where to go. [b]GUIDE GONG[r][i] will shut you out of completed areas, [b]STRIDE STRONG[r][i] will remove these restrictions, and [b]PRIDE PRONG[r][i] is like the gong, except it will give you a poke to visit rooms where you can still get a bonus point.[close bracket][r][line break]";
	now guide-gong-warn is true;
	continue the action;

book rare rows

check going in rare rows when number of solved rooms is 3:
	if sco-glare-glows is true, continue the action;
	if the room gone to is solved, continue the action;
	say "So close to the end, you feel as though you're being watched. You look down, and you realize it's probably a bad idea, then, to go forward. How can you counter this feeling of being watched?" instead;

Rare Rows is a room. "Here is the resting place of the Prayer Pros. You see no way back to [shows], but the air feels rife with possibilities.[paragraph break]Passages lead in all four cardinal directions[note-won][note-okay-now][note-blocked].". win-score of rare rows is 7.

guess-table of rare rows is table of rare rows guesses.

from-number of rare rows is 2704. to-number of rare rows is 19030.

the player is in Rare Rows.

the leet learner is in Rare Rows. "You notice an odd contraption here labeled [b]LEET LEARNER[r]. You reach out to take it. It doesn't send an electric current up your arm.".

check taking when player is in rare rows: say "Anything you need, you will take when it is summoned. Anything someone else needs, you can leave." instead;

after looking in rare rows when number of solved rooms is 4 and ppnn is off-stage:
	say "You have assembled the needed components to wake the Prayer Pros. Dave (Downed)[']s presence, the oppressed animals (the clam,) and a mystic (the Saar sage)  seem to stand in a triangle, with the right words (How, Er, Whom,) bouncing between them.";
	say "[line break]The prayer pros wake up! They turn to you for guidance. They are staring at -- well, your shirt. That's weird.";
	moot saar sage;
	moot dave;
	moot clam;
	moot how er whom;
	now player has ppnn;
	now from-number of player is 5404;
	now to-number of player is 5404;

after looking in rare rows when player does not have leet learner:
	now player has leet learner;
	continue the action;

chapter block going when necessary

check going north in rare rows:
	if sco-hair-hose is false:
		now Cram Creek is tried;
		say "You see a body of water far ahead! Suddenly, you are irrationally worried you have no kind of swimming gear. You turn back." instead;

check going west in Rare Rows:
	if sco-stair-stows is false:
		now Grave Ground is tried;
		say "[one of]Suddenly, the land drops off! You will[or]You'll still[stopping] need a ladder or something to make further progress without injury." instead;

check going east in rare rows:
	if sco-snare-snows is false:
		now Rowr Room is tried;
		say "The heat, metaphorical and physical, pushes you back." instead;

check going south in rare rows:
	if car cage is unvisited, say "'I am the MAR MAGE!' a voice booms. You're blown back a bit.";
	if rows-south < 3:
		now Car Cage is tried;
		say "[line break]As if the outright bluster weren't enough, you're hit with an argument as well. 'You're totally invading my personal space! Sure, you think I'm the bad guy! But you haven't been fully objective! And even if you were, I'd start a righteous war, and stuff! You couldn't attack me alone!'[paragraph break]The Mar Mage looks tough. You realize you'll be needing the right allies, fully armed.";
		if sco-fair-foes is false, say "[line break]Start with summoning allies, then, maybe." instead;
		say "[line break]Your allies, the fair foes, need [if sco-bare-bows is true]ammunition for the bare bows[else if sco-arrows is true]weapons for the arrows[else]ammunition and weapons[end if]." instead;
	if fair foes are in rare rows:
		say "[line break]But the Fair Foes are not. The Mar Mage protests it's not fair, being so outnumbered! But the Fair Foes do not listen. They know the Mar Mage is outnumbered due to annoying everyone, including other evil allies. They nock their bare bows with arrows, and while the Mar Mage easily throws up a shield, the arrows do damage to it. The Mar Mage has lost their magic capabilities![paragraph break]The Fair Foes salute you as they turn away. It's understood without words that if you're the good guy, you can finish the job, not necessarily killing the Mar Mage and making them a martyr (or martyr mage-ter, amirite?) But the Fair Foes also sense they are not the ones to ultimately help the Prayer Pros. And it's fair enough some work should be left to you, anyway.";
		moot fair foes;
		moot arrows;
		moot bare bows;
	else if mar mage is in car cage:
		say "[line break]Fortunately, from the Mar Mage's grumblings, it appears they haven't figured out how to recharge their spells yet. Good news! You can still tackle them.";

chapter ppnn

the ppnn is a privately-named rhymable. It is scenery. understand "pn/ppnn" as ppnn when debug-state is true.

from-number of ppnn is 5408. to-number of ppnn is 5408.

guess-table of ppnn is table of ppnn guesses.

chapter Prayer Pros

the Prayer Pros are people in Rare Rows. "The Prayer Pros [if number of solved rooms is 4] have finally woken! They mill about here, looking for a new home[else]still lie here. You are confident you will do what you need to wake them[end if].". description is "[if number of solved rooms is 4]They look back at you expectantly[else]They all lie solemn in their rare rows, eyes closed, hands folded. What mental energy they must have expended in their failure! But perhaps it is not failure. Perhaps you were chosen as the agent of help[end if].".

from-number of prayer pros is 2804. to-number of prayer pros is 19030.

chapter Fair Foes

the Fair Foes are people. "The Fair Foes wait here, ready to follow your lead as needed.". description is "Inscrutable, neither too enthusiastic nor too bored."

from-number of fair foes is 2704. to-number of fair foes is 19030.

chapter arrows

the arrows are a thing. "Arrows lie here on the ground.".  description is "They look sharp enough for combat. You're not an expert."

from-number of arrows is 2653. to-number of arrows is 19030.

chapter bare bows

the bare bows are a thing. "Bare bows lie on the ground.". description is "Too big and strong for you to use. Someone more experienced, though..."

from-number of bare bows is 2704. to-number of bare bows is 19030.

chapter huts and ruts

the hope huts are scenery. "You can't do anything directly with the huts. Probably best to find what goes with them."

from-number of hope huts is 2704. to-number of hope huts is 2704.

the rope ruts are scenery. "You can't do anything directly with the ruts. Probably best to find what goes with them."

from-number of rope ruts is 2704. to-number of rope ruts is 2704.

book grave ground

Grave Ground is west of Rare Rows. win-score of Grave Ground is 4. "[if sco-fave-found is true]Dave's not here, man.[paragraph break]The wave (wound) surrounds you[else]It's far too dark and spooky[end if] every way except back east.". printed name of Grave Ground is "[if sco-fave-found is true]Wave (Wound)[else]Grave Ground[end if]". block-descrip-text of Grave Ground is "you can't quite navigate a drop-off to the west".

guess-table of grave ground is table of grave ground guesses.

from-number of grave ground is 2756. to-number of grave ground is 10872.

chapter dave downed

Dave Downed is a person in Grave Ground. "[if player is in grave ground][one of]A ghost floats into view and identifies himself as Dave (Downed). He mentions he'd like motivation to afterlive it up a bit more, and it should come form within, but it doesn't. Can you help him?[or]Dave (Downed) is here, [one of][or]still [stopping]looking [dave-upset] upset and, oh yeah, vaguely undead.[stopping][else]Dave waits a lot more cheerily here than when you first saw him.[end if]". description is "[if player is in grave ground]He looks purposeless and adrift[else]Happy enough, almost impatient to do something real[end if].". printed name of Dave Downed is "Dave (Downed)".

from-number of dave downed is 2706. to-number of dave downed is 10872.

to say dave-upset: say "[if dave-score is 0]very[else if dave-score is 1]rather[else if dave-score is 2]kind of[else]a little[end if]"

book rowr room

Rowr Room is east of Rare Rows. printed name is "[if rowr-progress-score < 3]Rowr Room[else]Bower (BOOM!)[end if]". win-score of rowr room is 3. "[if number of unactivated rowr-moods > 0]It's very noisy here. To dissipate the that, perhaps you could [list of unactivated rowr-moods]. [end if][if number of halfway rowr-moods > 0]You also have notions of [list of halfway rowr-moods], but just for fun. [end if][if number of fullon rowr-moods > 0]You have exhausted the ways to [list of fullon rowr-moods]. [end if]The only way out is back west.". block-descrip-text of Rowr Room is "it's too hot to the east"

guess-table of rowr room is table of rowr room guesses.

from-number of rowr room is 2704. to-number of rowr room is 8263.

chapter rowr-moods

tomb-womb is a rowr-mood. printed name of tomb-womb is "create a secret passage you'll never explore".
flume-plume is a rowr-mood. printed name of flume-plume is "create some fireworks".
doom-gloom is a rowr-mood. printed name of doom-gloom is "change the mood".

chapter how er whom

how er whom is a thing. printed name is "How, Er, Whom?[run paragraph on]". "The [whom] from the east floats in the air--perhaps a question to be asked at the right time.". description is "It is incorporeal."

from-number of how er whom is 2754. to-number of how er whom is 8263.

check lling how er whom:
	if how-whom-note is false and to-number of how er whom is not -4:
		now how-whom-note is true;
		say "Counting how/er whom as five letters, then four...";

book cram creek

Cram Creek is north of Rare Rows. "A creek turns in a U here, blocking every way except back south[if sco-clam-clique is false]. It's too mountainous other ways, as well[else if sheik-score is 3]. The area feels ready to burst out in life. You just need to [fig-rem-clam] what sort of animal could live in or near the creek[end if].". win-score of Cram Creek is 4. block-descrip-text of Cram Creek is "you need a way to get less wet before going north". printed name of Cram Creek is "[if sco-clam-clique is false]Cram Creek[else]Spam's Peak[end if]".

from-number of cram creek is 2705. to-number of cram creek is 10818.

to say fig-rem-clam:
	process vc-clam-clique rule;
	let rbo be the outcome of the rulebook;
	say "[if rbo is the ready outcome or rbo is the already-done outcome]recall[else]figure[end if]"

chapter Sham Sheik

the Sham Sheik is a person in Cram Creek. "[one of]A Sham Sheik eyes you sardonically here. You know he is a Sham Sheik because, although he is not dressed ostentationsly, he is still wearing clothes labeling himself as such. He seems to think[or]The Sham Sheik continues to act as if[stopping] he owns the place and tries to tower over you.". description is "He shoos you away. You will have focus on, not physical interaction, but more how you both use your words."

from-number of sham sheik is 2705. to-number of sham sheik is 10818.

chapter clam clique

the clam clique are plural-named people. "The clam clique you rescued from the Sham Sheik is here.". description is "They occasionally make weird noises as their shells open and close."

from-number of clam clique is 2706. to-number of clam clique is 10818.

book car cage

Car Cage is south of Rare Rows. win-score of car cage is 3. printed name is "[if sco-star-stage is false]Car Cage[else]Star Stage[end if]". block-descrip-text of Car Cage is "you need an army to fight off the Mar Mage to the south".

guess-table of car cage is table of car cage guesses.

from-number of car cage is 2654. to-number of car cage is 8012.

chapter mar mage

The Mar Mage is a person in Car Cage. "The Mar Mage stands here defiantly! How can you adjust the Car Cage to drain their power?". description is "The Mar Mage glares back, intimdatingly, at your property-violating self."

from-number of mar mage is 2654. to-number of mar mage is 8012.

chapter Saar Sage

The Saar Sage is a person. "The Saar Sage, fresh off showing the Mar Mage what's what, waits for the right time to perform their next bit of magic.". description is "All very wizardly in a blue outfit with yellow Microsoft ClipArt-ish symbols all over. You suspect their position and size have some arcane meaning you will never know."

from-number of Saar Sage is 2704. to-number of Saar Sage is 8012.

volume LLing

rule for supplying a missing noun when lling (this is the get readings from room rule):
	if ppnn is fungible:
		say "[one of]Nothing all around, but[or]Again,[stopping] when you point the leet learner at yourself, something happens.";
		now noun is the player;
		continue the action;
	say "You scan the area[one of]. This will suffice most of the time, though you may wish to [b]LL[r] a thing that doesn't jibe with the location's rhymes[or][stopping].";
	abide by the general-ll-locations rule;
	reject the player's command;

check lling the player when player has ppnn: try lling ppnn instead;

volume standard and action verbs

chapter attacking

the block attacking rule is not listed in any rulebook.

check attacking:
	if noun is prayer pros, say "But you're trying to help them!" instead;
	if noun is mar mage, say "No way. Not on your own." instead;
	if noun is Dave, say "No. He can help you." instead;
	say "Violence is not the way here." instead;

chapter inventory

check taking inventory: say "You are on a spiritual journey of sorts. You left your backpack behind in the chair-chose. You hope it's there when you get back, at any rate.[paragraph break]But it doesn't look like you'll need a lot here, though. It's more what you can do and think." instead;

report requesting the score:
	say "You've currently gotten [now-score of location of player] of [win-score of location of player] points needed right here in [location of player], with a total of [total-score of location of player] points available.";
	continue the action;

chapter swearing

carry out swearing obscenely: say "Dooky-dinning?! Spooky-spinning!" instead;

chapter talktoing

carry out talktoing:
	if noun is the player, say "'Make me wake, whee,' you say, unconvincingly." instead;
	if noun is Dave Downed, say "Alas, he is too down to speak much." instead;
	if noun is fair foes, say "They brush off your small talk to avoid even the appearance of unfair bias in the fight ahead." instead;
	if noun is mar mage, say "The Mar Mage is too busy casting spells." instead;
	if noun is prayer pros, say "You must wake them through your actions." instead;
	if noun is Saar Sage, say "The Saar Sage is exhausted from casting spells." instead;
	if noun is sham sheik, say "Boring old talking won't work. You need creative and constructive ways to win an argument." instead;
	say "No response[one of]. You don't need to talk to everyone, but hopefully when you do, the dialogue is fun[or][stopping]." instead;

chapter xyzzying

carry out xyzzying:
	say "A stern voice booms: 'SPACEY SPELL? HEY, SEE HELL!'[paragraph break]Better not risk it.";
	the rule succeeds;

volume meta-verbs

carry out abouting:
	say "[this-game] is the fifth entry in the Prime Pro-Rhyme Row series. It was conceived the week of October 3rd, 2022, when I realized my first prospective entry, [csdd], wasn't going to fit in the EctoComp Petite Mort, even with the code generation scripts written for [lljj].[paragraph break]What could, then? I wanted something that needed relatively little testing and not too many moving pieces. The game name fell first. Then one branch. Then another. The room names were doodled on a piece of paper. I lost it. I found it on the 27th. I wondered if I should bother. But I hope, if there is overlap, there's genuine amusement for you, as there was for me.[paragraph break][this-game]'s features are necessarily abridged. It will be more like [csdd] post-release.[paragraph break]Having a scenario where you don't need to get all points in each room appealed to me, as I know people would get stuck on one puzzle in the other games.[paragraph break][this-game] is the fifth entry in the [pprr] series, which I originally considered to be a one-off. I can't see it expanding too much farther. The others are [other-ones].[paragraph break]Bug reports can go to https://github.com/andrewschultz/there-those-dare-doze.";

carry out creditsing:
	say "Thanks to Ruber Eaglenest for holding EctoComp yet again and having the Grand Guignol and Petite Mort divisions, so I could submit [csdd] and then this as a bit of runoff. Thanks to JJ Guest for conceiving it, and to Duncan Bowsman for keeping its administration going.";
	say "[line break]No testers were hurt in the creation of [this-game]. However, I wrote a bunch of test scripts where command orders are adjusted, and one command is left out or placed at the end of all scripts. They all work.";
	say "[line break]Thanks to Brian Rushton for filing issues at GitHub to make the post-comp version better.";
	say "[line break]A lot of the code in the Tables.i7x file was generated by a Python script. This saved time and energy.";

carry out hinting:
	say "Sadly, the walkthrough feelie is the only thing I had time to write up for EctoComp.";

carry out versioning:
	say "Version 1 of [this-game] was released October 31, 2022, for the EctoComp Petite Mort division.";

carry out verbsing:
	say "You don't need any special verbs to win. The four basic cardinal directions work, and you can [b]T NPC[r] for small clues, maybe. The main thing is to guess what to say--[if score is 0]you may note something about the room name and the pest[else]the double rhymes are the main mechanic[end if].";
	say "[line break][b]OPTS[r] also gives options.";
	say "[line break][b]META[r] gives meta-commands that show general information.";

volume gong stuff

this-gong-rule of rare rows is gong-rare-rows rule.
this-gong-rule of grave ground is gong-grave-ground rule.
this-gong-rule of car cage is gong-car-cage rule.
this-gong-rule of rowr room is gong-rowr-room rule.
this-gong-rule of cram creek is gong-cram-creek rule.

this is the gong-rare-rows rule:
	uncompleted;

this is the gong-car-cage rule:
	if sco-star-stage is false, uncompleted;
	if cage-prep-score is 3, completed;
	llp-remaining;

this is the gong-cram-creek rule:
	if sco-clam-clique is false, uncompleted;
	if sheik-score is 4, completed;
	llp-remaining;

this is the gong-rowr-room rule:
	if rowr-progress-score < 3, uncompleted;
	if rowr-full-score is 6, completed; ["now-score of rowr room" also works]
	llp-remaining;

this is the gong-grave-ground rule:
	if sco-fave-found is false, uncompleted;
	if dave-score is 4, completed;
	llp-remaining;

volume verb-checker rule

this is the verb-checker rule:
	let local-ha-half-level be 0;
	let local-post-hom be false;
	let brightness be false;
	let new-point-to-get be false;
	let global-row-check be 0;
	let hom-row be 0;
	let my-count be 0;
	let nwpc be number of words in the player's command;
	repeat through the table of verb checks:
		increment global-row-check;
		now my-count is 0;
		now vc-dont-print is true;
		process the check-rule entry;
		let rb-out be the outcome of the rulebook;
		if rb-out is the unavailable outcome, next;
		now vc-dont-print is false;
		[say "[check-rule entry].";]
		if there is a wfull entry and the player's command matches the wfull entry:
			now my-count is 4; [ 4 = topic match, 3 = mix up alt solutions, 2 = 2 word match (or DIMD). This is a magic number to get rid of a boolean, so we can have all non global variables inside one rule, because Inform only allows 15 local variables. ]
		else:
			if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
			if there is a w2 entry:
				if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
			else if my-count > 0:
				increment my-count;
			if there is a wfull entry and my-count is 2:
				increment my-count;
		if my-count >= 2:
[			if debug-state is true, say "DEBUG: processing [check-rule entry], outcome [if rb-out is unavailable outcome]UA[else if rb-out is not-yet outcome]NOT YET[else if rb-out is already-done outcome]already done[else]rady[end if].";]
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmph. That [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work! You'll figure out the how and when and where, though.";
				the rule succeeds;
			if rb-out is semi-pass outcome:
				now think-cue entry is true;
				the rule succeeds;
			if okflip entry is false:
				unless my-count is 4 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [using only w1 is for the DIM'D test case... and "my-count is 4" is a hack for FLIMFLAM]
					say "You've got it backwards! Just flip things around, and it'll be okay.";
					the rule succeeds;
			if my-count is 3:
				say "Ooh! You're close. You've probably juggled two valid solutions.";
				the rule succeeds;
			abide-nlb the situational-cuing-reject rule;
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				increment now-score of best-room entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			process the run-rule entry;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false, check-lump-progress;
			the rule succeeds;
		if shut-scan is true, next;
		if two-too is true and player has leet learner:
			if there is a posthom entry:
				now vc-dont-print is true;
				process the check-rule entry;
				let rb-out be the outcome of the rulebook;
				now vc-dont-print is false;
				if the player's command includes the posthom entry:
					if rb-out is worth-parsing or rb-out is the already-done outcome:
						now local-post-hom is true;
						now hom-row is global-row-check;
		if ha-half is true and my-count is 1 and player has leet learner:
			now vc-dont-print is true;
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			now vc-dont-print is false;
			unless rb-out is the not-yet outcome or rb-out is the ready outcome or rb-out is semi-pass outcome, next;
			if rb-out is ready outcome or rb-out is semi-pass outcome:
				now local-ha-half-level is 2;
			else if local-ha-half-level < 2:
				now local-ha-half-level is 1;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off the HA HALF button.";
			if there is a core entry:
				now new-point-to-get is true;
				if core entry is true, now brightness is true;
			next;
	if local-post-hom is true:
		if hom-row > 0:
			choose row hom-row in table of verb checks;
			if there is a hom-txt-rule entry:
				abide by the hom-txt-rule entry;
			else:
				say "The Leet Learner shakes back and forth. Something you said sounded right, but it didn't feel right.";
		abide by the two-too-help rule;
	if local-ha-half-level > 0:
		say "The [b]HA HALF[r] button on your Leet Learner lights up [if local-ha-half-level is 1]yellow[one of]--one of the words must work for a future solution[or][stopping][else]green[one of]--one of the words you thought must be right[or][stopping][end if][if new-point-to-get is false]. Oh, wait, you're just switching back to a rhyme you knew before. You must've mis-thought a word[else if brightness is false]. Very dim, though. Perhaps this is a rhyme you don't strictly need to figure to win[else if local-post-hom is true]. Its brightness suggests your rhyme must be very close, indeed[end if].";
		abide-nlb the ha-half-help rule;

volume endgame

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the points you [b]MISSED[r]" 	true	"missed/misses"	show-misses rule	--

to find-missed (rm - a room):
	let got-one be false;
	repeat through table of verb checks:
		if best-room entry is not rm, next;
		if idid entry is false:
			if got-one is false:
				say "You could have tried ";
			else:
				say "/";
			now got-one is true;
			let MISCMD be indexed text;
			now MISCMD is "[w1 entry in upper case] [w2 entry in upper case]";
			replace the regular expression "\|<^ >*" in MISCMD with "";
			say "[b][MISCMD][r]";
	if got-one is true, say " in [rm].";

this is the show-misses rule:
	find-missed Cram Creek;
	find-missed Grave Ground;
	find-missed Rowr Room;
	find-missed Car Cage;

volume parsing

Rule for printing a parser error (this is the clue half right words rule):
	now compare-item is the player;
	abide by the rhyme-guess-checker rule for the table of first check rhymes;
	abide by the game-specific-backdrop-check rule;
	unless guess-table of location of player is table of no good guesses:
		[if debug-state is true, say "DEBUG location guesses: [location of player], [guess-table of location of player].";]
		abide by the rhyme-guess-checker rule for guess-table of location of player;
	let table-list be a list of table names;
	repeat with fun running through fungible rhymables:
		let gtt be guess-table of fun;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
		now compare-item is fun;
		abide by the rhyme-guess-checker rule for gtt;
	repeat with fun running through fungible people:
		let gtt be guess-table of fun;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
		now compare-item is fun;
		abide by the rhyme-guess-checker rule for gtt;
	abide by the verb-checker rule;
	abide by the rhyme-guess-checker rule for table of general good guesses;
	continue the action;

the clue half right words rule is listed first in the for printing a parser error rulebook. [note: this caused a speedup when I first tried it. I'm not sure if this would last, so I'll need to do testing with this line vs with it commented out. ?? ]
