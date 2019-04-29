"Sushi Chef" by Robert Clarke / SSML IT2

[ This is the 6th version of the story ]
The release number is 6.

[ Create a list of sushi requests that we want the player to prepare. Once they have made one, it is classified as done ]
Request is a kind of value. The requests are tuna sushi, salmon sushi, fried egg sushi. A request can be done or todo. It is usually todo.

[ Koma Sushi Restaurant, where the player starts, and where they will stay until they finish preparing all of the sushi ]
Koma Sushi Restaurant is a room. "A small, dimly lit restaurant that is the best in the town. A Gojira poster hangs on one wall and a furry Totoro watches you as you PREPARE the sushi."

Some rice is here. The description is "An important ingredient for preparing sushi." Some tuna is here. The description is "An important ingredient in maguro nigirizushi." Some salmon is here. The description is "An important ingredient in sake nigirizushi." Some fried egg is here. The description is "An important ingredient in tamago nigirizushi." Some fried tofu is here. The description is "An important ingredient in preparing inarizushi."

A Totoro is here. It is scenery. The description is "This Totoro has always followed you from one workplace to another." A Gojira poster is here. It is scenery. The description is "An iconic poster, that matches perfectly with the decor of the restaurant."

[ This object will always tell the player what they need to prepare. It doesn't handle the situation when there are no sushi left, but that isn't a problem because the player will be moved to another room ]
An order list is in Koma Sushi Restaurant. "There is an order list with a list of sushi to prepare." The description is "You have to prepare: [list of requests that are todo]";

[ Karaoke Bar, where the player ends up once they have finished preparing all of the sushi ]
Karaoke Bar is a room. "The second-best karaoke bar in town. It might not have the latest TVs and the microphones are a bit too heavy, but the choice of music is eclectic."

Understand "sing" as a mistake("In this story you can't sing. Why not try and add it yourself?")

[ Has the player prepared everything yet? We only want this check to be done when the player is in the restaurant, otherwise they will continue to see the same message even when they are in the karaoke bar ]
Every turn when the player is in Koma Sushi Restaurant:
	if there are no todo requests:
		say "[italic type]You finally finish your job and head out into the warm night. Your favourite karaoke bar awaits you.[roman type]";
		move the player to the Karaoke Bar.
		
[ New action: PREPARE something WITH something ]
Preparing it with is an action applying to two things. Understand "prepare [something] with [something]" as preparing it with.

Instead of preparing the rice with the tuna:
	now the tuna sushi is done;
	say "You make Maguro Nigirizushi and it looks great! A customer reaches out and takes it from you.".

Instead of preparing the rice with the salmon:
	now the salmon sushi is done;
	say "You make Sake Nigirizushi and it looks great! A customer reaches out and takes it from you.".

Instead of preparing the rice with the fried egg:
	now the fried egg sushi is done;
	say "You make Tamago Nigirizushi and it looks great! A customer reaches out and takes it from you.".

Instead of preparing the rice with the fried tofu:
	say "You make Inarizushi and it looks great! You eat it before anyone can ask for it.";

[ Since the player could type "prepare fried tofu with rice", to avoid repeating the above lines, let's just try and prepare the rice with the ingredient instead, but only if it isn't rice ]
Instead of preparing something which is not rice with the rice, try preparing the rice with the noun.

[ The player wants to prepare something with itself ]
Instead of preparing the noun with the noun, say "You take half of [the noun] and combine it with the other half, ending up with [noun]."

[ The player wants to prepare something that we haven't planned ]
Instead of preparing, say "You combine [the noun] with [the second noun] and make [noun]-[second noun] sashimi, but no-one wants it."

[ New action: PREPARE xyz -- used when the player refers to an ingredient that doesn't exist ]
Preparing wrong ingredients is an action applying to one topic. Understand "prepare [text]" as preparing wrong ingredients.

[ The player wants to prepare ingredients that don't exist. ]
Instead of preparing wrong ingredients:
	say "Are you sure those are the right ingredients?"
    
[ Let's try and help the player in case they type 'prepare the sushi', by telling them that they made a mistake and that should type something else instead ]
Understand "prepare the sushi" or "prepare sushi" as a mistake ("Try typing PREPARE an ingredient WITH another.")

[ The player typed verbatim our suggestion so let's help them again ]
Understand "prepare an ingredient with another" as a mistake ("No, I meant try typing something like PREPARE RICE WITH SALMON.")

Understand "prepare salmon sushi" or "prepare tuna sushi" or "prepare fried egg sushi" as a mistake ("Try typing PREPARE an ingredient WITH another.")
