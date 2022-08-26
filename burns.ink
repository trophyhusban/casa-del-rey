=== enter_burns_room ===
~in_convo = true
{saw_burns_intro == false:
    -> burns_intro
}

Amber knocks on the door to Burns' room. {In an instant|After a second|In a moment}, he answers the door.
"Do you have them?" He asks her.

{inventory ? gloves:
    -> give_burns_gloves
}
{asked_burns_where_to_look == false:
    "No," Amber says. "Do you know where they could be?"
    "I have no idea. I could only see from in this room. I can sense that they are nearby." He looks out the window with a frown. "Maybe Debbie's seen them?"
    * [Go look for them] "Okay, I'll talk to her." Amber leaves.
    
    ~ asked_burns_where_to_look = true
    ~currentlocation = landing
    ->top_loop
- else:
    "Did you talk to Debbie?" Burns asks.
    "Not yet," Amber says.
    * [Go talk to her] Amber leaves.
    ~currentlocation = landing
    ->top_loop
}


=== burns_intro ===
Amber knocks on the door to room 203, shifting on her feet. She has a taut look on her face.
"Hello?" Someone calls from inside. Something blocks the light coming through the peephole. "Yes, come in!"
Amber reaches for the handle, but it won't open. "Um, it's locked. Like every hotel room?"
The person inside opens the door. "Right. Sorry." He is a round, kind-looking man with a large white mustache. He peers at Amber with raised eyebrows through his pince-nez, which is connected by a chain to his tweed coat. Like the other ghosts, he has a whitish tint to him and he was ever so slightly see-through.
Amber cranes her neck, looking past him to get a look at the room.
He turns around too, looking between Amber and his room.
"Um, come inside!" He says, opening the door and stepping back.

What should Amber do?
* [Go inside]
She <>
* [Thank the man]
Instead, she <>
* [Introduce herself]
Instead, she <>

-
goes inside, pushing past the ghost.
An open suitcase is on the floor overflowing with clothes. Another one contains an array of candles of different shapes and colors. Burnt out candles have melted into the nightstand next to stacks of paper (drawings of someone?) and a thick ledger. The desk has two pots over two portable stoves, a vat of beeswax, and supplies to make candles. The door to the bathroom is left open with shaving supplies, soaps, and other toiletries littering the vanity and the top of the toilet tank. Amber's parents, and all their stuff, are nowhere to be seen.
"Where are my parents?" Amber asks.
"Um..." the ghost says. He shrugs. He looks at Amber for another second, adding everything up. "Are your parents also alive?"
Amber thinks for a second. "Yes, though that's a weird way to word it."
"Then you won't be able to see them here." The ghost looks like he's mourning Amber's loss for a second before his face lights up. "You wouldn't happen to be looking for candles, would you? For the ritual? To get back to the world of the living?"
"Yeah, I am looking for candles. I think I need five."
"Well lucky for you, I happen to sell candles!" The ghost offers Amber his hand.
She shakes it warily.
"I'm Burns."
"Amber. How much for five?" Amber pats her pants. She takes her phone out of her left pocket. "Damn it! I left my wallet at home. Well, in my hotel room."
"That's alright," Burns says, "I only take British pounds anyway. I assume you wouldn't have had any of those on you in any case."
"Nope. And I'm assuming you won't just like, lend them to me, so I can make it out of here alive, or anything."
"Candles aren't the kind of thing you can exactly return after using them. Though I suppose there could be another way."

* [Wait for him to explain] Amber says nothing. She gestures for him to go on.
"<>
* [Ask him what he means] "What do you have in mind?"
"<>
* [Ask him about trading for the candles] "Do you mean like a trade?"
"Yes, a trade. <>
-
Perhaps if you... would listen to my tragic backstory," he says dramatically.
"Sure. Whatever," Amber says. She pulls the chair out from the desk and sits on it, pushing some clothes aside in the process. "Better be short."
Burns smirks. "It all started—" He points his arm towards the ceiling and looks at his extended fingers, "when I was alive. When <em>we</em> were alive." He loses the pose. "I, a candle maker, ended up becoming quite close with a beekeeper, Alfie." He sighs and looks at the floor. "There was some family drama that compelled us to leave for America. We ended up moving a lot after that. Sometimes Alfie would take his bees with him, and sometimes he would give them to someone else before leaving. It's not easy, you know, traveling across America on horseback with hives of bees and beekeeping gear." He pauses, studying Amber.

* [Interrupt him.]
-> burns_interrupt_intro
* [Let him continue.]
-
"Go on," she says, "don't let me stop you."
"We found a place in the woods around Santa Cruz, where he could keep his bees and where I could make candles from the wax. Everything was good. We had each other, we had privacy, and we had the beautiful forest. Our time together was as sweet as honey and as bright as candlelight.
"One weekend, we stayed here at the Casa del Rey to sell our goods at a local farmer's market in town. Alfie had gone out for a walk, so it was just me. I was trying to make a few more candles before we had to go out, so I had both my burners running." Burns walks to the desk and picks up one of the metal pots. "I accidently spilled hot wax on my hands, so I ran to the bathroom to wash it off. While I was out of the room, a fire started. I think one of the burners fell over" Burns takes one of his white gloves off to reveal a scarred hand. "Before I knew what was happening, I was dead. The candles were safe in my suitcase.
"Ever since then, I was separated from Alfie, waiting in this cursed hotel room for someone to buy my remaining candles. Maybe then I can move on."
What should Amber do?
-> burns_intro_questions

=== burns_intro_questions ===
* [Ask why she can't just take them off his hands for free] "Why can't you just give them to me? Won't that fulfill your unfinished business?"
"No." Burns shakes his head. "Because I was a merchant when I was living, it has to be through commerce that I get rid of them."
"Wait but why does it have to be British pounds if you were a merchant in Santa Cruz?"
"Because..." Burns looks away. "Because that's what I'm used to."
-> burns_intro_questions

* [Ask if she can just steal them] "What if, in theory, you suddenly realized that they were all missing? Like if someone stole them without you noticing? Wouldn't that be enough for you to move on?"
"That won't work." Burns runs a hand through his mustache. "I think that would only make my unfinished business harder to finish. If not being able to sell them is what is keeping me here, then surely having them stolen will only make me more unable to sell them."
-> burns_intro_questions

* [Ask if that is really what is keeping him there] "Are you sure that the candles are what is keeping you here? Are you sure it's not something else, like your dead boyfriend?"
<em>"Boyfriend?</em> I wouldn't call him that."
"Well, whatever, dude, the guy you're clearly in love with who you died apart from and whose gloves might still be in the hotel."
"Well if you found the gloves belonging to that person then it would certainly be a good trade for some of my candles. Maybe then I will be able to move on."
"Sounds good." Amber stands up from her seat. She leaves without saying goodbye.

~ knows_to_look_for_gloves = true
~in_convo = false
~currentlocation = landing
->top_loop

=== burns_interrupt_intro ===

"So you died apart from your boyfriend and are stuck selling these candles forever because no one here wants any," Amber says matter-of-factly.
Burns looks away. "He wasn't my <em>boyfriend.</em> Don't you want to hear how I died?"
"Not really. What I'm getting is that you want me to find something that reminds you of Alfie that would be a suitable trade for the candles."
Burns looks at the floor. "That would be wonderful." He crosses his arms. "We were staying here in Santa Cruz proper so we could sell honey and candles at a local farmer's market. He brought his beekeeping gloves to wear at our booth. Something tells me they're still here in this hotel, but I'm stuck in this room because I died here, so I can't go out and find them. That would be a suitable trade for a few of my candles."
"Five."
"What?"
"I need five candles for the ritual."
"Yes, five candles." He nods.
"Okay." Amber stands up from her seat. "I'll be right back."

~ knows_to_look_for_gloves = true
~in_convo = false
~currentlocation = landing
->top_loop

// so this should be enabled if you are talking to Debbie in the lobby and if you have already spoken to Burns but have not yet given him the gloves
=== get_gloves ===
~in_convo = true
"Hi!" Debbie says when Amber approaches. Her eyebrows are raised and she's avoiding eye contact.
"Hey," Amber says. "Do you have a lost and found somewhere?"
"Yeah, right over here actually." Debbie bends down and picks up a plastic bin, putting it on the counter. "Did you lose something already?"
"No. I'm actually picking something up for someone else."
"Okay. Everything here is ancient anyway, so please have a look."
"Thanks." Amber lifts the bin and puts it on the ground. She takes the lid off and has a look. It's full of shit.
-> lost_and_found

== lost_and_found ===
{!What should Amber take?}

* [A set of black socks with cat faces on them]
Cute, but not her style.

* [A silver spoon]
It's become brown. Amber doesn't want to touch it.

* [An old leather bound notebook, some of the pages sticking out]
Amber is excited to read through some stranger's secrets, but everything is in Russian.

* [A pair of beekeeping gloves]
Yes! Just what she was looking for.
The thick, white gloves each have a mesh that extends past Amber's elbow. Burns' boyfriend must have had long arms.
Amber takes the gloves.
~get(gloves)

* [A pair of broken glasses]
Amber tries them on and immediately takes them off, not wanting to risk a headache.

* [Car keys]
The car keys are attached to a plastic Hello Kitty keychain.
"Um, these seem important," she says to Debbie.
Debbie shrugs. "If they were important, the person who lost them would have come back for them already."

* {inventory ? gloves} [Leave] "Thank you," Amber says, putting the bin back on the counter. "This is all I need."
"Glad I could be of service."
~in_convo = false
-> top_loop

- -> lost_and_found

=== give_burns_gloves ===
* [Give Burns the gloves] Amber shows Burns the gloves she got from Debbie. "Yeah I just got them from lost and found. Kind of an obvious place."
Burns stares at the gloves in her hands before slowly reaching for them. He touches them tenderly. "I don't actually know what to do with these," he says. "Thank you so much."
"No problem." Amber looks at Burns for a moment before he realizes.
"Oh, of course!" He bends over and takes five candles from the suitcase handing them to Amber.
"Do you have any black ones?" She asks. "That would go better with the whole ghostly ritual aesthetic."
"Um, yeah I do." He takes five black ones from his suitcase and gives them to her. "Thank you so much."
"Yeah it's no problem."
~use(gloves)
~get(candles)
~in_convo = false
// at this point amber leaves the hotel room and goes back to the second floor location
-> END









