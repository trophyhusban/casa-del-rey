// gift shop (1st floor )
// ambers parents room (2nd floor)
// restaurant (1)
// 3rd floor penthouse
// elevator/stairs (both)
// kiosk (1)
// named ghost room (2)


== function can_navigate(loc) ==
~return avaialbleLocations ? loc && currentlocation != loc && not in_convo

=== navigate(->ret)
{
- not in_convo:
Amber is currently on the {currentFloor==1: first} {currentFloor == 2: second} floor.
} 
+ {can_navigate(parentsroom) && not (inventory ? candles)} [Enter room 203.]
    ~currentlocation = parentsroom
+ {can_navigate(ghostroom) && not (inventory ? stones) && gloria_introduced} [Enter room 213.]
    ~currentlocation = ghostroom
+ {can_navigate(lobby)}[Enter the lobby.]
    ~currentlocation = lobby
+ {can_navigate(restaurant) && not (inventory ? charcoal)}[Enter the restaurant.]
    ~currentlocation = restaurant
+ {can_navigate(kiosk)} [Visit the kiosk.]
    ~currentlocation = kiosk
+{can_navigate(giftshop) && not (inventory ? stones)} [Go to the gift shop.]
    ~currentlocation = giftshop
+ [View inventory.]
    ->display_items(ret)
+ [Review notes.]
    ->display_notes(ret)
+ {not in_convo}[Go {currentFloor == 1: up} {currentFloor == 2: down} a floor.]
    -> elevator(ret)
- ->ret

== function location_describe() ==
{ currentlocation:
    - lobby:
        The lobby of the hotel is elegant, if a bit dated, with luxurious couches and tables. The bright marble floor shines. The fountain bubbles softly in the center. Various ghosts come and go, but largely these spirits pay her no attention.
    - restaurant:
        The restaurant looks fancy, almost too fancy for Amber to feel comfortable. The maroon velvet curtains drape atop the cream damask wallpaper and neatly set tables draped in white linens. The menu visible by the entrance boasts fine French cuisine. 
    - kiosk:
        The kiosk desk's polished wood surface feels strange but familiar, like the living room of a distant relative. Debbie looks up from her work and smiles.
    - giftshop:
        The giftshop is small, but packed full of various trinkets, all with the Casa del Rey logo on them.
    
    - ghostroom:
        Gloria's room, room number 213. The number on the door catches the light with its shine.
    - parentsroom:
        The room number, 203, is embossed on the door in gold numbering, its color matching the lock, though both appear tarnished with age.
    - landing:
        The hallways of the hotel rooms are long, wallpapered pattern stretching out before her. A number of doors stand out to her.
        
}

=== elevator(->ret) ===
Amber eyes the old elevator and the stairs warily. She presses the button for the elevator and waits, frowning slightly at the mechanical thunk as it powers up.
{currentFloor == 1:
    ~currentFloor = 2
    ~avaialbleLocations -= (giftshop, restaurant, kiosk, lobby)
    ~avaialbleLocations += (parentsroom, ghostroom)
    ~currentlocation = landing
    She exits the elevator at the second floor.
 - else:
    ~currentFloor = 1
    ~avaialbleLocations -= (parentsroom, ghostroom)
    ~avaialbleLocations += (giftshop, restaurant, kiosk, lobby)
    ~currentlocation = lobby
    She exits the elevator, back on the ground floor.
}
- ->ret
// move to a 2nd floor landing storylet

=== top_loop ===
{location_describe()}
<-storylets(->top_loop)
<-navigate(->top_loop)
->DONE

=== storylets(->ret)===
{currentlocation ? restaurant && not storm_out: <-kitchen }
{currentlocation ? restaurant && storm_out: <-apologize }
{currentlocation ? parentsroom: <-enter_burns_room }
{currentlocation ? kiosk && knows_to_look_for_gloves && not give_burns_gloves && not (inventory ? gloves): <-get_gloves}
{currentlocation ? lobby && not gloria_introduced: <- gloria_transition}
{currentlocation ? giftshop: <- gift_shop}
{currentlocation ? lobby && gloria_introduced: <- crystal_questions_debbie}
{currentlocation ? ghostroom && monica_knows: <- gloria_room}
{currentlocation ? lobby && gloria_tricked: <- monica_jewelry}
{inventory ? candles && inventory ? charcoal && inventory ? stones: -> goto_penthouse}
// {inventory ? candles && inventory ? charcoal: <- ending storylet here }
->DONE