LIST ritual_items = candles, charcoal, stones

LIST soup_ingredients = onion, cheese, rat, liver, butter, oil

LIST misc_obj = gloves

LIST locations = giftshop, restaurant, parentsroom, penthouse, kiosk, ghostroom, lobby, landing,  everywhere

LIST inventory = (none)

~inventory = ()

VAR currentlocation = lobby
VAR currentFloor = 1

VAR avaialbleLocations = (everywhere, giftshop, kiosk, restaurant)

VAR opened_inventory = false
VAR in_convo = false

// Burns variables

VAR saw_burns_intro = false
VAR knows_to_look_for_gloves = false
VAR has_gloves = false
VAR asked_burns_where_to_look = false

// charcoal variables
VAR grabbed = false
VAR cookscore = 0 
VAR met_chef = false
VAR chefs_name = false
VAR storm_out = false
