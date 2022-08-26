INCLUDE burns.ink
INCLUDE variables.ink
INCLUDE inventory.ink
INCLUDE navigation.ink
INCLUDE charcoal.ink



-> intro

// the idea here is that Amber enters the ghost world and talks to the kiosk ghost. at this point, i could imagine letting the player ask her more questions, but this might work for now.
// there are no variables or anything in this file and it should not have to rely on any other file for it to work. at the end, it transitions to the lobby area, and the player can choose where they want Amber to go
=== intro ===
Someone new comes into focus: someone who doesn't belong here, someone warm, beating, bloody, someone human. She must be lost.

<em>Ding.</em>

// maybe this could use more description of the space? or maybe that should wait until later?
The elevator doors open and she walks out. She looks around as if seeing the place for the first time.
She stares at the woman behind the kiosk for a second before approaching her. She must be sixteen or so, in an oversized T-shirt, sweatpants, and flip flops. She looked exhausted, but not sleepy, a bad way for a human to be at one in the morning.
"Hi," the girl says to the woman at the kiosk, rubbing her arms with her hands.
The woman just stares back.
What should the girl do?


* [Ask her what is going on] "What is happening here? Why is it so dark?"

* [Ask her what floor this is] "What floor am I on? How did I get here?"
"The first floor," the woman says. <>

* [Ask her about the AC] "Can you turn the AC down? It's freezing in here."
"The air conditioning isn't on," the woman says. <>

- -> debbie_conversation

=== debbie_conversation ===
"You don't belong here."

The girl just looks at her. "What, do you think I'm twelve?"

"That's not what I meant." The woman looks distant, frightened almost. She offers the girl her hand, palm up. She looks at it for a few moments.

* [Shake it] The girl goes in for a hand shake, her fingers awkwardly forming something resembling a friendly gesture.
She can't grip the woman's hand, and instead goes right through it.

* [Give her a high-five] The girl goes in fast for a high-five.
She goes right through her hand, hitting the black granite countertop.

* [Fist-bump her] The girl goes for a fist-bump.
She awkwardly jabs her fist forward and goes right through the woman's hand, recoiling when she sees her fist inside her wrist.

-
The woman looks apologetic. "Do you see why you don't belong here?"
"Am I dead?" the girl blurts. She puts her hand to her heart, then her neck, and then her fingers to her wrist.
"No. You've entered the world of the dead, through that elevator there. We keep meaning to have that extra button removed, but maintenance hasn't gotten around to it yet."
After a moment of processing, she put her palms to her face. "I'm such an idiot. For real."
"Don't fret! I am sure there is a way out of here, just, um..." The woman opens a ledger on her desk and runs her finger down a column of names, looking for something that isn't there.

// maybe this is a good moment for more description?
The girl looks behind her, taking in the lobby. The fountain in the center of the room gurgles. In the corners of the room are a gift shop, a seating area for a restaurant, a lounge, and an office. She  turns back to the woman at the kiosk, and then looks at her hands.

* [Stay calm]
How is she supposed to stay calm?

* [Panic]

-
Her breathing quickens as she looks around. She makes eye contact with a few strangers.
"Hey," the ghost says. "Just breathe. That's what the living does, right?"
She breathes. She smiles, processing the joke. "Yeah, that's generally what we like to do."
"What's your name?"
"Amber." Her name is Amber.
"I'm Debbie." After a pause, she goes on. "I think you're gonna be alright. I just need to talk to someone."
"Okay."
"Please don't worry, I have an expert I can talk to! Just wait here for a moment." Debbie starts rifling through her desk, looking for a name, or a phone number, or something. She seems completely absorbed in her task. Watching her, Amber notices her whiteish tint and the see-through quality of her form.

Amber locates a chair by a cluster of tables and sits down. She does not want to just sit and wait for Debbie to come back, but it's a good start.

* There's another way.

-
Amber listens.

* There's a ritual you can do.

-
Amber waits.


-> describe_ritual_items

// this would be a good point to add knowledge about the ritual/the ritual items to the knowledge inventory
=== describe_ritual_items ===
* Five candles
A candle salesman named Burns lives in room 203.

* Charcoal
From the kitchen. The chef believes in working for what one needs.

* A ruby
An elegant woman named Gloria should have an excess.

* -> end_of_intro

- -> describe_ritual_items


== end_of_intro ==

Amber got up and looked around suspiciously.
-> top_loop
// so here we would divert into the rest of the story






