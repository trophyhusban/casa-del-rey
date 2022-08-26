// Lobby choice
*  [Look around for anyone interesting]

VAR gloria_introduced = false
VAR monica_talk = false
VAR monica_knows = false
VAR monica_secrets = false
VAR monica_betrayed = false
VAR gloria_tricked = false

=== gloria_intro ===
Amber reluctantly sits down at a nearby table and begins to survey the crowd of ghosts.

Amber’s eyes land on a tall pale woman dressed in a modest green thigh-high dress talking rather quietly towards a smaller male in a black suit. Her shoulders bounce as she laughs and as the woman turns towards Amber’s direction, she can see very clearly the large sparkling Ruby Amulet resting on her chest. The woman walks rather gracefully over to Debbie as the two begin to talk.

* [Talk to them, maybe they can help you out] “There is no way in hell I’d wanna talk to her,” Amber mumbles.

*[Wait until she leaves, then ask Debbie about her]

-
Amber keeps her eyes on the two as the woman shows off her bright smile to Debbie, who appears rather uncomfortable. Debbie shakes her head and the woman’s smile fades. As she turns to walk away, she spots Amber staring at her.

Her face quickly turns into one of disgust as she walks away and into the elevator, disappearing from sight as the doors close.

~gloria_introduced  = true

-> something lobby

//Lobby Choice
{
-(gloria_introduced ==true)
*[Ask Debbie questions about Gloria]
}
=== crystal_questions_debbie ===

Amber walks up to Debbie. “Can you tell me more about the woman in the green dress?” She asks. 

“Oh! That’s Gloria Ashaben, what would you like to know about her?”
->crystal_questions_options
===crystal_questions_options===
* [Ask what they were talking about] 
“What were the two of you talking about?” 

“She was just asking about Monica White seeing if I knew anything about her.” Debbie lets out a sigh. “But between you and me, Gloria is always out trying to create drama for no reason. Loves to spread gossip, that one.” 
->crystal_questions_options

* [Ask where you can find her] “Where is she usually?”

“Gloria has a room upstairs where you can find her,” Debbie replies.
->crystal_questions_options

*[Ask about her amulet] “What’s up with her jewelry?”

“Oh, Gloria loves over-accessorizing.” Debbie pauses for a moment before her eyes slightly widen. “She’s has plenty of jewelry in her room. That’s nothing,”

->crystal_questions_options

*[Ask about Monica White]

“Well, few think that Monica White is a troublemaker, I think she’s unique, but she is constantly on the lookout for new things to hoard. It’s hard to miss her: she wears a really tall pointed hat. It doesn't help her with the rumors, but many of us think it’s just for show. If you want to talk to her, I’d suggest looking around the gift shop. She’s really nice, but just,” she pauses to think for a moment, “different.”

->crystal_questions_options

*[Thank Debbie and leave] “Thanks for helping out.”

“No problem!” She says. “Oh, and If you want to talk to her directly, she’s located in room 213. On the 2nd floor.”

~monica_talk = true

-> something lobby



=== gift_shop ===


Amber enters the relatively small gift shop filled on the sides with various stuffed animals and knick-knacks with the Casa del Rey name and logo on them. Only two aisles fill up the space between Amber and the cashier, who has a blank look on his face, seemingly deep in thought or indifference. It’s hard not to notice the large comically pointed hat peeking through the top of the middle aisle.

-> gift_shop_options



=== gift_shop_options ===

* [Approach the cashier] Amber shakes her head. “Looks like he really doesn’t want to be bothered.”
->gift_shop_options  

{-(monica_knows == true)
*  [Go talk to the witch] 
-> monica_intro
}

+ [Go back to the main room]
-> lobby


== monica_intro===
Amber walks up to the aisle where the witch hat is poking through. As she spots the witch, her mouth immediately puckers in and she cringes at what she sees. Monica White, the self-proclaimed witch. A young woman, wearing a comical witch hat and a set of matching black robes that covers her olive skin. She adjusts her oval glasses, turns to stare at Amber, and breaks out into a huge smile. 

“Oh my god, hi! An actual living person!” Monica rushes over to greet Amber who instinctively takes a step back. “Sorry, I’m Monica White. How can I help you?” She says eagerly. 

->monica_intro_questions



== monica_intro_questions===
* [Ask her what she’s doing] “What are you doing?”

“Oh, just gathering ingredients for my next spell! You see, as a witch, I’m trying to make a ritual that will make me extremely desirable. That way, I can live this life in luxury like most of the well-off individuals here! Unfortunately, they don’t have unicorn blood, so I’m trying to find a substitute…” Monica trails off looking at the aisle next to her. 


“Okay,” Amber says skeptically.
->monica_intro_questions

* [Ask her how she’s shopping here] “Do you have money to shop here?”

“Oh, we don’t use money anymore. Usually what we have is traded but not many people want anything in this store anymore. Bill usually lets me take what I want; we’re best friends. Isn’t that right Bill?” She stands on her tippy toes and waves over to the cashier who doesn’t reply. “He’s usually shy like that.”
->monica_intro_questions
* [Tell her that Gloria wants gossip about her] “Gloria is out to get you.”

“Oh?” Monica tilts her head to the side. “She’s always been out to get me, so it’s nothing new. I haven’t done anything wrong.” Monica shakes her head and looks off in the distance. “If only I could do something to knock Gloria out of her high pedestal.”
~monica_knows  = true

->monica_intro_questions

{
-(monica_knows == true)
* [Convince Monica to work with you] “What if I helped you?” 

“How would you help me?” Monica asks. 
“Is there anything you really want from Gloria?” Amber asks. 
“Well, there are those diamond earrings I see her wear all the time” Monica mumbles to herself. 
Amber smiles wide. “Well, if Gloria leaves her room to go after you, I can sneak in and take the earrings.” 
Monica looks at Amber in confusion. “What do you get out of this?”

“I need a ruby crystal for a ritual,” Amber confesses. 
Monica’s face brightens with a huge smile. “Oh! A fellow witch! Okay, I will be waiting for Gloria in the lobby. Meet me there when you’re done.”


Gloria walks off with a pep in her step, followed shortly by Amber.

~monica_secrets   = true
}
-> Lobby


//2nd floor Option
{-(monica_knows == true)
*  [Go to Gloria’s room] 
-> gloria_room
}

=== gloria_room ===

Amber walks up to Gloria’s room and knocks on the door. “Just a moment!” Gloria says from behind the door. Shortly after, she opens the door in a different dress and accessories than what she wore earlier. Taking a look at Amber, she scoffs and closes the door.

{
-(monica_secrets  == true)
* [Tell her you have gossip] “I have some gossip about Monica White.”
}
{ -(monica_secrets  == false)
* [Lie to her and tell her you have gossip] “There’s no way I’m risking lying to this woman.” Not knowing what to do, Amber walks away from the door.

-> 2nd Floor
}

+ [Walk away] Amber walks away from the door.

-> 2nd Floor

-

After a short moment, Gloria opens the door again. “Go on.” She says and looks down at her. 


* [Tell her Monica is downstairs] “Monica White is looking for you. It seems like she wanted to confess something. I’m not entirely sure what though, she’s downstairs if you want to talk to her.”

Gloria smiles and lets out a short laugh. “About time, I always knew she was up to something.” She shoves past Amber as she moves out of sight. Quickly, Amber sticks her foot out to prevent the door from closing

* [Tell her Monica is trying to steal from her] “Monica tried to get me to steal from you. I told her I won’t but she really wanted a pair of matching diamond earrings and begged me to steal from you.”

-> gloria_betray

-

Amber looks around one final time before entering the room that Gloria had left open. As she enters,Amber squints and shakes her head because of all the shiny decorations in the room. Amber speed walks towards what looks like Gloria’s makeup table and begins rummaging before pulling out a large, bedazzled box.

* [Open the box] Amber opens the box and immediately spots the ruby necklace alongside other jewlery pieces and takes it. 
-

* [Get the earrings] Amber takes a pair of matching diamond earrings.

* [Leave before she’s caught] “I won’t do that to her,” Amber mutters, taking a pair of diamond earrings.

-  

Amber quickly closes the box, places it back to where it belongs and leaves the room. As she closes the door, Gloria comes out around the corner. “Oh, you’re still here.” She sneers before pushing past her and entering her room.

~gloria_tricked  = true

-> 2nd floor


===gloria_betray===

Gloria’s face brightens with the news. “I knew it!” She whisper-yells. “I knew that woman was a thief!” She looks past Amber for a brief moment before looking back at her. “Well, I’m a dignified woman who helps those that help me. What can I do for you in return for this information?”

* [Ask about to have the ruby amulet] “I saw that you were wearing this beautiful ruby amulet earlier, mind if I have it?”

“Oh sure!” Gloria exclaims. “Give me one moment.” Gloria enters her room for a moment. Once she comes back, Gloria gives the amulet to Amber. “This will go lovely with your,” she pauses for a moment, “pajamas. Now, time to get Monica shunned!” Gloria says before making sure her door is closed and walks away.

~monica_betrayed  = true


-> 2nd floor

//Lobby Option
{
-(gloria_tricked ==true)
*[Find Monica]
}
===monica_jewlery===

Amber looks around and spots Monica sitting down alone at a table. Monica spots Amber as she begins to walk closer and gives a huge smile. 

“Here are the earrings” Amber says as she places them down at the table. Monica lets out a big smile. “Thank you so much! This will go great with the next spell I’ll be working on!”

Monica bounces up from her seat and give Amber a big hug before speed walking away and out of sight.

-> Lobby


//Lobby option
{
-(monica_betrayed ==true)
*[Find Monica]
}
===monica_shunned ===

As Amber looks around to find Monica, her voice echoes throughout the room. “Please, somebody, talk to me!” She yells as she makes her way around the room. She walks up to another ghost and goes to touch her, but before she could make contact the ghost steps back and walks away, not even acknowledging her presence. Monica looks around frantically and spots Debbie and begins to walk her way. As Monica begins to walk however, Debbie turns and looks the other direction. 
With tears in her eyes, Monica looks over at Amber. “Please,” she whispers loud enough for Amber to hear.

*[Talk to her] Amber shakes her head and looks away.

*[Look Away] Amber looks away.

-

Monica lets out a quiet sob before going upstairs, out of sight. After a moment of silence, Amber lets out a strained breath of air. “I’m sorry,” she whispers.

-> Lobby
