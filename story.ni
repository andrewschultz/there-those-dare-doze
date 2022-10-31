"There Those Dare Doze" by Andrew Schultz

volume basics

include Trivial Niceties by Andrew Schultz.

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

include There Those Dare Doze Definitions by Andrew Schultz.

include There Those Dare Doze Globals by Andrew Schultz.

include There Those Dare Doze Mistakes by Andrew Schultz.

include There Those Dare Doze Tables by Andrew Schultz.

volume game specific stuff

this is the situational-cuing-reject rule: do nothing;

 a room can be solved. a room is usually not solved.

 a room has a number called win-score. win-score of a room is usually 0.

volume you

description of the player is "There's something written on ... whatever you're wearing. [if ppnn is fungible]You can finally read it! POPE? PUTZ, NOPE! NUTS![else]It's [adverb] too blurry right now.[end if]"

weird-num is a number that varies.

to say adverb:
	if weird-num is 0:
		say "totally";
	else if weird-num is 1:
		say "still really";
	else if weird-num is 2:
		say "sadly pretty";
	else if weird-num is 3:
		say "barely unreadably";
	else:
		say "no longer";

volume odd verbs

carry out swearing obscenely: say "Dooky-dinning?! Spooky-spinning!" instead;

chapter xyzzying

carry out xyzzying:
	say "A stern voice booms: 'SPACEY SPELL? HEY, SEE HELL!'[paragraph break]Better not risk it.";
	the rule succeeds;

volume rooms

book rare rows

check going in rare rows when number of solved rooms is 3:
	if sco-glare-glows is true, continue the action;
	if the room gone to is not solved, continue the action;
	say "So close to the end, you feel as though you're being watched. You look down, and you realize it's probably a bad idea, then, to go forward." instead;

Rare Rows is a room. the player is in Rare Rows. "Here is the resting place of the Prayer Pros. Passages go in any cardinal direction."

check taking when player is in rare rows: say "Anything you need, you will take when it is summoned. Anything someone else needs, you can leave."

chapter ppnn

the ppnn is privately-named scenery.

chapter Prayer Pros

the Prayer Pros are people in Rare Rows. "The Prayer Pros [if number of solved rooms is 4]mill about here, looking for a new home[else]still lie here. You are confident you will do what you need to wake them."

chapter Fair Foes

the Fair Foes are people. "The Fair Foes wait here, ready to follow your lead as needed.". description is "Inscrutable, neither too enthusiastic nor too bored."

chapter arrows

the arrows are a thing. "Arrows lie here on the ground.".  description is "They look sharp enough for combat. You're not an expert."

chapter bare bows

the bare bows are a thing. "Bare bows lie on the ground.". description is "Too big and strong for you to use. Someone more experienced, though..."

book grave ground

check going west in Rare Rows: if sco-stair-stows is false, say "[one of]Suddenly, the land drops off! You will[or]You'll still[stopping] need a ladder or something to make further progress." instead;

Grave Ground is west of Rare Rows. win-score of Grave Ground is 5.

Dave Downed is a person in Grave Ground. "Dave (Downed) is here, [one of][or]still [stopping]looking upset."

book rowr room

Rowr Room is east of Rare Rows.

check going east in rare rows: if sco-snare-snows is false, say "The heat, metaphorical and physical, pushes you back." instead;

book cram creek

check going north in rare rows: if sco-hair-hose is false, say "You see a body of water far ahead! Suddenly, you are irrationally worried you have no kind of swimming gear." instead;

Cram Creek is north of Rare Rows. "A creek turns in a U here, blocking every way except back south.". win-score of Cram Creek is 4.

chapter Sham Sheik

the Sham Sheik is a person in Cram Creek. "A Sham Sheik eyes you sardonically here. He seems to think he owns the place and tries to tower over you.". description is "He shoos you away. This confrontation is strictly verbal."

chapter clam clique

the clam clique are plural-named people. "The clam clique you rescued from the Sham Sheik is here.". description is "They occasionally make weird noises as their shells open and close."

book car cage

Car Cage is south of Rare Rows.

check going south in rare rows:
	say "'I am the MAR MAGE!' a voice booms. You're blown back a bit.[line break]";
	if rows-south < 3:
		say "Sadly, you are repressed a bit too much by the argument. 'No way! You can't! You haven't been fully objective! And even if you were, I'd probably be too strong for you!'[paragraph break]You realize you'll be needing the right allies, fully armed.[line break]";
		if sco-fair-foes is false, say "Allies would be good to start with." instead;
		if sco-bare-bows is false, say "Your allies, the fair foes, need [if sco-bare-bows is false]weapons[else]ammunition[end if]." instead;
	say "Despite protests from the south, you feel brave enough to go [one of][or]back [stopping]there and take care of business.";
	if fair foes are in rare rows:
		say "The Mar Mage to the south protests. Outnumbered, no less! But the Fair Foes do not listen. They nock their bare bows with arrows, and while they don't kill the Mar Mage, their opponent curses their temporary loss of magic capabilities--keeping that shield up was hard work![paragraph break]The Fair Foes salute you as they turn away. It's understood without words that if you're the good guy, you can finish the job, not necessarily killing the Mar Mage and making them a martyr (or martyr mage-ter, amirite?) But being the one to show them what's what.";
		moot fair foes;
		moot arrows;
		moot bare bows;

chapter mar mage

The Mar Mage is a person in Car Cage.

chapter Saar Sage

The Saar Sage is a person.

volume verbs

check talktoing:
	if noun is the player, say "'Make me wake, whee,' you say, unconvincingly." instead;
	if noun is Dave Downed, say "Alas, regardless of his mood, he still seems only to say glub... glub..." instead;
	if noun is fair foes, say "They brush off your small talk to avoid even the appearance of unfair bias in the fight ahead." instead;
	say "No response[one of]. You don't need to talk to everyone, but hopefully when you do, the dialogue is fun[or][stopping]." instead;

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
			process the run-rule entry;
			if the rule failed:
				now think-cue entry is true;
				the rule succeeds;
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false, check-lump-progress;
			the rule succeeds;
		if shut-scan is true, next;
		if two-too is true and player has leet learner:
			if there is a posthom entry:
				if the player's command includes the posthom entry:
					if rb-out is worth-parsing:
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
