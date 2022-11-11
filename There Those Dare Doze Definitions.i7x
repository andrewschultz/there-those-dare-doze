Version 1/221007 of There Those Dare Doze Definitions by Andrew Schultz begins here.

"This file tracks reusable definitons and decide-which-number options for There Those Dare Doze, so they're not scattered about . This includes necessary definitions for cross-game functions."

volume basic definitions

to say shows: say "[']Ware-Woes-Share Shows"

chapter room properties

a room can be untried, tried, tried-then-opened, or solved. a room is usually untried.

a room has a number called win-score. win-score of a room is usually 0.

a room has a number called now-score. now-score of a room is usually 0.

a room has text called block-descrip-text.

a room has a number called reserve-number. [for leet learner readings]

chapter the rowr-mood type

a rowr-mood is a kind of thing.

a rowr-mood can be unactivated, halfway or fullon. a rowr-mood is usually unactivated.

book definitions

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	yes;

book to say

to say optional-hint-think-item: say "";

volume gotoing

to decide whether (di - a direction) is blocked: no;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

this is the flag bad goto from rule: do nothing;

this is the flag bad goto to rule: do nothing;

volume in game barometers

to decide whether (ru - a rule) is optionable: [ this could be done more elegantly by adding a boolean column in the table of verb checks for fungibility, but that would mean mucking with test scripts. It determines which points are conditionally necessary, optioning the last of the feeder points in a room once you can get the final rhyme. ]
	if ru is vc-clam-clique rule or ru is vc-star-stage rule, no;
	yes;

to decide which number is dave-score:
	decide on (boolval of sco-rave-round) + (boolval of sco-pave-pound) + (boolval of sco-save-sound) + (boolval of sco-crave-crowned)

to decide which number is rows-south:
	decide on (boolval of sco-fair-foes) + (boolval of sco-bare-bows) + (boolval of sco-arrows);

to decide what number is sheik-score:
	decide on (boolval of sco-slam-sleek) + (boolval of sco-wham-weak) + (boolval of sco-blam-bleak) + (boolval of sco-maam-meek)

to decide what number is cage-prep-score:
	decide on (boolval of sco-our-age) + (boolval of sco-far-phage) + (boolval of sco-rar-rage)

to decide what number is rowr-score:
	let temp be 0;
	if sco-dour-doom is true or sco-glower-gloom is true, increment temp;
	if sco-tower-tomb is true or sco-wower-womb is true, increment temp;
	if sco-plower-plume is true or sco-flower-flume is true, increment temp;
	decide on temp;

to decide what number is rowr-max:
	let temp be 3;
	if sco-dour-doom is true and sco-glower-gloom is true, increment temp;
	if sco-tower-tomb is true and sco-wower-womb is true, increment temp;
	if sco-plower-plume is true and sco-flower-flume is true, increment temp;
	decide on temp;

to decide which number is new-rowr-scan:
	let temp be 0;
	if rowr-score is 6, decide on -3;
	if rowr-score < 3:
		if sco-wower-womb is false and sco-tower-tomb is false, increase temp by 2754;
		if sco-flower-flume is false and sco-plower-plume is false, increase temp by 2805;
		if sco-dour-doom is false and sco-glower-gloom is false, increase temp by 2704; [it could go either way but we'll go with the shorter one here]
	else:
		if sco-wower-womb is false, decrease temp by 2754;
		if sco-tower-tomb is false, decrease temp by 2754;
		if sco-flower-flume is false, decrease temp by 2805;
		if sco-plower-plume is false, decrease temp by 2805;
		if sco-dour-doom is false, decrease temp by 2704;
		if sco-glower-gloom is false, decrease temp by 2805;
	decide on temp;

to decide which number is total-score of (rm - a room):
	let temp be 0;
	if player has ppnn and player is in Rare Rows, decide on 2;
	repeat through table of verb checks:
		if w1 entry is "hope", break;
		if best-room entry is rm, increment temp;
	decide on temp;

volume exits from rare rows

to try-open (rm - a room): if rm is tried, now rm is tried-then-opened;

to say note-won:
	if number of dirsolved directions is 0, continue the action;
	if number of dirsolved directions is 4:
		say ". You sense the main action is here, now, since you've tidied up everywhere else";
		continue the action;
	say ". You've already figured what to do to the [list of dirsolved directions]";

definition: a direction (called di) is dirsolved:
	if the room di of location of player is solved, yes;
	no;

to say note-blocked:
	if number of dirblocked directions is 0, continue the action;
	now print-room-block is true;
	say ". Currently, you're a bit stuck because [list of tried rooms]";
	now print-room-block is false;

rule for printing the name of a room (called rm) when print-room-block is true:
	say "[block-descrip-text of rm]";

definition: a direction (called di) is dirblocked:
	if the room di of location of player is tried, yes;
	no;

to say note-okay-now:
	if number of dirokaynow directions is 0, continue the action;
	say ". You feel like you should be able to go [list of dirokaynow directions] now";

definition: a direction (called di) is dirokaynow:
	if the room di of location of player is tried-then-opened, yes;
	no;

volume general stuff

book which number

to decide which number is rope-and-hope: decide on (boolval of sco-rope-ruts) + (boolval of sco-hope-huts);

book to decide whether

to decide whether (ru - a rule) is spaceable: yes; [annoying space breaks in inform]

to decide whether good-say-guess: no;

to decide whether rhyme-mechanism-known:
	if current-score > 0, yes;
	no;

section mostly VVFF dependent stuff with Dean Duggan

to decide whether too-distracted: no;

to decide whether immediate-attention of (ru - a rule):
	no;

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

to decide whether (r1 - a room) and (r2 - a room) are gong-adjacent:
	if r1 is adjacent to r2, yes;
	no;

this is the stuck-right-now rule: do nothing;

book rules

this is the disable-learner-options rule: if player does not have leet learner, say "You decide to take the leet learner before exercising any of its options." instead;

this is the narrative-checking rule: make no decision;

this is the game-specific-backdrop-check rule: [wry wall in VVFF, maybe put in the rick ride in CSDD]
	do nothing;

There Those Dare Doze Definitions ends here.

---- DOCUMENTATION ----
