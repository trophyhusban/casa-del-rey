// display items
// display "journal" with information learned

=== function get(x)
~inventory += x

=== function use(x)
~inventory -= x

=== display_items(->ret) ===
{not opened_inventory && inventory: 
    All of the items Amber has held onto. 
    ~opened_inventory = true
}
{not inventory:
    Amber does not have anything on her.
}
 + {inventory ? gloves} Gloves[]
 A long pair of thick, white beekeeping gloves. They are too long for Amber.
 
 + {inventory ? candles} Candles[]
 A set of five, black beeswax candles. They have a pleasant, if earthy aroma.
 
 + {inventory ? charcoal} Charcoal[]
 A small handful of charcoal. It leaves dark smears on Amber's hands.
 
 + {inventory ? stones} Ruby[]
 A small Ruby. It reminds Amber of her sister.

+ {inventory ? butter} Butter[]
A stick of unsalted, freshly made butter softening in its wrapper.

+ {inventory ? cheese} Cheese[]
 A wedge of high quality parmesan cheese. It has a distinct aroma.
 
+ {inventory ? liver} Liver[]
A liver of unknown animal origin, found somewhere in the kitchen.
 
 + {inventory ? oil} Oil[]
 A bottle of fine, extra virgin olive oil. The cap is slightly slippery.
 
 + {inventory ? onion} Onion []
 A single large, yellow onion. A piece of skin flakes off as it is jostled.
 
 + {inventory ?  rat}  Rat[]
 A dead rat. 

+ [Stop looking.]
 
 ~opened_inventory = false
   ->ret
- ->display_items(ret)

=== display_notes(->ret)===
//
    +  {saw_burns_intro} [Burns]
        Burns is the kind candle vendor with a large white mustache. He is wearing a tweed coat with a pince-nez attatched to the by a chain.
    
    + {met_chef} [Chef]
        The chef {chefs_name: , Sam,} is a tall, thin, well groomed man in pristine chef's uniform. He is very opinionated about work.
    + {knows_to_look_for_gloves && !has_gloves} [Obtaining gloves.]
        {asked_burns_where_to_look:
            She needs to go get those gloves, they're lost somewhere in the hotel.
        - else:
           She needs to find those gloves, though is not sure where they are.
        }
    + [Debbie]
        The kind ghost who works at the kiosk in the hotel lobby. 
    // options here for ruby storyline
        // + [Gloria]
    //     A ghost who ...
+ [Stop reading.]
    ->ret
- ->display_notes(ret)

