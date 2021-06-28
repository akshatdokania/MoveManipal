import 'package:flutter/material.dart';
class Head{
  var places = <String,Map<String,List>>{
    'Inside Manipal' : {
      'Sri Krishna Temple': [
        Image.asset("images/Sri-Krishna-Temple.jpg"),
        "Udupi Shri Krishna Temple is a famous Hindu temple dedicated to Lord Krishna and Dvaita Matha located in the city of Udupi in Karnataka, India.The Matha area resembles a living Aashram, a holy place for daily devotion and living. Surrounding the Shri Krishna Temple are several temples namely the Udupi Anantheshwara Temple which is over a thousand years old.The temple opens at 0530 hours IST.",
        "0820 252 0598",
        "13.557212031881157, 74.7384373881035"
      ],
      'Delta Beach': [
        Image.asset("images/Delta-Beach.jpg"),
        "If you, like us aren’t especially fond of commercial crowded beaches are looking for a peaceful weekend getaway, we have a true hidden gem to offer you in Delta Beach.Located just 20 minutes from the town of Udupi in Karnataka, Delta Beach or Kodi Bengre Beach is a haven for anybody looking to go for a swim without being surrounded by noisy strangers. Great for soul searching and enjoying sunsets",
        "+918150060131",
        "13.418021903618936, 74.69613734691497"
      ],
      'Manipal Museum of Anatomy': [
        Image.asset("images/Manipal-Museum.jpg"),
        "On most days, there is a serpentine queue outside the Manipal Museum of Anatomy and Pathology, or MAP, a sprawling building diagonally opposite the main education building. Billed as one of the largest in Asia, the museum boasts of over 3,000 specimens and samples of things anatomical, including the skulls of an elephant and a whale, and the long skeleton of a King Cobra. Hours:= 8:00am - 6:00pm",
        "+919902166682",
        "13.718773752122832, 74.79802419617073"
      ],
      'Hoode Beach': [
        Image.asset("images/Hoode-Beach.jpg"),
        "Hoode is again one of few less touched and really beautiful around Udupi city. The Beach well connected and has beautiful, awestrucking and picturesque location. The place is connected with Delta and Bagre beaches. It's located around 9 km from the Udupi City Center and is a short ride even from the campus main.",
        "+918150060131",
        "13.801982243775898, 74.72427568378818",
      ],
      'End Point': [
        Image.asset("images/End-Point.jpg"),
        "At one end of Manipal in the state of Karnataka, is the End Point, which is basically a cliff overlooking the Swarna River. Visitors from end point can see the captivating stretch of Arabian Sea towards the west and Western Ghats towards the east. End Point is basically a deserted tract of land that has been converted into a hangout spot for its commanding views. Timimngs:= 6:00-8:00am and 4:00-6:30pm",
        "+918858870444",
        "13.761461481941064, 74.81190234104963"
      ],
      'Malpe Beach': [
        Image.asset("images/Malpe-Beach.jpg"),
        "The Malpe Beach has a pleasant weather and clean white sand which makes it ideal for a variety of water sports activities. It is a hidden treasure that lies in the State of Karnataka. The beach attracts water lovers to explore this virgin beach and indulge in some exciting activities. This beautiful beach is lined with palm trees and covered with a blue sky that provides a perfect picture for nature lovers.",
        "+918022352828",
        "13.364388949847623, 74.69705067050799"
      ],
      'Hasta Shilpa Heritage Village Museum': [
        Image.asset("images/Hasta-Shilpa.jpg"),
        "This is a great museum. Everybody must see it! It's an open air museum that you can only visit through guided tours. It has amazing and perfectly restored old wooden houses dating from 12th to 18th century. The houses belong to royals, army captains, farmers etc. These houses were about to be demolished or sold, and the founder of this museum single-handedly transported and re-constructed the structures piece by piece.",
        "+918202574577",
        "13.342674514659775, 74.78866925220399"
      ],
      'Manipal Lake': [
        Image.asset("images/Manipal-Lake.jpg"),
        " So this is not any genuine tourist place but if you have some hours to kill and hate sitting in your room then you can come here for an hour or so and just chill. Take an auto-rickshaw from Tiger Circle. It is about 2 km walk from there. There is a walkway around the lake so you can take a round of the lake. Hours:= 7:00am-7:00pm",
        "",
        "13.344455520238512, 74.78557468478185"
      ],
      'Arbi Falls': [
        Image.asset("images/Arbi-Falls.jpg"),
        "Hidden away near Manipal, the falls is also known as Parapaddy Falls or Nitte Arbi Falls (not to be confused with Bandaje Arbi Falls). Before you picture a huge cascade gushing down from a great height, let us stop you right there. This one’s much smaller and not as high. However, it’s mostly visited by locals in the hood, which means it still retains much of its pristine beauty!",
        "",
        "13.33840472969738, 74.79369253377041"
      ],
      'Venugopal Temple': [
        Image.asset("images/VGT.jpg"),
        "A calm place for those who worship Lord Krishna or believe in him, although there is a much bigger temple(Krishna matt-udupi) about 10 kms away. Its a peaceful place within the MIT campus for those thoughtful talks and the color fountain. A MUST VISIT if you are inside the campus.",
        "",
        "13.345045116801389, 74.79119115405258"
      ],
      'Hanging Bridge': [
        Image.asset("images/Hanging-Bridge.jpg"),
        "The Hanging Bridge, as you might have guessed it, is a suspension bridge which connectsPadukudru toThimmannakudru villages(nearKemmannu) over the meandering backwaters of the river Suvarna and the Arabian Sea. It looks ever so elegant when one sees it from a distance against the beautiful backdrop of palm trees, forest cover and the traversing waters; but crossing it is really something different. ",
        "+919743844906",
        "13.407877200990454, 74.75668106754672",
      ],
      'Kaup Beach': [
        Image.asset("images/Kaup-Beach.jpf"),
        "The lighthouse at this beach is famous. At a distance of 15 km from Manipal, it is a popular destination for the students to spend weekends and enjoy the regular breeze and the vibe with their friends.",
        "",
        "13.237200565206527, 74.7358821805762"
      ],
      'St. Mary Island': [
        Image.asset("images/ST-Marys.jpg"),
        "St. Mary's island is a must see for its unique rock formations that cannot be found anywhere else in India and for brilliant sea views. The azure sea can be mistaken for the famed beaches of Maldives! A variety of seashells lie strewn all around the beach. The first boat leaves from the ferry terminal at 10.30am and returns an hour later to pick up visitors already on the island while dropping off a fresh batch of visitors.",
        "+918202538779",
        "13.380251108587197, 74.67291411275455"
      ],
    },
    'Vicinity': {
      'Agumbe': [
        Image.asset("images/Agumbe.jpg"),
        "Agumbe is a hill station which can be reached by bikes or cars. The way to this place is a diversion from Parkala (the diversion is just a few kms from DT). The best part of the trip to Agumbe is the ride.",
        "",
        "13.515757491507822, 75.09165989943149"
      ],
      'Gokarna': [
        Image.asset("images/Gokarna.jpg"),
        "Just a few km off the National Highway 17, after Honnavar, is the beautiful tourist centre called Gokarna. It has the famous Om beach.",
        "",
        "14.591523572359389, 74.31311230781263"
      ],
      'Goa': [
        Image.asset("images/Goa.jpg"),
        "Not that this place needs description, its the most popular tourist destination is just three-five hours by train from Manipal - Goa, its beaches and the sea food are all within your reach.",
        "",
        "15.346513614813857, 74.127428434379"
      ],
      'Coorg': [
        Image.asset("images/Coorg.jpg"),
        "The most popular tourist destination is just five hours by train from Manipal - Goa, its beaches and the sea food are all within your reach. The best way to go is by car",
        "",
        "12.479030777034337, 75.74116284751094"
      ],
      'Kundadri': [
        Image.asset("images/Kundadri.jpg"),
        "A very picturesque and peaceful place. You get a great view of the valley from atop the hill. The Parshwanath temple is simple and beautiful. Sunsets and sunrises are a great view up here",
        "",
        "13.570816364651272, 75.16841683310929"
      ],
      'Jog Falls': [
        Image.asset("images/Jog-Falls"),
        "This is India's highest waterfall and is about three hours by road from Manipal.The steps cut into rocks will lead you to the very depths of the fall and shower you with vaporous spray that bounces off these rocks. The best time of the year to visit is during monsoon, preferably July and August.",
        "",
        "14.267990970726682, 74.8081413581272"
      ],
    }
  };
  var food = <String,Map<String,List>>{
    'Family Restraunts':{
      'Saiba' : [
        Image.asset("images/Saiba.jpg"),
        "Do not delay your visit – seriously, the Indian cuisine is waiting for you. This restaurant offers the good service to its visitors. A great place for family and friends alike.",
        "+918206528801",
        "13.353051354469994, 74.78824360903936"
      ],
      'Dollops' : [
        Image.asset("images/Dollops.jpg"),
        "One of our favourites during college days as the most affordable and great lunch out options.Also known for quick grabs and bites.Years have passed and dollops has remained the same...the quality of food, time and value for money!! Excellent place and must visit in manipal",
        "+918202570908",
        "13.352246339453867, 74.78747113288276"
      ],
      'Egg Factory': [
        Image.asset("image/Egg-Factory.jpg"),
        "Our initial assessment that this is a place for a group to party still holds good. It is nice and airy, and spacious so every group has their privacy. Then the food is quick to arrive and the taste and portions great. The service is friendly. What more can you ask?",
        "+918204294455",
        "13.351313962291536, 74.78799205438717"
      ],
      'Eye of the Tiger': [
        Image.asset("images/Eye-Of-The-Tiger.jpg"),
        "Eye Of The Tiger....situated in the centre of Manipal is a very nice, spacious place with amazing decor. A statue of Freddie Mercury adones the centre of the restaurant . Furniture has both tables and lounge seating, smoking and non smoking section... They do not have an eleabrote menu but a good choice of snacks, mains, sandwiches and burgers .. ",
        "+918204295704",
        "13.351771106396109, 74.78740882336861"
      ],
      'Snack Shack': [
        Image.asset("images/Snack-Shack.jpg"),
        "Known to all the students of Manipal university, one cannot forget their specialities such as potato lovers and death by chocolate. Just thinking of the place makes one drool!",
        "+918202575129",
        "13.352424661098496, 74.78754115405269"
      ],
      'Pai Tiffins': [
        Image.asset("images/Pai-Tiffins.jpg"),
        "The Food in this Restaurant really gives you the WOW feeling that you crave. Taste of the Sambar is really excellent. Hygienic food. Ambiance is like a Temple. Very humble staff to top it all!",
        "+919611013777",
        "13.352959866516024, 74.78958171172371"
      ],
      'Basil Cafe':[
        Image.asset("images/Basil-Cafe.jpg"),
        "A very good eatery for Dinner and quick bites.  It has a good variety of dishes ranging from Continental, Mexican, Chinese and Indian cuisines aiming to please any customers palette. The combination of great food and a cozy ambience to match make this resraurant an instant hit and very highly recommendable.",
        "+918204293284",
        "13.354417881465523, 74.78420289823025"
      ],
      'Cafe7Bees':[
        Image.asset("images/Cafe7Bees.jpg"),
        "Good food in reasonable price, Awesome customer service. One of the best Cáfes in Manipal. Even though space is not their area of expertise, food is. Would surely recommend for a quick bite.",
        "+918204299277",
        "13.353354466174475, 74.7906374117237"
      ],
      'Planet Cafe': [
        Image.asset("images/Planet-Cafe/jpg"),
        "This one is definitely for the lovers of the Indian Bread. They provide great main course options and deliver on it. The service might be a little on the slower side. Speciality dish - Meatball Roll",
        "+918202572454",
        "13.35947244532602, 74.78448222521719"
      ],
      'Laughing Buddha':[
        Image.asset("images/Laughing-Buddha.jpg"),
        "A place to fulfill all your cravings for the side dishes. They're just lip-smacking good. A great ambiance for friends and family. Keep in mind the HUGE proportions they have waiting for you",
        "+919820929223",
        "13.36127079024239, 74.78309999671669"
      ],
      'MIT Cafeteria':[
        Image.asset("immages/Mit-Cafeteria.jpg"),
        "This one is close to all MITians hearts and the place to be to grab a quick bite or lunch between classes. All their dishes are amazing! This place is a must visit for all in manipal for the first or the nth time!",
        "",
        "13.352224105976056, 74.7931154237046"
      ],
    },
    'Indulgence': {
      'KFC':[
        Image.asset("images/KFC.png"),
        "Your regular KFC next door...",
        "+918042754444",
        "13.349143520510015, 74.78203581205781"
      ],
      "Domino's":[
        Image.asset("images/Domino's.jpg"),
        "Dil, Dosti, Domino's!",
        "08202574352",
        "13.353647728309852, 74.78997509725323"
      ],
      'McDonalds':[
        Image.asset("images/McD.png"),
        "I'm Lovin' It!",
        "+918928304306",
        "13.353206570596281, 74.79025652336863"
      ],
      'Froth On Top':[
        Image.asset("images/Froth-On-Top.jpg"),
        "All for the vibes! This is a great hangout place for people of all ages willing to just take a step back and enjoy the moment with some fine dining options.",
        "+917829386555",
        "13.358649438698194, 74.78429232521721"
      ],
      'Hastag':[
        Image.asset("images/Hashtag.jpg"),
        "A good place for lounging but a better one for a great Sunday Brunch! Great ambiance on offer along with a range of mocktails and cocktails.",
        "",
        "13.35850742315384, 74.78460402521725"
      ],
      'Subway':[
        Image.asset("images/Subway.png"),
        "Sub of the day VEG- , Sub of the day NON-VEG- ",
        "+918202574144",
        "13.353361943733235, 74.78596602521718"
      ],
      'Barbeque Nation':[
        Image.asset("images/BBQNation.jpg"),
        "The World On A Grill!, best epitomised by none other than BBQ-Nation",
        "+918880326060",
        "13.349501218985498, 74.78285324055916"
      ],
      'Tiwari Chaat':[
        Image.asset("images/Tiwari-Chaat.jpg"),
        "Enjoy the street food with the tastiest Paani-Puri and Chaats around town!",
        "+918951933904",
        "13.345939372591149, 74.79012333871056"
      ],
      'MFC':[
        Image.asset("images/MFC.jpg"),
        "THE BEST PLACE to eat fast food, no exceptions. A good place to settle those bets or just enjoy occasional taco. Could not recommend enough!",
        "+917338334970",
        "13.348371509791306, 74.79374963199379"
      ],
      'Grub Monkeys':[
        Image.asset("images/Grub-Monkeys.jpg"),
        "Most guests recommend trying mouthwatering burgers, peri peri chicken and hot dogs. If you're the great ice tea fan, you may like this restaurant. The fast service is something these restaurateurs care about.",
        "+918892858915",
        "13.351962195099835, 74.78400784560719"
      ],
      'DeeTee':[
        Image.asset("images/DeeTee.jpg"),
        "Gotta visit it on a saturday night to see what all the rage is about ;p",
        "+919833800000",
        "13.355329580557957, 74.79798838288825"
      ],
      'Zeal':[
        Image.asset("images/Zeal.jpg"),
        "A good place for all the 'right' reasons.",
        "+918050708676",
        "13.355704680184564, 74.79692898103968"
      ],
      'Edge':[
        Image.asset("images/Edge.jpg"),
        "Don't worry, we know its a lil cramped. But you know the vibe!",
        "+919141901758",
        "13.354973184136563, 74.79316382706575"
      ],
      'Black Cup':[
        Image.asset("images/Black-Cup.jpg"),
        "Their barbeque sides are mouth watering and the hookah just lights things up!",
        "+917795285211",
        "13.351641778523858, 74.7839456098751"
      ],
    },
    'Desserts':{
      'Belgian Waffle':[
        Image.asset("images/Belgian-Waffles.jpg"),
        "Scrupmtious waffles dripping with your style of chocolate. Simply Yum!!",
        "+919741443648",
        "13.353447532861162, 74.78874134622963"
      ],
      'CadM CadB':[
        Image.asset("images/CadBCadM.jpg"),
        "Would definitely recommend their signature Cadbury shakes. Drink into Sweet Goodness!",
        "+917899703388",
        "13.348944231018285, 74.78753145405264"
      ],
      'Naturals':[
        Image.asset("images/Naturals.jpg"),
        "Any compliment to their ice creams are an understatement!",
        "+918202575937",
        "13.348619060167806, 74.77680423686202"
      ],
    }
  };
  var essentials = <String,Map<String,List>>{
    'Grocery Stores':{
      'Student Plaza':[
        Image.asset("images/Student-Plaza.jpg"),
        "All your college and grocery necessities can be found in the various shops around and about our very own Student Plaza.",
        "",
        "13.347536210243863, 74.79335961172367"
      ],
      'Campus Store':[
        Image.asset("images/Campus-Store.jpg"),
        "As the name suggests, this a one stop shop for all your campus needs. ",
        "+919060240000",
        "13.34866270415529, 74.79304215405266"
      ],
      'Yas Mart':[
        Image.asset("images/Yas-Mart.jpg"),
        "A personalized experience awaits you!",
        "+918202575234",
        "13.357596116902148, 74.78413374055927"
      ],
      'BigBazaar (Udupi)':[
        Image.asset("images/BigBazaar.jpg"),
        "The supermarket next door. A 15 minute (7 km) drive from MIT main campus.",
        "+919448092447",
        "13.333333529301228, 74.74699598981019"
      ],
    },
    'Clothing Stores':{
      'Reliance Trends':[
        Image.asset("images/Rel-Trendz.jpg"),
        "For a more fashionable YOU! Check out the latest fashion not more than a 10 min auto ride away from campus!",
        "+918202986064",
        "13.349045069904037, 74.78113743871062"
      ],
      'Trends(Canara Mall)':[
        Image.asset("images/Trends.jpg"),
        "Not the greatest of collections but definitely the most attractive prices out there!",
        "+918204200178",
        "13.352963988914569, 74.79004760802658"
      ],
      'Max':[
        Image.asset("images/Max.jpg"),
        "A walk away to fulfilling all your clothing needs.",
        "+918951354631",
        "13.347709953981637, 74.78397578288815"
      ],
    },
    'Medical Stores':{
      'Kasturba Hospital':[
        Image.asset("images/Kasturba-Hospital.jpg"),
        "",
        "+918202922761",
        "13.353904304457453, 74.78971853871064"
      ],
      'Radha Medicals':[
        Image.asset("images/Radha-Medicals.jpg"),
        "",
        "+918204299601",
        "13.352989427692352, 74.78975756939475"
      ],
      'Manipal Drug House':[
        Image.asset("images/Manipal-Drug-House.jpg"),
        "",
        "+918202570542",
        "13.349431086428494, 74.78632768103958"
      ],
      'Apollo Pharmacy':[
        Image.asset("images/Apollo.jpg"),
        "",
        "+918202574890",
        "13.361722197349906, 74.78419782521726"
      ],
    },
    // 'Hotels&Inns':{
    //   'Country Inn':[],
    //   'Green Park Hotel':[],
    //   'Hotel Tranquil':[],
    //   'Hotel Madhuvan Sarai':[],
    //   'HomeTown Galleria':[],
    //   'Fortune Inn Valley View':[],
    //   'Hotel Central Park':[],
    //   'The Ocean Pearl':[],
    //   'Oyo':[],
    // },
  };
  var vehicle = <String,Map<String,List>>{
    'Rentals': {
      'Zoomcar':[
        Image.asset("images/Zoomcar.jpg"),
        "Yes, Manipal does offer Zoomcar! Hop on to explore the beautiful landscapes in and around Manipal.",
        "+919148875972",
        "13.35937686096035, 74.78492832521725"
      ],
      'BhoomRiderz':[
        Image.asset("images/Bhoom.jpg"),
        "Rent a bike and feel the breeze in your hair!",
        "+918150025955",
        "13.339602383065307, 74.78683515070954"
      ],
      'Royal Brothers':[
        Image.asset("images/Royal-Brothers.jpg"),
        "Another bike rental with amazing choices!",
        "+919019595595",
        "13.349040580240146, 74.78033653871059"
      ],
      'India Rides': [
        Image.asset("images/India-Rides.jpg"),
        "The bike rental closest to MIT where you can also rent bicycles on a per hour basis",
        "+918202572266",
        "13.349194030812937, 74.78555579638164"
      ],
    },
    'Transport':{
      'Bharathi Travels':[
        Image.asset("images/Bharathi-Travels.jpg"),
        "Site - www.bharathitravels.com",
        "+918147523472",
        "13.3373550984309, 74.74661745490367"
      ],
      'Manipal Taxi':[
        Image.asset("images/Manipal-Taxi.jpg"),
        "Safe, secure and reliable taxi service for you to and from the airport journeys. ",
        "+919845214196",
        "13.35256048865095, 74.78738713482028"
      ],
      'Pearl Travels' : [
        Image.asset("images/Pearl-Travels.jpg"),
        "Taxi service to help you in your road journeys with friends. Or just to the airport, your choice!",
        "+918095484222",
        "13.35464689726176, 74.78820093175388"
      ],
    },
    'Auto':{
      'Eshwar Nagar':[],
      'Mandavi':[],

    },
  };
}