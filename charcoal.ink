VAR onion = false
VAR oil = false
VAR butter = false
VAR rat = false
VAR liver = false
VAR cheese = false
VAR grabbed = false
VAR cookscore = 0 

Amber strolls into the kitchen and feels the humid air of the kitchen sweep over her, which is followed shortly by a lingering scent of caramelizing onions and rosemary. A tall, thin ghost looms over her, wearing a perfectly pressed chef’s outfit to compliment his overly groomed mustache. She isn’t sure which one he spends more time on.

“What are you doing here?!” He howls at her. “The kitchen is no place for children! Get out!”

*[Tell him off!]
->pissbaby
*[Be polite.]
->pissbaby

===pissbaby===
“Dude, chill out, it’s just a 16-year-old in a kitchen. What, are you gonna piss your pants? Maybe shit a little? Gonna cry about it? Huh? Little piss baby?”

The ghost turns a noticeable shade of red. “How dare you talk to me like that?! Your generation has no respect for their elders these days. When I was your age, I would have been beaten for saying something like that!”

Having heard this speech countless times before, Amber tunes out the ghost as her eyes begin to wander around the kitchen and set themselves upon a charcoal furnace, powered by the same charcoal that she needs for the ritual.


*[Get the last word]
->stormout

*[Calm down and ask for the charcoal]
->apologize

===stormout===
”Well maybe if your generation didn’t screw mine up so bad, we wouldn’t be like this! And don’t give me that speech about working for a living. I won’t be able to buy a house until I’m like, fifty, and you could get one making minimum wage when you were my age, not to mention that a college education was basically free compared to what it is now. Go screw yourself, dude.”

And with that, Amber storms off.
->DONE

===apologize===
“Hey, you know what? You’re right! My generation is really spoiled. I think I could learn a thing or two from you. How about you put me to work and pay me with some of that charcoal you got there?”

Unable to refuse an opportunity to teach the youth about the wonders of capitalism, the ghost happily accepts. 

“Well, then allow me to introduce myself. My name is Sam, and I have been preparing food for guests since I was but a child. Since you seem to have learned your place, I think I would be willing to part with a few pieces of charcoal in exchange for a soup.” The ghost gestures to a tall cabinet stocked with all sorts of goods. “The pantry is over there. Get cooking, and I will give you the charcoal once you have earned it.”

Amber begrudgingly shuffles over to the pantry and opens it up to see a slew of different items, some of which would be perfect for a french onion soup.
->gettingfood

===gettingfood==

{
    -grabbed == true:
        *[That’s enough ingredients. Let’s cook!]
        ->cooking
    
}

*[Grab raw onions]
->grabonion
*[Grab olive oil]
->graboil
*[Grab liver]
->grabliver
*[Grab a dead rat]
->grabrat
*[Grab butter]
->grabbutter
*[Grab parmesan cheese]
->grabcheese


===grabonion===
    As Amber grabs the onions, a small pile of onion skin falls to the ground.
    ~onion = true 
    ~grabbed = true
    ->gettingfood

===graboil===
Upon grabbing the olive oil, Amber realizes that some has leaked onto the exterior of the bottle and has now made its way onto her hands. Relieved that she wears all black, she wipes it on her shirt, leaving an “invisible” stain.
    ~oil = true 
    ~grabbed = true
    ->gettingfood

===grabrat===
    Amber grabs the dead rat. For as snooty as he is, this chef doesn’t seem to take very good care of his kitchen.
    ~rat = true 
    ~grabbed = true
    ->gettingfood
    
===grabliver===
    Amber hesitates, then grabs the liver with a mischievous smile.
    ~liver = true 
    ~grabbed = true
    ->gettingfood
    
===grabcheese===
    Amber grabs the cheese. It’s a higher end wedge, possibly the best the local grocery store had to offer.
    ~cheese = true 
    ~grabbed = true
    ->gettingfood

===grabbutter===
    Amber grabs the butter. As the saying goes, “if it doesn’t taste good enough, add more butter!” 
    ~butter = true 
    ~grabbed = true
    ->gettingfood
 

===cooking===
Amber moves over to the cooking area, where she is greeted by a pot of boiling water and a hot pan, both sitting atop a stove. 
->cook 


===cook===
{
    -(onion == true && oil == true):
        *[Cook the onions and add them to the soup]
        ->cookonionoil
}


{
    -onion == true:
    *[Add the onions in raw]
    ->cookonion
   
}

{
    -butter == true:
    *[Add butter]
    ->cookbutter
   
}
{
    -cheese == true:
    *[Add the parmesan cheese]
    ->cookcheese
   
}
{
    -liver == true:
    *[Add the liver]
    ->cookliver
   
}
{
    -rat == true:
    *[Throw the dead rat in whole]
    ->wholerat
    *[Chop up the dead rat and sneak it into the soup]
    ->choppedrat
}
{
    -grabbed == false:
    *[That's enough. Present the soup!]
    ->presentsoup
    
}

===cookonionoil===
Amber begins to caramelize the onions using the olive oil, adding to the savory aroma of the kitchen. Once fully browned, she adds them to the pot.
    ~onion = false
    ~oil = false
    ~grabbed = false
    ~cookscore += 5
    ->cook

===cookonion===
 Amber hesitates, then throws the onions in raw. Cooking them in olive oil might have been a better move, but the chef doesn’t really deserve a good meal, does he?
    ~onion = false
    ~grabbed = false
    ~cookscore += 1
    ->cook

===wholerat===
    Unhappy with the smug look she saw on the chef’s face, Amber throws the rat in whole. This’ll definitely shut him up.
    ~rat = false
    ~grabbed = false
    ~cookscore -= 10000
->cook 

===choppedrat===
    Unhappy with the smug look she saw on the chef’s face, Amber chops up the rat and throws it in the soup. This’ll definitely shut him up.
    ~rat = false
    ~grabbed = false
    ~cookscore -=3
    ->cook  

===cookliver===
    A mischievous smile on her face, Amber throws the liver into the soup. The cook’s face will be priceless when he eats this.
    ~liver = false
    ~grabbed = false
    ~cookscore -=2
    ->cook 
    
===cookcheese===
    Without delicacy or grace, Amber adds the parmesan cheese to the soup. She must be getting sick of this whole 'cooking' thing.
    ~cheese = false
    ~grabbed = false
    ~cookscore += 2
    ->cook 

===cookbutter===
    Amber adds the best ingredient a dish could have. This will surely make it taste better.
    ~butter = false
    ~grabbed = false
    ~cookscore += 2
    ->cook

===presentsoup===
Content with what she has prepared, Amber brings her soup to the chef.

{
    -cookscore < -9000:
    The chef takes one look at the soup and immediately notices the dead rat floating at the top. 
    “What in God’s holy name do you think you’re doing?! This is an absolute disgrace to all chefs!”  
    Having already prepared for this exact interaction, Amber readies her defense. 
    “I don’t know what to tell you, buddy. You said that you would pay me charcoal if I made you soup. Well, here’s a soup, just like we agreed. You never mentioned the soup couldn’t have  a dead rat in it. Now, as your precious capitalism dictates, employees are given the fair agreed upon compensation when they accept a job. Are you going to tell me that this fundamental idea behind capitalism is flawed?”

The ghost looks away and mumbles to himself for a moment, then tosses some charcoal Amber’s way.

“Get out of here,” he says. “You’re fired.”
    ->DONE
    
}


{
    -cookscore > -90000 && cookscore <0:
The chef hesitates, then takes a bite of the soup. He struggles to fight back a gag, and looks at Amber with disgust. “You are a terrible cook,” he says, pointing a crude finger at Amber. “I’m not sure you deserve any compensation for this…whatever this is.”

Having already prepared for this exact interaction, Amber readies her defense. 
“I don’t know what to tell you, buddy. You said that you would pay me charcoal if I made you soup. Well, here’s a soup, just like we agreed. Now, as your precious capitalism dictates, employees are given the fair agreed upon compensation when they accept a job. Are you going to tell me that this fundamental idea behind capitalism is flawed?”

The ghost looks away and mumbles to himself for a moment, then tosses some charcoal Amber’s way.

“Get out of here,” he says. “You’re fired.”
->DONE
}

{
    -cookscore >=1 && cookscore < 7:
    Unimpressed, the ghost nonchalantly takes a bite. “Well, it’s about what I would expect from your generation. No passion, no talent. Maybe if you spent less time on your phone, you would be able to make something more than mediocre. Here’s your pay, as we agreed.” The ghost hands a piece of charcoal to Amber. 
    
    *[Tell him off]
    ->angerycharcoal
    *[There’s nothing to be said that will change this guy. Just leave.]
    ->contentcharcoal
}

{
    -cookscore >=7:
    The ghost takes one bite of the soup and falls to his knees. “Incredible!” he exclaims. 
    “This is the best soup I’ve had in ages, second only to mine! Please, tell me the recipe for this delicacy!”
    
    Having nothing to say to the ghost, Amber grabs the charcoal from the furnace and leaves.
->DONE  
}


    ===angerycharcoal===
    “You want to talk about mediocre? How about we talk about that stupid mustache of yours? You really think anyone gives a shit about how much gel you can manage to cram into that wad of hair glued to your face, you self-entitled prick?”
    And with that, Amber leaves with the charcoal.
    
    ->DONE
    
    ===contentcharcoal===
    
    Disappointed in humanity, Amber walks out, charcoal in hand.
    ->DONE




