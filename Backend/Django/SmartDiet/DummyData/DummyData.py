from .models import Food, Illness, TrainingData
import random

def insertFood():
    foods = [
        {
            "id": 1,
            "name": "Yogurt",
            "url": "https://i.ndtvimg.com/i/2017-04/yogurt_621x351_61492678115.jpg",
            "description": "the thick yogurt will fill you up while also being light on your tummy. "
                           "It's rich in calcium, essential vitamins and minerals, "
                           "and free of added sugars and flavours."
                           "\n\n- No added sugars\n- Probiotic & aids digestion\n- Rich in calcium\n- Low-cal snack\n"
                           "- High protein\n\nAllergen Information: Contains dairy.",
            "calories": 97,
            "protein": 10,
            "fat": 3,
            "carbs": 7,
            "fiber": 0,
            "price": 40,
            "is_veg": True
        },
        {
            "id": 2,
            "name": "Idli",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT1505/4.jpg",
            "description": "The perfect breakfast plate, this duo is a hit amongst many and "
                           "we've put a healthy twist on it by infusing the sambar with protein-rich dal and "
                           "veggies like eggplant, pumpkin and drumsticks. Served with a side of "
                           "traditional coconut chutney, this meal will keep you feeling full for longer."
                           "\n\n- Protein and fibre rich sambar\n- Sweetened with jaggery, no refined sugars"
                           "\n\nAllergen Information: Contains nuts and mustard seeds.",
            "calories": 628,
            "protein": 21,
            "fat": 16,
            "carbs": 101,
            "fiber": 17,
            "price": 50,
            "is_veg": True
        },
        {
            "id": 3,
            "name": "Khichdi",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4851/1.jpg",
            "description": "Practice mindful eating with this light-on-tummy high-protein quinoa khichdi."
                           " Complemented by rolled oats, masoor dal and double beans, the vegan yogic "
                           "bowl is designed to keep you satiated for longer, while also fuelling your muscles."
                           " The khichdi is garnished with sesame seeds and beans, and served with a side of "
                           "roasted papad.\n\n- Protein rich quinoa, oats, dal and beans"
                           "\n- Anti-inflammatory spices\n- Sesame seeds rich in good fats"
                           "\n- Vegan khichdi\n\nAllergen Information: Contains seeds.",
            "calories": 355,
            "protein": 17,
            "fat": 8,
            "carbs": 55,
            "fiber": 15,
            "price": 70,
            "is_veg": True
        },
        {
            "id": 4,
            "name": "Curd Rice",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4739/3.jpg",
            "description": "The perfect comfort meal that can instantly soothe your stomach, "
                           "spoon up mouthfulls of our curd rice. Made using high fibre "
                           "red rice that fills you up, the curd is packed with natural probiotics"
                           " that are great for gut health. Antioxidant-rich spices like chillies and ginger "
                           "have been used to flavour this bowl of goodness that's been finished off with curry leaves,"
                           " mustard seeds and carrot.\n\n- Probiotic rich yogurt\n- High-fibre red rice\n"
                           "- Good fats in mustard seeds and coconut oil\n- Antioxidant-rich spices\n\n"
                           "Allergen Information: Contains nuts, dairy and seeds.",
            "calories": 350,
            "protein": 12,
            "fat": 11,
            "carbs": 52,
            "fiber": 8,
            "price": 70,
            "is_veg": True
        },
        {
            "id": 5,
            "name": "Mix Veg Curry & Rotis",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_377,ar_1.33,fl_progressive,f_auto,q_auto/dpr_2/image/singles/eat/meals/EAT4260/2.jpg",
            "description": "Try this nutritious meal of our high-fibre mix veg curry made with 10 "
                           "different kinds of veg like haricot beans, carrots and baby corn. "
                           "It's served with a protein-rich lauki chana dal that's light on the tummy and "
                           "made using homestyle spices. Scoop up the delicious duo with some nutritious rotis,"
                           " a refreshing salad and tummy-cooling raita.\n\n- 100% whole wheat rotis\n"
                           "- Fibre-rich mix veg\n- High-protein, low-cal dal\n- Low-fat yogurt raita\n\n"
                           "Served with the superfood of the day.\n\n"
                           "Allergen Information: Contains gluten, mushrooms, nuts and dairy.",
            "calories": 623,
            "protein": 24,
            "fat": 18,
            "carbs": 91,
            "fiber": 24,
            "price": 90,
            "is_veg": True
        },
        {
            "id": 6,
            "name": "Broth",
            "url": "https://upload.wikimedia.org/wikipedia/commons/6/6f/Broth_hg.jpg",
            "description": "Bone broth gets a lot of attention for its “unique” nutritional profile. "
                           "People praise it for being a low calorie, high-protein food, and providing minerals, "
                           "such as calcium, phosphorus, potassium, and magnesium.\n\nThe earliest study to mention bone broth is "
                           "from 1937, which looked at the nutritional value of bone and vegetable broths. Both were common ways of nourishing "
                           "infants at the time. The researchers concluded that while neither was a very good source of nutrition, "
                           "the broths that provided the highest mineral content contained the most vegetables.\n\nFar more recently, "
                           "in 2017, a study in the journal Food and Nutrition Research analyzed bone broth and found that it was not "
                           "an especially good source of calcium or magnesium.\n\nWhile marketers tout bone broth for its mineral content, "
                           "it seems the vegetables used in the cooking process — not the bones — may provide many of the helpful nutrients."
                           "\n\nAn average cup of bone broth contains zero to 19 mg of calcium and six to nine grams of protein. ",
            "calories": 267,
            "protein": 17,
            "fat": 14,
            "carbs": 18,
            "fiber": 7,
            "price": 150,
            "is_veg": True
        },
        {
            "id": 7,
            "name": "Egg Biryani",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4839/2.jpg",
            "description": "How do you like your eggs? Spiced and in a biryani. More dum, more yumm, "
                           "our eggs biryani 2.0 is a must-try!\nTreat yourself to an indulgent experience, "
                           "replete with mouth-watering flavours!Layers of long grain Basmati rice envelope 2 "
                           "hard boiled eggs that are spiced and baked for a refreshing twist. What's more, "
                           "the sweet aroma from the caramelised onions against the heady mix of whole spices"
                           " makes for a perfect contradiction of flavours.The biryani is fragrant with "
                           "keora water, enriched with desi ghee and smoked to perfection using whole spices. "
                           "Enjoy it with a side of our refreshing carrot-and-cucumber raita and a delicious "
                           "salan to go with. And once you're done with this satiating meal, "
                           "indulge on a side of guilt-free Nutty Date Pudding.",
            "calories": 1374,
            "protein": 36,
            "fat": 72,
            "carbs": 144,
            "fiber": 12,
            "price": 150,
            "is_veg": False
        },
        {
            "id": 8,
            "name": "Chicken Chettinad & Tawa Paranthas",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4230/2.jpg",
            "description": "A classic from the Southern region, our delicious main has tender pieces of chicken cooked"
                           " in chettinad masala that revels in chillies, coriander seeds, pepper corn, coconut milk"
                           " and aromats like cinnamon and cloves. The rich thick gravy can be scooped up with soft "
                           "tawa paranthas as you enjoy a side of pickled onions and green chilli.\n\n"
                           "- 100% whole wheat paranthas\n- No hormones, no steroids, no antibiotics chicken\n"
                           "- Lean, high-protein chicken breast\n- In-house freshly made chettinad base\n\n"
                           "Allergen Information: Contains gluten, mustard seeds, nuts, vinegar, and dairy.",
            "calories": 674,
            "protein": 37,
            "fat": 24,
            "carbs": 72,
            "fiber": 20,
            "price": 120,
            "is_veg": False
        },
        {
            "id": 9,
            "name": "Bread Omelette With Roast Potato Wedges",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT2938/5.jpg",
            "description": "Supercharge your day with a protein-packed meal that has a delicious masala omelette at the center of it. Served with herb roasted potato wedges, a 3-bean stew and toast, this meal is the perfect way to kickstart your day.\n\n- 100% whole wheat toast\n- Eggs rich in protein and good fat\n- Potato wedges roasted, not fried\n- Heart-healthy beans\n\nAllergen Information: Contains gluten, soybean and eggs.",
            "calories": 338,
            "protein": 23,
            "fat": 17,
            "carbs": 23,
            "fiber": 12,
            "price": 100,
            "is_veg": False
        },
        {
            "id": 10,
            "name": "Fruit Pop Oatmeal Bowl",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT1435/8.jpg",
            "description": "our Fruit Pop Oatmeal bowl is the perfect way to refuel during the day. A wholesome take on the popular overnight oats jar trend, we use nutritious unprocessed rolled oats tossed with basil seeds and seasonal fruits. The oatmeal is sweetened with natural sugars like dates and honey. \n\n- Antioxidant-rich fruits\n- Protein-rich unprocessed rolled oats\n- No artificial sugars, sweetened with honey and dates\n\nAllergen Information: Contains dairy.",
            "calories": 292,
            "protein": 6,
            "fat": 3,
            "carbs": 61,
            "fiber": 6,
            "price": 120,
            "is_veg": False
        },
        {
            "id": 11,
            "name": "Thali Chicken",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT1618/15.jpg",
            "description": "murg khurchan that has succulent pieces of chicken tossed through onions and capsicum. It’s served with an innovative no-cream dal makhni that has the same taste and richness as the original, minus the unnecessary guilt! \n\n- Steroids-free chicken, fit for your protein needs\n- Slim milk dal makhni, fit for your caloric intake\n- Fibre-rich rotis, fit for your digestive health\n\nAllergen Information: Contains gluten, dairy and nuts.",
            "calories": 591,
            "protein": 38,
            "fat": 16,
            "carbs": 70,
            "fiber": 19,
            "price": 150,
            "is_veg": False
        },
        {
            "id": 12,
            "name": "Pulao, Ghar Ke Rajma & Chana Patty",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/WL511/2.jpg",
            "description": "Nothing beats homestyle food. Especially good ol' rajma! Spiced with amchur, chilli and finished with a sour twist of lime, enjoy some ghar ka rajma with our carrot and peas veg pulao made using high-fibre brown rice. We're also sending you a side of chana patty made with a super blend of sweet potatoes and chana as well as the salad of the day and our very own digestive tea mix. \n- Protein-packed rajma and chana\n- High-fibre brown rice\n- Immunity-boosting vegetables\n\nServed with the superfood of the day.",
            "calories": 441,
            "protein": 21,
            "fat": 5,
            "carbs": 76,
            "fiber": 23,
            "price": 120,
            "is_veg": True
        },
        {
            "id": 13,
            "name": "Multigrain Palak Khichdi",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_377,ar_1.33,fl_progressive,f_auto,q_auto/dpr_2/image/singles/eat/meals/WL436/2.jpg",
            "description": "Rich in healthy fibre, proteins, vitamins and essential minerals, this vegan yogic bowl of multigrain khichdi is just what you need today! With a base of barley, broken wheat, quinoa, foxtail millet, moong dal, and brown Basmati rice, the addition of iron-rich spinach makes the khichdi a wholesome meal. Enjoy it with a side of roasted papad.\n\n- High-fibre grains\n- Protein-rich quinoa and dal\n- Spinach packed with iron\n- Anti-inflammatory spices\n- Vegan khichdi\n\nAllergen Information: Contains gluten and nuts.",
            "calories": 311,
            "protein": 12,
            "fat": 13,
            "carbs": 34,
            "fiber": 11,
            "price": 120,
            "is_veg": True
        },
        {
            "id": 14,
            "name": "Churan Wali Bhindi, Sarson Murg & Rotis",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT3971/4.jpg",
            "description": "delicious sarson murg that's made using traditional mustard and cashew paste, minus the butter and cream. Scoop up this winning duo with some nutritious rotis, a refreshing salad and tummy-cooling raita.\n\n- No hormones, no steroids, no antibiotics chicken\n- Lean, high-protein chicken breast\n- Fibre-rich bhindi masala\n- 100% whole wheat rotis\n- Digestion-aiding spices\n- Low-fat yogurt raita\n\nServed with the superfood of the day.\n\nAllergen Information: Contains gluten, mustard, seeds, nuts and dairy.",
            "calories": 696,
            "protein": 44,
            "fat": 20,
            "carbs": 83,
            "fiber": 25,
            "price": 130,
            "is_veg": True
        },
        {
            "id": 15,
            "name": "Nutty Dates Pudding",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT2585/2.jpg",
            "description": "Deliciously indulgent with superfoods like dates, almonds, cashews and raisins, some healthy broken wheat and sweetness from jaggery make this pudding hard to resist. All yummm, no guilt—order it now!\n- No refined sugars\n- High fiber broken wheat\n- Superfood nuts\n\nAllergen Information: Contains gluten, nuts and dairy.",
            "calories": 299,
            "protein": 6,
            "fat": 14,
            "carbs": 38,
            "fiber": 3,
            "price": 100,
            "is_veg": True
        },
        {
            "id": 16,
            "name": "Masala Egg Curry & Tawa Paranthas Meal",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4231/3.jpg",
            "description": "The perfect homestyle treat, enjoy this masala egg curry based in an onion-tomato gravy that's thickened with the goodness of cashew. It's paired with soft tawa paranthas, some pickled onions and a green chilli.\n\n- Protein-rich eggs\n- Mildly spiced homestyle curry\n- 100% whole wheat paranthas\n\nAllergen Information: Contains eggs, gluten, vinegar and nuts.",
            "calories": 662,
            "protein": 28,
            "fat": 28,
            "carbs": 73,
            "fiber": 16,
            "price": 120,
            "is_veg": False
        },
        {
            "id": 17,
            "name": "Pindi Chole Kulche",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4474/4.jpg",
            "description": "A real treat from chaat street, it's always a good time to dig into some chole kulche! Packed with protein, the tangy, spicy, juicy mix of pindi chole flavoured with anardana and amchur has been paired with with whole wheat kulche. Mouth watering already? Order now!",
            "calories": 479,
            "protein": 18,
            "fat": 12,
            "carbs": 75,
            "fiber": 20,
            "price": 110,
            "is_veg": True
        }, {
            "id": 18,
            "name": "Chicken Thai Green Curry & Rice",
            "url": "https://cdn-images.cure.fit/www-curefit-com/image/upload/w_485,f_auto,ar_485:605,c_fit,q_auto:eco/dpr_2/image/singles/eat/meals/EAT4063/2.jpg",
            "description": "Flavoured with basil, lemongrass and galangal, the aromatic Thai green coconut curry is an all-time favourite. And, we're serving it up with succulent pieces of chicken, and vegetables like zucchini, carrots, mushrooms, beans and baby corn. It's paired with a Thai-style wok-tossed rice with carrots, beans and spring onion.\n- Steroids and antibiotics-free chicken\n- Lean, high-protein chicken breast\n- High-fibre brown rice\n- Coconut milk rich in good fats\n- Immunity-boosting vegetables\n\nServed with the superfood of the day.\n\nAllergen Information: Contains mushrooms, soybean and nuts. Traces of celery.",
            "calories": 656,
            "protein": 35,
            "fat": 24,
            "carbs": 69,
            "fiber": 8,
            "price": 140,
            "is_veg": False
        },
    ]

    for food in foods:
        foodIn = Food()
        foodIn.food_id = food["id"]
        foodIn.description = food["description"]
        foodIn.name = food["name"]
        foodIn.calories = food["calories"]
        foodIn.price = food["price"]
        foodIn.protein = food["protein"]
        foodIn.fiber = food["fiber"]
        foodIn.fat = food["fat"]
        foodIn.carbs = food["carbs"]
        foodIn.is_veg = food["is_veg"]
        foodIn.image_url = food["url"]
        foodIn.save()

def insertIllnessData():
    illnesses = [
         "fever",
         "cold",
         "activity",
    ]
    for illness in illnesses:
        illnessIn = Illness()
        illnessIn.type = illness
        illnessIn.save()

def insertTrainingData():
    illnessAndFood = [
        {
            "name": "fever",
            "food": {
                "breakfast": [{
                    "id": 1,
                    "calories_low": 100,
                    "calories_high": 1000,
                }, {
                    "id": 2,
                    "calories_low": 500,
                    "calories_high": 2000,
                }],
                "lunch": [{
                    "id": 3,
                    "calories_low": 100,
                    "calories_high": 1000,
                }, {
                    "id": 4,
                    "calories_low": 500,
                    "calories_high": 2000,
                }],
                "dinner": [{
                    "id": 5,
                    "calories_low": 100,
                    "calories_high": 1500,
                }, {
                    "id": 4,
                    "calories_low": 500,
                    "calories_high": 2000,
                }]
            }
        },
        {
            "name": "cold",
            "food": {
                "breakfast": [{
                    "id": 2,
                    "calories_low": 100,
                    "calories_high": 1000,
                }, {
                    "id": 6,
                    "calories_low": 500,
                    "calories_high": 2000,
                }],
                "lunch": [{
                    "id": 3,
                    "calories_low": 100,
                    "calories_high": 1000,
                }, {
                    "id": 7,
                    "calories_low": 500,
                    "calories_high": 2000,
                }],
                "dinner": [{
                    "id": 8,
                    "calories_low": 100,
                    "calories_high": 1500,
                }, {
                    "id": 5,
                    "calories_low": 500,
                    "calories_high": 2000,
                }]
            }
        },
        {
            "name": "activity",
            "food": {
                "breakfast": [{
                    "id": 9,
                    "calories_low": 1500,
                    "calories_high": 2000,
                }, {
                    "id": 10,
                    "calories_low": 1500,
                    "calories_high": 2000,
                },
                    {
                        "id": 2,
                        "calories_low": 100,
                        "calories_high": 1500,
                    },
                    {
                        "id": 15,
                        "calories_low": 100,
                        "calories_high": 1500,
                    }
                ],
                "lunch": [{
                    "id": 11,
                    "calories_low": 1500,
                    "calories_high": 2000,
                }, {
                    "id": 12,
                    "calories_low": 1500,
                    "calories_high": 2000,
                }, {
                    "id": 5,
                    "calories_low": 100,
                    "calories_high": 1500,
                }, {
                    "id": 16,
                    "calories_low": 100,
                    "calories_high": 1500,
                }],
                "dinner": [{
                    "id": 13,
                    "calories_low": 1500,
                    "calories_high": 2000,
                }, {
                    "id": 14,
                    "calories_low": 1500,
                    "calories_high": 2000,
                }, {
                    "id": 17,
                    "calories_low": 100,
                    "calories_high": 1500,
                }, {
                    "id": 18,
                    "calories_low": 100,
                    "calories_high": 1500,
                }]
            }
        }
    ]
    for illnessData in illnessAndFood:
        illness = Illness.objects.filter(type=illnessData['name'])
        if illness.exists():
            illnessId = illness.get().id
            illnessFoods = illnessData["food"]
            breakfast = illnessFoods["breakfast"]
            lunch = illnessFoods["lunch"]
            dinner = illnessFoods["dinner"]

            foodTypes = [
                {
                    "id": 1,
                    "data": breakfast
                },
                {
                    "id": 2,
                    "data": lunch
                },
                {
                    "id": 3,
                    "data": dinner
                },
            ]

            for type in foodTypes:
                foodtime = type["id"]
                foods = type["data"]
                for each in foods:
                    for x in range(100):
                        training = TrainingData()
                        training.calories = random.randint(each["calories_low"], each["calories_high"])
                        training.sleeptime = float(random.randint(60, 80)) * 0.1
                        training.food = each["id"]
                        training.illness = illnessId
                        training.foodtime = foodtime
                        training.is_training = True
                        training.save()