INCLUDE burns_variables.ink
INCLUDE burns.ink

-> enter_burns_room

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

* [Ask her what is going on.] "What is happening here? Why is it so dark?"

* [Ask her what floor this is.] "What floor am I on? How did I get here?"
"The first floor," the woman says. <>

* [Ask her about the AC.] "Can you turn the AC down? It's freezing in here."
"The air conditioning isn't on," the woman says. <>

- -> debbie_conversation

=== debbie_conversation ===
"You don't belong here."

The girl just looks at her. "What, do you think I'm twelve?"

"That's not what I meant." The woman looks distant, frightened almost. She offers the girl her hand, palm up. She looks at it for a few moments.

* [Shake it.] The girl goes in for a hand shake, her fingers awkwardly forming something resembling a friendly gesture.
She can't grip the woman's hand, and instead goes right through it.

* [Give her a high-five.] The girl goes in fast for a high-five.
She goes right through her hand, hitting the black granite countertop.

* [Fist-bump her.] The girl goes for a fist-bump.
She awkwardly jabs her fist forward and she goes right through the woman's hand, recoiling when she sees her fist inside the woman's wrist.

-
The woman looks apologetic. "Do you see why you don't belong here?"
"Am I dead?" the girl blurts. She puts her hand to her heart, then her neck, and then her fingers to her wrist. She doesn't know what to believe.
"No. You've entered the world of the dead, through that elevator there. We keep meaning to have that extra button removed, but maintenance hasn't gotten around to it yet."
After a moment of processing, she put her palms to her face. "I'm such an idiot. For real."
"Don't fret! There is a ritual that you can do to get back to where you belong. You'll just need to find a few things."

// maybe this is a good moment for more description?
The girl looks behind her, taking in the lobby. The fountain, in the center of the room, gurgles. In the corners of the room are a gift shop, a seating area for a restaurant, a lounge, and an office. She  turns back to the woman at the kiosk, and then looks at her hands.

* [Stay calm.]
How is she supposed to stay calm?

* [Panic.]

-
Her breathing quickens as she looks around. She makes eye contact with a few strangers.
"Hey," the ghost says. "Just breathe, that's what the living does, right?"
She breathes. She smiles, processing the joke. "Yeah, that's generally what we like to do."
"What's your name?"
"Amber." Her name is Amber.
"I'm Debbie." After a pause, she goes on. "I think you're gonna be alright. Do you want to hear about the ritual?"
"Yeah."
"So you need to find five candles, some charcoal, and a precious stone, okay? You should be able to find them around here."

-> ask_about_ritual_items

=== ask_about_ritual_items ===

* [Ask about the candles.] "Where would I find candles?"
"There should be a man by the name of Burns who has some candles. He's been staying here a while, trying to sell those candles, but no one seems interested. He's staying in room 203"
"That's the room my parents are staying in. Me and my sister are next door."
"Great, so you know where it is!"
"I guess I do."

* [Ask about the charcoal.]
"You should be able to find some in the kitchen. The chef there can be kind of a stickler, but if you get on his good side, he will probably give you some. Feel free to knock on the kitchen door."
"That should be doable."

* [Ask about the precious stone.]
"There should be an elegant-looking woman around here somewhere with way too much jewelry for her own good. I bet you can get her to part with some of it if you're lucky!"
"That sounds actually painful. But thank you for telling me."

* [Thank Debbie for helping out.]
"Thank you!"
"Of course! Please ask me if you need any more help>"
Amber nods, turns around, and looks at the lobby.
-> end_of_scene

* [Start searching for the stuff Debbie mentioned.]
Amber turns around before deciding to thank Debbie, feeling slightly embarrassed, and walks away.
-> end_of_scene

- -> ask_about_ritual_items
-> END

== end_of_scene ==
-> END
// so here we would divert into the rest of the story







