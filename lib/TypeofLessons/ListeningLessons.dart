import 'package:flutter/material.dart';
import '../QuizPage/QuestionPage.dart';
import '../QuizPage/QuizandTexttoSpeech.dart';
import '../main.dart';


class ListeningLessons extends StatefulWidget {
  const ListeningLessons({super.key});

  @override
  State<ListeningLessons> createState() => _ListeningLessonsState();
}

class _ListeningLessonsState extends State<ListeningLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listining Lessons",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 15.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomLessonCard(
                    lessonTitle: "Lesson 1",
                    lessonSubtitle: "A Street Musician",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_1", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the heart of the bustling metropolis, a street musician named James played his saxophone on the corner. His melodies had the power to stop people in their tracks, transporting them to another world. On this particular evening, a lonely woman named Sophie, lost in the crowd, heard the enchanting notes. Their eyes met, and the music wove a connection between them that transcended the noise and chaos of the city.',
                          questions: [
                            Question(
                              questionText: 'What is the name of the street musician in the story?',
                              options: ['Michael', 'John', 'James', 'Robert'],
                              correctAnswer: 'James',
                            ),
                            Question(
                              questionText: 'Who found solace in James\' music on that particular evening?',
                              options: ['Michael', 'Sophie', 'John', 'Emily'],
                              correctAnswer: 'Sophie',
                            )
                      ], lessontitle: 'A Street Musician',),
                      )).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_1") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 2",
                    lessonSubtitle: "A Plan for Movie",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_2", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'John and Maya, close friends with a penchant for spontaneity, found themselves in conversation as the day drew to a close. John asked, "What are you doing tomorrow?" to which Maya casually replied, "Nothing really." Eager for an adventure, John suggested, "Let\'s watch a movie or something." After considering their options, they settled on \"Lord of the Rings.\" \"That sounds pretty good. Let\'s watch that," Maya agreed. With the movie decided, they chose to meet at the subway entrance at one o\'clock, continuing their tradition of enjoyable weekend plans.',
                          questions: [
                            Question(
                              questionText: 'What movie do these people plan on watching?',
                              options: ['Matrix Revolution', 'The Two Towers', 'Lord of the Rings', 'The Last Samurai'],
                              correctAnswer: 'Lord of the Rings',
                            ),
                            Question(
                              questionText: 'When do they plan on watching the movie?',
                              options: ['On the Weekend', 'Tomorrow', 'Later in the evening today', 'Next Friday'],
                              correctAnswer: 'Tomorrow',
                            ),
                            Question(
                              questionText: 'Where do they plan on meeting?',
                              options: ['At the subway entrance', 'In front of the movie theater', 'At Starbucks next to the theater', 'At home'],
                              correctAnswer: 'At the subway entrance',
                            )
                          ] ,lessontitle: 'A Plan for Movie'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_2") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 3",
                    lessonSubtitle: "Mystical Moonlit Dance",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_3", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'Under the silvery glow of the full moon, a hidden clearing in the enchanted forest became a stage for a mystical moonlit dance. Woodland creatures, both ordinary and magical, gathered to participate in this ethereal celebration. Fireflies added their luminescence to the scene as the music of rustling leaves and gently flowing streams provided the rhythm. It was a moment when the boundary between the ordinary and the enchanting blurred, reminding all who witnessed it of the enchantment that nature holds, just beyond the veil of the everyday.',
                          questions: [
                            Question(
                              questionText: 'What kind of dance took place in the hidden clearing under the full moon?',
                              options: ['A waltz', 'A mystical moonlit dance', 'A tap dance', 'A breakdance battle'],
                              correctAnswer: 'A mystical moonlit dance',
                            ),
                            Question(
                              questionText: 'What added luminescence to the mystical moonlit dance scene?',
                              options: ['Spotlights', 'Glowing crystals', 'Fireflies', 'Candles'],
                              correctAnswer: 'Fireflies',
                            ),
                            Question(
                              questionText: 'What provided the rhythm for the moonlit dance in the enchanted forest?',
                              options: ['Drums', 'Birdsong', 'Music from hidden speakers', 'Rustling leaves and gently flowing streams'],
                              correctAnswer: 'Rustling leaves and gently flowing streams',
                            ),
                            Question(
                              questionText: 'What did the moonlit dance scene remind those who witnessed it of?',
                              options: ['The need for more lighting', 'Ordinary everyday life', 'The enchantment of nature just beyond the everyday', 'Their dance moves'],
                              correctAnswer: 'The enchantment of nature just beyond the everyday',
                            )
                          ],lessontitle: 'Mystical Moonlit Dance'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_3") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 4",
                    lessonSubtitle: "Whispering Woods",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_4", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the heart of Whispering Woods, ancient trees stretched their limbs to the sky, their leaves whispering tales of forgotten legends. As the moon bathed the forest in silver light, ethereal spirits emerged to dance among the shadows. Their laughter and song carried the secrets of the woodland, a timeless realm where nature and magic intertwined.',
                          questions: [
                            Question(
                              questionText: 'What did the leaves of the ancient trees in Whispering Woods whisper?',
                              options: ['The latest gossip', 'Tales of forgotten legends', 'Recipes for magical potions', 'Their favorite songs'],
                              correctAnswer: 'Tales of forgotten legends',
                            ),
                            Question(
                              questionText: 'When did ethereal spirits emerge in Whispering Woods?',
                              options: ['At sunrise', 'During a thunderstorm', 'At night when the moon bathed the forest in silver light', 'Only on weekends'],
                              correctAnswer: 'At night when the moon bathed the forest in silver light',
                            ),
                            Question(
                              questionText: 'What did the laughter and song of the ethereal spirits carry?',
                              options: ['Grocery lists', 'Secrets of the woodland', 'Political debates', 'Phone numbers'],
                              correctAnswer: 'Secrets of the woodland',
                            )
                          ],lessontitle: 'Whispering Woods'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_4") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 5",
                    lessonSubtitle: "Starlight Serenade",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_5", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In a quiet mountain village, the night sky came alive with a dazzling display of stars. Every clear evening, the villagers gathered in the meadow, where they played melodies on handmade instruments, serenading the cosmos. It was a harmonious bond between the people and the universe, a celestial symphony that united them in wonder.',
                          questions: [
                            Question(
                              questionText: 'Where did the villagers in the mountain village gather to enjoy the night sky?',
                              options: ['In their homes', 'At the beach', 'In the meadow', 'In the forest'],
                              correctAnswer: 'In the meadow',
                            ),
                            Question(
                              questionText: 'What did the villagers do during the clear evenings in the meadow?',
                              options: ['Played football', 'Tended to their crops', 'Played melodies on handmade instruments', 'Watched television'],
                              correctAnswer: 'Played melodies on handmade instruments',
                            ),
                            Question(
                              questionText: 'What did the celestial symphony created by the villagers unite them in?',
                              options: ['Boredom', 'Wonder', 'Sleep', 'Cooking'],
                              correctAnswer: 'Wonder',
                            )
                          ],lessontitle: 'Starlight Serenade'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_5") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 6",
                    lessonSubtitle: "Exploring Ocean",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_6", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The exploration of our oceans has revealed wonders beyond imagination. Deep-sea expeditions uncover not only mysterious creatures but also the potential for new medicines, energy sources, and ecological insights. With a greater understanding of the oceans, we have a unique opportunity to protect these delicate ecosystems and harness their potential for the betterment of humanity.',
                          questions: [
                            Question(
                              questionText: 'What do deep-sea expeditions uncover?',
                              options: ['Treasures', 'New lands', 'Mysterious creatures', 'Lost ships'],
                              correctAnswer: 'Mysterious creatures',
                            ),Question(
                              questionText: 'Besides mysterious creatures, what other potential is revealed by exploring our oceans?',
                              options: ['Alien life', 'New technology', 'New medicines, energy sources, and ecological insights', 'Underwater cities'],
                              correctAnswer: 'New medicines, energy sources, and ecological insights',
                            ),
                            Question(
                              questionText: 'What unique opportunity does a greater understanding of the oceans provide?',
                              options: ['Treasure hunting', 'Creating ocean theme parks', 'Protecting ecosystems and harnessing their potential for humanity', 'Underwater farming'],
                              correctAnswer: 'Protecting ecosystems and harnessing their potential for humanity',
                            )
                          ],lessontitle: 'Exploring Ocean'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_6") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 7",
                    lessonSubtitle: "The Sun",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_7", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'As the sun dipped below the horizon, painting the sky with hues of pink and gold, the seaside town of Harbor Cove transformed into a tranquil paradise. The lighthouse, standing sentinel at the edge of the cliff, sent its guiding beam across the darkening waters, a beacon of hope for sailors and a symbol of homecoming for the residents.',
                          questions: [
                            Question(
                              questionText: 'What transforms Harbor Cove into a tranquil paradise?',
                              options: ['The lighthouse', 'The darkening waters', 'The hues of pink and gold', 'The residents'],
                              correctAnswer: 'The hues of pink and gold',
                            ),
                            Question(
                              questionText: 'What does the lighthouse symbolize for the residents of Harbor Cove?',
                              options: ['A guiding beam for sailors', 'A symbol of homecoming', 'A beacon of hope', 'A tranquil paradise'],
                              correctAnswer: 'A symbol of homecoming',
                            )
                          ],lessontitle: 'The Sun'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_7") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 8",
                    lessonSubtitle: "Willowbrook\'s Cosmic Wish",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_8", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the charming village of Willowbrook, an old oak tree was the stuff of legends. Local folklore spoke of wishes coming true for those who whispered their desires to the tree on a moonlit night. Young Tommy, driven by the dream of becoming an astronaut, made his wish. Little did he know that the tree was about to set in motion a remarkable cosmic journey he could never have imagined.',
                          questions: [
                            Question(
                              questionText: 'What legendary quality is attributed to the old oak tree in Willowbrook?',
                              options: ['Providing shade', 'Granting wishes', 'Producing delicious fruit', 'Growing tall'],
                              correctAnswer: 'Granting wishes',
                            ),
                            Question(
                              questionText: 'What was Tommy\'s dream or wish when he whispered to the tree on a moonlit night?',
                              options: ['Becoming a professional musician', 'Becoming a chef', 'Becoming an astronaut', 'Becoming a teacher'],
                              correctAnswer: 'Becoming an astronaut',
                            ),
                            Question(
                              questionText: 'What did the old oak tree set in motion for young Tommy?',
                              options: ['A career in gardening', 'A lifelong quest for treasure', 'A remarkable cosmic journey', 'A journey into the past'],
                              correctAnswer: 'A remarkable cosmic journey',
                            )
                          ],lessontitle: 'Willowbrook\'s Cosmic Wish'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_8") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 9",
                    lessonSubtitle: "Habitat Preservation Importance",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_9", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The preservation of wildlife habitats is vital for the survival of endangered species. Efforts to protect and restore ecosystems not only safeguard biodiversity but also contribute to ecological balance. Conservationists and local communities play a crucial role in ensuring the longevity of these fragile environments, preventing the loss of irreplaceable species and natural wonders.',
                          questions: [
                            Question(
                              questionText: 'What is the primary reason for preserving wildlife habitats?',
                              options: ['Tourism development', 'Preservation of endangered species', 'Agricultural expansion', 'Industrial growth'],
                              correctAnswer: 'Preservation of endangered species',
                            ),
                            Question(
                              questionText: 'Who plays a crucial role in ensuring the longevity of fragile environments?',
                              options: ['Politicians', 'Tourists', 'Conservationists and local communities', 'Scientists'],
                              correctAnswer: 'Conservationists and local communities',
                            ),
                            Question(
                              questionText: 'What do efforts to protect and restore ecosystems contribute to besides safeguarding biodiversity?',
                              options: ['Economic development', 'Social progress', 'Ecological balance', 'Technological innovation'],
                              correctAnswer: 'Ecological balance',
                            )
                          ],lessontitle: 'Habitat Preservation Importance'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_9") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),

                CustomLessonCard(
                    lessonTitle: "Lesson 10",
                    lessonSubtitle: "Saturday Morning Market",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_10", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The farmer\'s market on Saturday mornings was a vibrant tapestry of colors, sounds, and flavors. Stalls were brimming with organic fruits, freshly baked bread, and handcrafted goods. Shoppers meandered through the aisles, engaging in conversations with farmers and artisans, forging connections that celebrated local and sustainable living.',
                          questions: [
                            Question(
                              questionText: 'What made the farmer\'s market on Saturday mornings vibrant?',
                              options: ['Live music performances', 'Handcrafted jewelry', 'Colors, sounds, and flavors', 'Vintage clothing'],
                              correctAnswer: 'Colors, sounds, and flavors',
                            ),
                            Question(
                              questionText: 'What did shoppers engage in at the farmer\'s market?',
                              options: ['Competitive sports', 'Conversations with farmers and artisans', 'Hiking excursions', 'Musical performances'],
                              correctAnswer: 'Conversations with farmers and artisans',
                            ),
                            Question(
                              questionText: 'What kind of living did the connections at the market celebrate?',
                              options: ['Fast-paced city living', 'Local and sustainable living', 'Luxurious living', 'Nomadic living'],
                              correctAnswer: 'Local and sustainable living',
                            )
                          ],lessontitle: 'Saturday Morning Market'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_10") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 11",
                    lessonSubtitle: "Luna\'s Glow Magic",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_11", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the heart of the forest, where ancient oaks held their secrets, a peculiar creature named Luna lived. Luna was a firefly who could control the colors of her glow. With this unique gift, she brought light and wonder to the enchanted forest. As the seasons changed, the forest inhabitants eagerly awaited the dazzling displays she would create.',
                          questions: [
                            Question(
                              questionText: 'Where did Luna, the peculiar firefly, live?',
                              options: ['On a mountaintop', 'In a bustling city', 'In the heart of the forest', 'Underwater in a lake'],
                              correctAnswer: 'In the heart of the forest',
                            ),
                            Question(
                              questionText: 'What unique gift did Luna possess?',
                              options: ['The ability to fly very fast', 'The power to control the colors of her glow', 'Invisibility', 'Super strength'],
                              correctAnswer: 'The power to control the colors of her glow',
                            ),
                            Question(
                              questionText: 'What did Luna\'s unique gift bring to the enchanted forest?',
                              options: ['Storms and rain', 'Laughter and music', 'Darkness and fear', 'Light and wonder'],
                              correctAnswer: 'Light and wonder',
                            )
                          ],lessontitle: 'Luna\'s Glow Magic'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_11") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 12",
                    lessonSubtitle: "Clean Water Challenge",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_12", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The global struggle for clean water access remains a critical challenge. From remote villages to urban centers, the availability of safe drinking water is a basic human right that impacts health, education, and economic development. Addressing this issue requires international cooperation, innovative solutions, and a commitment to equitable distribution',
                          questions: [
                            Question(
                              questionText: 'What does the global struggle for clean water access impact?',
                              options: ['Entertainment industry', 'Health, education, and economic development', 'Agriculture', 'Fashion trends'],
                              correctAnswer: 'Health, education, and economic development',
                            ),
                            Question(
                              questionText: 'What is the availability of safe drinking water considered?',
                              options: ['A luxury', 'A basic human right', 'An urban legend', 'A rare find'],
                              correctAnswer: 'A basic human right',
                            ),
                            Question(
                              questionText: 'What is required to address the challenge of clean water access?',
                              options: ['International cooperation, innovative solutions, and equitable distribution', 'Increased pollution, isolation, and competition', 'Higher prices, stricter regulations, and exclusivity', 'Political divisions, secrecy, and discrimination'],
                              correctAnswer: 'International cooperation, innovative solutions, and equitable distribution',
                            )
                          ],lessontitle: 'Clean Water Challenge'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_12") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 13",
                    lessonSubtitle: "Artful Urban Café",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_13", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'Amidst the chaotic urban landscape, a hidden gem of a café existed. Its walls adorned with local art, the aroma of freshly brewed coffee filled the air. Patrons gathered to enjoy a quiet oasis, to savor hand-crafted brews, and to immerse themselves in the creative energy that flowed within those cozy walls.  ',
                          questions: [
                            Question(
                              questionText: 'What adorned the walls of the hidden café?',
                              options: ['Luxurious drapes', 'Local art', 'Graffiti', 'Antique furniture'],
                              correctAnswer: 'Local art',
                            ),
                            Question(
                              questionText: 'Why did patrons gather at the café?',
                              options: ['To participate in a dance competition', 'To savor hand-crafted brews', 'To watch TV', 'To play board games'],
                              correctAnswer: 'To savor hand-crafted brews',
                            ),
                            Question(
                              questionText: 'What kind of atmosphere did the café offer amidst the chaotic urban landscape?',
                              options: ['A noisy environment', 'A lively dance floor', 'A quiet oasis', 'A construction site'],
                              correctAnswer: 'A quiet oasis',
                            )
                          ],lessontitle: 'Artful Urban Café'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_13") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 14",
                    lessonSubtitle: "Terra Nova Discovery",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_14", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the distant future, humanity had achieved interstellar travel. One day, a group of explorers set their sights on a mysterious planet known as Terra Nova. What they found there was a breathtaking world of bioluminescent flora, sentient creatures, and an ancient civilization that had unlocked the secrets of time and space.',
                          questions: [
                            Question(
                              questionText: 'In the distant future, what had humanity achieved?',
                              options: ['Travel to the past', 'Interstellar travel', 'Underwater living', 'World peace'],
                              correctAnswer: 'Interstellar travel',
                            ),
                            Question(
                              questionText: 'What did the group of explorers set their sights on?',
                              options: ['A distant star', 'A neighboring galaxy', 'The moon', 'A mysterious planet known as Terra Nova'],
                              correctAnswer: 'A mysterious planet known as Terra Nova',
                            ),
                            Question(
                              questionText: 'What did the explorers discover on Terra Nova?',
                              options: ['A barren wasteland', 'Bioluminescent flora', 'Advanced technology', 'Underground caves'],
                              correctAnswer: 'Bioluminescent flora, sentient creatures, and an ancient civilization that had unlocked the secrets of time and space',
                            )
                          ],lessontitle: 'Terra Nova Discovery'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_14") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 15",
                    lessonSubtitle: "Digital Education Shift",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_15", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The digital revolution has reshaped the landscape of education. Online learning platforms offer a wealth of resources, making education more accessible than ever before. This shift not only enhances traditional learning but also provides opportunities for skill development, career advancement, and lifelong learning.',
                          questions: [
                            Question(
                              questionText: 'What has reshaped the landscape of education?',
                              options: ['Traditional farming', 'The industrial revolution', 'The digital revolution', 'Space exploration'],
                              correctAnswer: 'The digital revolution',
                            ),
                            Question(
                              questionText: 'What do online learning platforms offer?',
                              options: ['Cooking classes', 'A wealth of resources', 'Scenic tours', 'Fitness training'],
                              correctAnswer: 'A wealth of resources',
                            ),
                            Question(
                              questionText: 'Besides enhancing traditional learning, what opportunities does the digital revolution provide?',
                              options: ['Healthcare services', 'Leisure activities', 'Skill development, career advancement, and lifelong learning', 'Automotive repair'],
                              correctAnswer: 'Skill development, career advancement, and lifelong learning',
                            )
                          ],lessontitle: 'Digital Education Shift'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_15") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 16",
                    lessonSubtitle: "Cliffside Ocean Art",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_16", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'On the edge of the small fishing village, the cliff overlooked the expansive ocean. Here, an artist set up an easel each morning to capture the ever-changing hues of the sea. The crashing waves and the salty breeze provided a timeless muse, inspiring breathtaking seascapes that adorned the walls of galleries worldwide.',
                          questions: [
                            Question(
                              questionText: 'Where did the artist set up an easel each morning?',
                              options: ['In a bustling city', 'In a mountain cave', 'On a cliff overlooking the ocean', 'In a forest'],
                              correctAnswer: 'On a cliff overlooking the ocean',
                            ),
                            Question(
                              questionText: 'What inspired the artist\'s breathtaking seascapes?',
                              options: ['A cozy cottage', 'Crashing waves and the salty breeze', 'A bustling market', 'A garden of flowers'],
                              correctAnswer: 'Crashing waves and the salty breeze',
                            ),
                            Question(
                              questionText: 'Where were the artist\'s seascapes displayed?',
                              options: ['On the artist\'s home walls', 'In a hidden cave', 'In galleries worldwide', 'At the local market'],
                            correctAnswer: 'In galleries worldwide',
                            )
                          ],lessontitle: 'Cliffside Ocean Art'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_16") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 17",
                    lessonSubtitle: "Library Portal Adventures",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_17", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The old library in the town square held more than just books; it was rumored to house a portal to other worlds. One gloomy afternoon, a young bibliophile named Isabella stumbled upon an ancient tome that whispered secrets. When she finally unlocked the portal, she found herself in a realm where the stories leaped from the pages, and adventures awaited around every corner.',
                          questions: [
                            Question(
                              questionText: 'What was rumored to be housed in the old library in the town square?',
                              options: ['A treasure chest', 'A portal to other worlds', 'A collection of rare stamps', 'A secret code'],
                              correctAnswer: 'A portal to other worlds',
                            ),
                            Question(
                              questionText: 'What did the young bibliophile named Isabella discover in an ancient tome?',
                              options: ['A recipe for chocolate chip cookies', 'A map to hidden treasure', 'Secrets whispered by the tome', 'A list of library rules'],
                              correctAnswer: 'Secrets whispered by the tome',
                            ),
                            Question(
                              questionText: 'Where did Isabella find herself after unlocking the portal?',
                              options: ['At the local market', 'In a boring lecture', 'In a realm where stories leaped from the pages', 'In a dark, spooky cave'],
                              correctAnswer: 'In a realm where stories leaped from the pages and adventures awaited around every corner',
                            )
                          ],lessontitle: 'Library Portal Adventures'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_17") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 18",
                    lessonSubtitle: "Mental Health Awareness",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_18", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The significance of mental health awareness cannot be overstated. In today\'s fast-paced world, the pressures of modern life can take a toll on well-being. Recognizing the importance of mental health, reducing stigma, and providing support are essential steps in promoting a society where every individual can thrive.',
                          questions: [
                            Question(
                              questionText: 'What is the significance of mental health awareness?',
                              options: ['It\'s unimportant', 'It cannot be overstated', 'It\'s a temporary trend', 'It\'s a myth'],
                              correctAnswer: 'It cannot be overstated',
                            ),
                            Question(
                              questionText: 'What can the pressures of modern life do to well-being?',
                              options: ['Nothing', 'Enhance well-being', 'Have no effect', 'Take a toll on well-being'],
                              correctAnswer: 'Take a toll on well-being',
                            ),
                            Question(
                              questionText: 'What steps are essential in promoting a society where every individual can thrive?',
                              options: ['Creating more pressure', 'Ignoring mental health', 'Recognizing the importance of mental health, reducing stigma, and providing support', 'Banning mental health discussions'],
                              correctAnswer: 'Recognizing the importance of mental health, reducing stigma, and providing support',
                            )
                          ],lessontitle: 'Mental Health Awareness'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_18") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 19",
                    lessonSubtitle: "Savanna Elephant Gathering",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_19", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the heart of the savanna, a family of elephants congregated around a watering hole. The matriarch, a wise and gentle giant, led the group with an air of authority. As the sun dipped below the horizon, the scene was illuminated by the soft golden light, creating a mesmerizing silhouette of these magnificent creatures.',
                          questions: [
                            Question(
                              questionText: 'Where did the family of elephants congregate?',
                              options: ['In a forest', 'Around a watering hole', 'On a mountain', 'In a desert'],
                              correctAnswer: 'Around a watering hole',
                            ),
                            Question(
                              questionText: 'Who led the group of elephants?',
                              options: ['A young calf', 'A wise and gentle giant', 'A mischievous teenager', 'An old, grumpy elephant'],
                              correctAnswer: 'A wise and gentle giant',
                            ),
                            Question(
                              questionText: 'What created a mesmerizing silhouette of the elephants?',
                              options: ['The moonlight', 'The soft golden light', 'A flashlight', 'A spotlight'],
                              correctAnswer: 'The soft golden light',
                            )
                          ],lessontitle: 'Savanna Elephant Gathering'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_19") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 20",
                    lessonSubtitle: "Enchanted Fairy Village",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_20", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'Deep within the enchanted forest, a hidden village of fairies thrived. Their homes were crafted from dew-kissed leaves and petals, and their lives were intertwined with the rhythms of nature. Lily, a curious young fairy, was destined to discover a long-lost secret that would rekindle the magic of the forest.',
                          questions: [
                            Question(
                              questionText: 'Where was the hidden village of fairies located?',
                              options: ['On a mountaintop', 'In a bustling city', 'Deep within the enchanted forest', 'In a desert'],
                              correctAnswer: 'Deep within the enchanted forest',
                            ),
                            Question(
                              questionText: 'How were the homes of the fairies crafted?',
                              options: ['From concrete and steel', 'From wood and bricks', 'From dew-kissed leaves and petals', 'From glass and metal'],
                              correctAnswer: 'From dew-kissed leaves and petals',
                            ),
                            Question(
                              questionText: 'What was Lily, the young fairy, destined to discover?',
                              options: ['A new recipe', 'A long-lost secret', 'A hidden treasure', 'A rare flower'],
                              correctAnswer: 'A long-lost secret that would rekindle the magic of the forest',
                            )
                          ],lessontitle: 'Enchanted Fairy Village'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_20") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 21",
                    lessonSubtitle: "Space Colonization Challenges",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_21", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The challenges of space colonization are immense, yet the prospect of establishing human outposts on other planets has captured our imagination. Mars, as the most promising candidate, presents unique hurdles that require innovative solutions in areas such as life support systems, radiation protection, and resource utilization.',
                          questions: [
                            Question(
                              questionText: 'What are the challenges of space colonization?',
                              options: ['No challenges at all', 'Challenges are insignificant', 'Challenges are immense', 'Challenges are fictional'],
                              correctAnswer: 'Challenges are immense',
                            ),
                            Question(
                              questionText: 'Which planet is described as the most promising candidate for space colonization?',
                              options: ['Jupiter', 'Earth', 'Mars', 'Saturn'],
                              correctAnswer: 'Mars',
                            ),
                            Question(
                              questionText: 'What areas require innovative solutions for space colonization on Mars?',
                              options: ['Cooking techniques', 'Gardening', 'Life support systems, radiation protection, and resource utilization', 'Telecommunications'],
                              correctAnswer: 'Life support systems, radiation protection, and resource utilization',
                            )
                          ],lessontitle: 'Space Colonization Challenges'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_21") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 22",
                    lessonSubtitle: "Mountain Waterfall Symphony",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_22", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'High in the mountains, a cascading waterfall provided a mesmerizing display of nature\'s power. Its crystal-clear waters tumbled down the rocky cliffs, nourishing the emerald forests below. The sound of rushing water echoed through the valley, a symphony that harmonized with the breathtaking scenery.',
                          questions: [
                            Question(
                              questionText: 'Where is the cascading waterfall located?',
                              options: ['In a desert', 'Deep in the ocean', 'High in the mountains', 'In a dense forest'],
                              correctAnswer: 'High in the mountains',
                            ),
                            Question(
                              questionText: 'What does the waterfall\'s crystal-clear waters do as they tumble down the rocky cliffs?',
                              options: ['Evaporate into mist', 'Freeze into ice', 'Nourish the emerald forests below', 'Disappear into thin air'],
                              correctAnswer: 'Nourish the emerald forests below',
                            ),
                            Question(
                              questionText: 'What harmonizes with the breathtaking scenery of the waterfall?',
                              options: ['A noisy crowd', 'A traffic jam', 'The sound of rushing water', 'Silence'],
                              correctAnswer: 'The sound of rushing water',
                            )
                          ],lessontitle: 'Mountain Waterfall Symphony'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_22") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 23",
                    lessonSubtitle: "Time Harmonium Invention",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_23", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'On a remote island, a reclusive inventor named Victor crafted a peculiar contraption. His "Time Harmonium" could capture and store moments in time. As he explored its potential, he discovered that reliving the past had unexpected consequences, leading him on an extraordinary journey to understand the nature of time itself.',
                          questions: [
                            Question(
                              questionText: 'What did the reclusive inventor Victor create?',
                              options: ['A magical castle', 'A time-travel machine', 'A peculiar contraption', 'A rocket to the moon'],
                              correctAnswer: 'A peculiar contraption',
                            ),
                            Question(
                              questionText: 'What could Victor\'s "Time Harmonium" capture and store?',
                              options: ['Stones and rocks', 'Energy and power', 'Moments in time', 'Music and melodies'],
                              correctAnswer: 'Moments in time',
                            ),
                            Question(
                              questionText: 'What did Victor discover as he explored the Time Harmonium\'s potential?',
                              options: ['It had no potential', 'It could make him rich', 'Reliving the past had unexpected consequences', 'It was a simple device'],
                              correctAnswer: 'Reliving the past had unexpected consequences',
                            )
                          ],lessontitle: 'Time Harmonium Invention'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_23") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 24",
                    lessonSubtitle: "Universal Basic Income",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_24", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The concept of universal basic income has gained momentum as a potential solution to economic inequality. By providing all citizens with a regular stipend, it offers financial security and the ability to pursue creative and entrepreneurial endeavors, ultimately fostering economic stability and social well-being.',
                          questions: [
                            Question(
                              questionText: 'What concept has gained momentum as a potential solution to economic inequality?',
                              options: ['Tax increases', 'Universal healthcare', 'Universal Basic Income', 'Higher education'],
                              correctAnswer: 'Universal Basic Income',
                            ),
                            Question(
                              questionText: 'What does universal basic income provide to all citizens?',
                              options: ['Free housing', 'A fancy car', 'A regular stipend', 'A personal chef'],
                              correctAnswer: 'A regular stipend',
                            ),
                            Question(
                              questionText: 'How does universal basic income impact economic stability and social well-being?',
                              options: ['It causes economic instability', 'It has no impact', 'It fosters economic stability and social well-being', 'It leads to increased unemployment'],
                              correctAnswer: 'It fosters economic stability and social well-being',
                            )
                          ],lessontitle: 'Universal Basic Income'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_24") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 25",
                    lessonSubtitle: "Forgotten Civilization Artifacts",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_25", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'Amid the ancient ruins of a forgotten civilization, an archaeologist uncovered a trove of artifacts. These relics offered glimpses into the mysteries of a bygone era, shedding light on the customs, technologies, and artistic achievements of a culture lost to time.',
                          questions: [
                            Question(
                              questionText: 'What did the archaeologist uncover amid the ancient ruins?',
                              options: ['A hidden treasure', 'A trove of artifacts', 'A time machine', 'A pile of rocks'],
                              correctAnswer: 'A trove of artifacts',
                            ),
                            Question(
                              questionText: 'What did the relics shed light on?',
                              options: ['The archaeologist\'s future plans', 'The mysteries of a bygone era', 'The weather in the region', 'The latest fashion trends'],
                              correctAnswer: 'The mysteries of a bygone era',
                            )
                          ],lessontitle: 'Forgotten Civilization Artifacts'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_25") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 26",
                    lessonSubtitle: "Dreamweaver\'s Quest",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_26", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In a realm where dreams held tangible power, a young dreamweaver named Aria was tasked with restoring a world plagued by nightmares. Armed with a silver spindle, she embarked on a quest to unravel the darkest dreams and weave a new tapestry of hope for her people.',
                          questions: [
                            Question(
                              questionText: 'What task was the young dreamweaver named Aria assigned?',
                              options: ['Solving math problems', 'Restoring a world plagued by nightmares', 'Cooking a delicious meal', 'Building a castle'],
                              correctAnswer: 'Restoring a world plagued by nightmares',
                            ),
                            Question(
                              questionText: 'What did Aria use to unravel the darkest dreams and weave a new tapestry of hope?',
                              options: ['A magic wand', 'A silver spoon', 'A silver spindle', 'A pair of scissors'],
                              correctAnswer: 'A silver spindle',
                            )
                          ],lessontitle: 'Dreamweaver\'s Quest'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_26") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 27",
                    lessonSubtitle: "Workforce Automation Debate",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_27", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'The impact of automation on the workforce is a topic of significant debate. While automation brings increased efficiency and innovation, it also raises concerns about job displacement and the need for retraining. Striking a balance between technological progress and preserving employment opportunities is a challenge that society must address.',
                          questions: [
                            Question(
                              questionText: 'What is the impact of automation on the workforce?',
                              options: ['No impact at all', 'Decreased efficiency', 'Increased efficiency and innovation', 'Reduced job opportunities'],
                              correctAnswer: 'Increased efficiency and innovation',
                            ),
                            Question(
                              questionText: 'What concerns does automation raise about the workforce?',
                              options: ['The need for shorter work hours', 'Job promotions', 'Job displacement and the need for retraining', 'Higher salaries'],
                              correctAnswer: 'Job displacement and the need for retraining',
                            ),
                            Question(
                              questionText: 'What is the challenge that society must address regarding automation?',
                              options: ['Finding more jobs', 'Promoting job displacement', 'Striking a balance between technological progress and preserving employment opportunities', 'Eliminating all jobs'],
                              correctAnswer: 'Striking a balance between technological progress and preserving employment opportunities',
                            )
                          ],lessontitle: 'Workforce Automation Debate'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_27") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 28",
                    lessonSubtitle: "Ancient Forest Whispers",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_28", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'Beneath the canopy of a centuries-old forest, the whispers of the wind were punctuated by the songs of colorful birds. The interplay of light and shadow created a mesmerizing dance on the forest floor, where age-old trees bore witness to the passing of generations.',
                          questions: [
                            Question(
                              questionText: 'What were the whispers of the wind beneath the forest canopy punctuated by?',
                              options: ['Traffic noise', 'The songs of colorful birds', 'Construction sounds', 'Silence'],
                              correctAnswer: 'The songs of colorful birds',
                            ),
                            Question(
                              questionText: 'What mesmerizing dance was created on the forest floor?',
                              options: ['A dance party', 'A dance of fireflies', 'A dance of light and shadow', 'A dance of wild animals'],
                              correctAnswer: 'A dance of light and shadow',
                            )
                          ],lessontitle: 'Ancient Forest Whispers'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_28") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 29",
                    lessonSubtitle: "Eldoria\'s Mystical Quest",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_29", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In the mystical city of Eldoria, a mystical portal was said to grant the wishes of those who solved its riddles. A daring adventurer named Finn embarked on a quest to decipher the portal\'s mysteries, accompanied by an enigmatic guide. The journey was marked by puzzles, dangers, and revelations that would shape the destiny of Eldoria itself.',
                          questions: [
                            Question(
                              questionText: 'What was the purpose of the mystical portal in Eldoria?',
                              options: ['To sell magical items', 'To block entry into the city', 'To grant the wishes of those who solved its riddles', 'To transport people to another world'],
                              correctAnswer: 'To grant the wishes of those who solved its riddles',
                            ),
                            Question(
                              questionText: 'Who accompanied the daring adventurer Finn on his quest to decipher the portal\'s mysteries?',
                              options: ['A talking parrot', 'An enigmatic guide', 'A ferocious dragon', 'A team of scientists'],
                              correctAnswer: 'An enigmatic guide',
                            ),
                            Question(
                              questionText: 'How was the journey of Finn marked in Eldoria?',
                              options: ['By constant celebrations', 'By solving riddles', 'By avoiding all challenges', 'By taking a leisurely walk'],
                              correctAnswer: 'By solving riddles',
                            )
                          ],lessontitle: 'Eldoria\'s Mystical Quest'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_29") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
                CustomLessonCard(
                    lessonTitle: "Lesson 30",
                    lessonSubtitle: "Serenity Cove Sunsets",
                    onTap: () async {
                      await sharedPref.setBool("LL_lesson_30", true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextToSpeechScreen(textToSpeak: 'In a quaint seaside village named Serenity Cove, the coastline was a canvas painted with hues of blue and gold by the setting sun. Every evening, as the last rays kissed the horizon, the villagers gathered on the beach to watch the mesmerizing spectacle. It was a cherished tradition that brought the community together, a reminder of the beauty that surrounded them, and a moment to appreciate the simple joys of life.',
                          questions: [
                            Question(
                              questionText: 'What was the coastline in Serenity Cove compared to during the setting sun?',
                              options: ['A dark abyss', 'A canvas painted with hues of blue and gold', 'A blank slate', 'A forest of trees'],
                              correctAnswer: 'A canvas painted with hues of blue and gold',
                            ),
                            Question(
                              questionText: 'Why did the villagers gather on the beach every evening?',
                              options: ['To have a bonfire', 'To go fishing', 'To watch the mesmerizing sunset', 'To swim in the ocean'],
                              correctAnswer: 'To watch the mesmerizing sunset',
                            ),
                            Question(
                              questionText: 'What did the sunset tradition represent for the villagers of Serenity Cove?',
                              options: ['A time for intense workouts', 'A moment to appreciate the simple joys of life', 'An opportunity to start work', 'A chance to go shopping'],
                              correctAnswer: 'A moment to appreciate the simple joys of life',
                            )
                          ],lessontitle: 'Serenity Cove Sunsets'),)).then((value) {
                        setState(() {});
                      });
                    },
                    isWatched: sharedPref.getBool("LL_lesson_30") ?? false,
                    icon: Icon(Icons.mic,color: Colors.white,)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CustomLessonCard extends StatelessWidget {
  final String lessonTitle;
  final String lessonSubtitle;
  final VoidCallback onTap;
  final Icon icon;
  final bool isWatched;

  CustomLessonCard({
    required this.lessonTitle,
    required this.lessonSubtitle,
    required this.onTap,
    required this.icon,
    required this.isWatched
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 80,
          width: 500,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.grey)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 20.0,
                    child: icon
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      lessonTitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Text(
                    lessonSubtitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Checkbox(
                value: isWatched,
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}