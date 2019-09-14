from .models import Food, Illness, TrainingData

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