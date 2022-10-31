Version 1/221007 of There Those Dare Doze Definitions by Andrew Schultz begins here.

"This should briefly describe the purpose of There Those Dare Doze Definitions."

volume basic definitions

to say shows: say "[']Ware-Woes-Share Shows"

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

to decide which number is dave-score:
	decide on (boolval of sco-rave-round) + (boolval of sco-pave-pound) + (boolval of sco-wave-wound) + (boolval of sco-save-sound) + (boolval of sco-crave-crowned)

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
