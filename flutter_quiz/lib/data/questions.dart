import '../classes/option.dart';
import '../classes/question.dart';

final GodOfWarIV_questions = [
  //  #1
  Question(
    text: '¿Por que Kratos es tan palido?',
    options: [
      Option(code: 'A', text: 'Es Gamer', isCorrect: false),
      Option(code: 'B', text: 'Es alergico a la luz del sol', isCorrect: false),
      Option(
          code: 'C',
          text:
              'Esta cubierto de pies a cabeza con las cenizas de su familia muerta',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'Estuvo encerrado durante mucho tiempo',
          isCorrect: false),
    ],
    solution:
        'Esta cubierto de pies a cabeza con las cenizas de su familia muerta',
  ),

  //  #2
  Question(
    text: '¿Cómo se llama la primera esposa de Kratos?',
    options: [
      Option(code: 'A', text: 'Caliope', isCorrect: false),
      Option(code: 'B', text: 'Selene', isCorrect: false),
      Option(code: 'C', text: 'Faye', isCorrect: false),
      Option(code: 'D', text: 'Lisandra', isCorrect: true),
    ],
    solution: 'Lisandra',
  ),

  //  #3
  Question(
    text: '¿Qué personaje narra los juegos griegos de God of War?',
    options: [
      Option(code: 'A', text: 'Atenea', isCorrect: false),
      Option(code: 'B', text: 'Caliope', isCorrect: false),
      Option(code: 'C', text: 'Gaia', isCorrect: true),
      Option(code: 'D', text: 'Lisandra', isCorrect: false),
    ],
    solution: 'Gaia',
  ),

  //  #4
  Question(
    text: '¿Cuál es el único juego de God of War que cuenta con multijugador?',
    options: [
      Option(code: 'A', text: 'God of War: Ghost of Sparta', isCorrect: false),
      Option(code: 'B', text: 'God of War (2018)', isCorrect: false),
      Option(code: 'C', text: "God of War 3", isCorrect: false),
      Option(code: 'D', text: "God of War: Ascensión", isCorrect: true),
    ],
    solution: 'God of War: Ascensión',
  ),

  //  #5
  Question(
    text: '¿Por qué tiene Kratos ese tatuaje rojo en el cuerpo?',
    options: [
      Option(
          code: 'A',
          text: 'Es un símbolo de su hermano menor, Deimos',
          isCorrect: true),
      Option(code: 'B', text: 'Pensó que se vería bien', isCorrect: false),
      Option(
          code: 'C', text: 'Es una tradición en su familia', isCorrect: false),
      Option(
          code: 'D',
          text: 'Fue atado a él al mismo tiempo que las cenizas',
          isCorrect: false),
    ],
    solution: 'Es un símbolo de su hermano menor, Deimos',
  ),

  //  #6
  Question(
    text: 'En God of War 2, se revela el padre de Kratos. ¿Quién es?',
    options: [
      Option(code: 'A', text: 'Cronos', isCorrect: false),
      Option(code: 'B', text: 'Zeus', isCorrect: true),
      Option(code: 'C', text: 'Ares', isCorrect: false),
      Option(code: 'D', text: 'Apolo', isCorrect: false),
    ],
    solution: 'Zeus',
  ),

  //  #7
  Question(
    text: '¿Quién fue el director de God of War 3?',
    options: [
      Option(code: 'A', text: 'Cory Barlog', isCorrect: false),
      Option(code: 'B', text: 'Stig Asmussen', isCorrect: true),
      Option(code: 'C', text: 'David Jaffe', isCorrect: false),
      Option(code: 'D', text: 'Ru Weerasuriya', isCorrect: false),
    ],
    solution: 'Stig Asmussen',
  ),

  //  #8
  Question(
    text: '¿Que titan acompaña siempre a Kratos?',
    options: [
      Option(code: 'A', text: 'Cronos', isCorrect: false),
      Option(code: 'B', text: 'Urano', isCorrect: false),
      Option(code: 'C', text: 'Gaia', isCorrect: false),
      Option(code: 'D', text: 'Crio', isCorrect: true),
    ],
    solution: '',
  ),

  //  #9
  Question(
    text:
        'God of War: Chains of Olympus es uno de los dos juegos de PSP. Cronológicamente, ¿dónde se encuentra dentro de la historia?',
    options: [
      Option(code: 'A', text: 'Entre Ascensión y 1', isCorrect: true),
      Option(code: 'B', text: 'Entre el 1 y el 2', isCorrect: false),
      Option(code: 'C', text: 'Entre el 2 y el 3', isCorrect: false),
      Option(
          code: 'D', text: 'Antes de todos los demás juegos', isCorrect: false),
    ],
    solution: 'Entre Ascensión y 1',
  ),

  //  #10
  Question(
    text: '¿Quién es el primer dios griego que muere en God of War 3?',
    options: [
      Option(code: 'A', text: 'Hades', isCorrect: false),
      Option(code: 'B', text: 'Helios', isCorrect: false),
      Option(code: 'C', text: 'Hercules', isCorrect: false),
      Option(code: 'D', text: 'Poseidon', isCorrect: true),
    ],
    solution: 'Poseidon',
  ),
];

final DarkSouls_questions = [
//  ---------------------1
  Question(
    text: 'What is the Lordvessel?',
    options: [
      Option(code: 'A', text: 'It´s the king´s coffin', isCorrect: false),
      Option(
          code: 'B',
          text:
              'It´s an item that grants you the art of warping between bonfires',
          isCorrect: true),
      Option(
          code: 'C',
          text:
              'It´s a consumable item that grants you an enormous amount of souls',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'It´s one of the most powerful weapons in the game',
          isCorrect: false),
    ],
    solution:
        'It´s an item that grants the player the art of warping between bonfires',
  ),
  //  ---------------------2
  Question(
    text:
        'What is the name of the weapon obtained from Seath the Scaleless by cutting off his tail?',
    options: [
      Option(code: 'A', text: 'Holy Moonlight Sword', isCorrect: false),
      Option(code: 'B', text: 'Moonlight Greatsword', isCorrect: true),
      Option(code: 'C', text: 'Large Sword of Moonlight', isCorrect: false),
      Option(code: 'D', text: 'Dragon´s Maw', isCorrect: false),
    ],
    solution: 'Moonlight Greatsword',
  ),
  //  ---------------------3
  Question(
    text: 'Is it always sunny in Anor Londo?',
    options: [
      Option(
          code: 'A',
          text: 'Of course! It´s the city of gods!',
          isCorrect: false),
      Option(code: 'B', text: 'It depends of the day', isCorrect: false),
      Option(
          code: 'C',
          text:
              'Although it appears to be always sunny, it´s just a mere illusion',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'It was, until the gods destroyed the dragons',
          isCorrect: false),
    ],
    solution:
        'Although it appears to be always sunny, it´s just a mere illusion',
  ),
  //  ---------------------4
  Question(
    text: 'What is the maximum upgrade level for a regular weapon?',
    options: [
      Option(code: 'A', text: '5', isCorrect: false),
      Option(code: 'B', text: '10', isCorrect: false),
      Option(code: 'C', text: '15', isCorrect: true),
      Option(code: 'D', text: '20', isCorrect: false),
    ],
    solution: '15',
  ),
  //  ---------------------5
  Question(
    text: 'What is the name of the first boss of the DLC?',
    options: [
      Option(code: 'A', text: 'Sanctuary Guardian', isCorrect: true),
      Option(
          code: 'B', text: 'Guardian Lion of the Sanctuary', isCorrect: false),
      Option(code: 'C', text: 'Great Grey Wolf Sif', isCorrect: false),
      Option(code: 'D', text: 'Oolacile Guardian', isCorrect: false),
    ],
    solution: 'Sanctuary Guardian',
  ),
  //  ---------------------6
  Question(
    text: 'How can you kill the ghosts enemies of New Londo?',
    options: [
      Option(code: 'A', text: 'You can´t kill them', isCorrect: false),
      Option(
          code: 'B',
          text: 'Being cursed or using a cursed weapon',
          isCorrect: true),
      Option(
          code: 'C',
          text: 'Using a divine weapon or a divine spell',
          isCorrect: false),
      Option(
          code: 'D', text: 'Attacking them with black magic', isCorrect: false),
    ],
    solution: 'Being cursed or using a cursed weapon',
  ),
  //  ---------------------7
  Question(
    text:
        'What is the most distinctive physical trait of the princess Gwynevere?',
    options: [
      Option(code: 'A', text: 'Her beautiful hair', isCorrect: false),
      Option(code: 'B', text: 'Her purple glowing eyes', isCorrect: false),
      Option(code: 'C', text: 'Her big chest', isCorrect: true),
      Option(code: 'D', text: 'Her feet', isCorrect: false),
    ],
    solution: 'You naughty boy! Her big chest',
  ),
  //  ---------------------8
  Question(
    text: 'What happened to Artorias left arm?',
    options: [
      Option(
          code: 'A',
          text: 'He broke his arm protecting his wolf Sif with his shield',
          isCorrect: true),
      Option(code: 'B', text: 'Nothing, it´s perfectly fine', isCorrect: false),
      Option(
          code: 'C',
          text: 'He broke his arm fighting against you',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'Nothing, the arm he broke was the right one',
          isCorrect: false),
    ],
    solution: 'He broke his arm protecting his wolf Sif with his shield',
  ),
  //  ---------------------9
  Question(
    text:
        'Where do you end up if you take the elevator inside the Undead Parish?',
    options: [
      Option(code: 'A', text: 'Undead Burg', isCorrect: false),
      Option(code: 'B', text: 'Majula', isCorrect: false),
      Option(code: 'C', text: 'Northern Undead Asylum', isCorrect: false),
      Option(code: 'D', text: 'Firelink Shrine', isCorrect: true),
    ],
    solution: 'Firelink Shrine',
  ),
  //  ---------------------10
  Question(
    text: 'What is the name of the place with the toxic swamp?',
    options: [
      Option(code: 'A', text: 'Depths', isCorrect: false),
      Option(code: 'B', text: 'Darkroot Garden', isCorrect: false),
      Option(code: 'C', text: 'Blighttown', isCorrect: true),
      Option(code: 'D', text: 'Amana Sanctuary', isCorrect: false),
    ],
    solution: 'Blighttown',
  ),
  //  ---------------------11
  Question(
    text: 'What is the name of the unique weapons upgrade material?',
    options: [
      Option(code: 'A', text: 'Twinkling titanite', isCorrect: false),
      Option(code: 'B', text: 'Dragon scale', isCorrect: false),
      Option(code: 'C', text: 'Demon titanite', isCorrect: false),
      Option(code: 'D', text: 'It depends', isCorrect: true),
    ],
    solution: 'It depends',
  ),
  //  ---------------------12
  Question(
    text: 'How many weapons can you obtain by chopping off boss´s tails?',
    options: [
      Option(code: 'A', text: '3', isCorrect: false),
      Option(code: 'B', text: '5', isCorrect: false),
      Option(code: 'C', text: '7', isCorrect: true),
      Option(code: 'D', text: '9', isCorrect: false),
    ],
    solution: '7',
  ),
//  ---------------------13
  Question(
    text: 'What are the names of the Four Knights of Gwyn?',
    options: [
      Option(
          code: 'A',
          text: 'Artorias, Ornstein & Smough, Gough and Ciaran',
          isCorrect: false),
      Option(
          code: 'B',
          text: 'Artorias, Ornstein, Smough and Ciaran',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'Artorias, Ornstein, Smough and Gough',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'Artorias, Ornstein, Gough and Ciaran',
          isCorrect: true),
    ],
    solution: 'Artorias, Ornstein, Gough and Ciaran',
  ),
  //  ---------------------14
  Question(
    text: 'How many endings are there in Dark Souls?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: true),
      Option(code: 'C', text: '3', isCorrect: false),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '2',
  ),
  //  ---------------------15
  Question(
    text: 'What of these weapon types it is not showcased in Dark Souls?',
    options: [
      Option(code: 'A', text: 'Katanas', isCorrect: false),
      Option(code: 'B', text: 'Great Hammers', isCorrect: false),
      Option(code: 'C', text: 'Colossal Swords', isCorrect: true),
      Option(code: 'D', text: 'Whips', isCorrect: false),
    ],
    solution: 'Colossal Swords. That´s Elden Ring you idiot!',
  ),
  //  ---------------------16
  Question(
    text:
        'What do you need to do in order to enter to the Painted World of Ariamis?',
    options: [
      Option(
          code: 'A',
          text: 'To have found the peculiar doll item in the Undead Parish',
          isCorrect: false),
      Option(
          code: 'B',
          text: 'To have found Slave Knight Gael in the Cathedral of the Deep',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'To have found the peculiar doll item in the Undead Asylum',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'To have found Slave Knight Gael in the Undead Asylum',
          isCorrect: false),
    ],
    solution: 'To have found the peculiar doll item in the Undead Asylum',
  ),
];

final Bloodborne_questions = [
  Question(
    text:
        'What is the name of the weapon obtained from Seath the Scaleless by cutting off his tail?',
    options: [
      Option(code: 'A', text: 'Holy Moonlight Sword', isCorrect: false),
      Option(code: 'B', text: 'Moonlight Greatsword', isCorrect: true),
      Option(code: 'C', text: 'Large Sword of Moonlight', isCorrect: false),
      Option(code: 'D', text: 'Dragon´s Maw', isCorrect: false),
    ],
    solution: 'Moonlight Greatsword',
  ),
];
final Pokemon_questions = [
  Question(
    text: 'Cual es el pokemon que mas ha capturado Ash?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'a?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'b?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'c?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
];

final Fifa_questions = [
  Question(
    text: 'Cual es el pokemon que mas ha capturado Ash?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'a?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'b?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'c?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
];

final MetalGear_questions = [
  Question(
    text: 'Cual es el pokemon que mas ha capturado Ash?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'a?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'b?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'c?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
];

final GearsOfHell_questions = [
  Question(
    text: 'Cual es el pokemon que mas ha capturado Ash?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'a?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'b?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
  Question(
    text: 'c?',
    options: [
      Option(code: 'A', text: 'Pikachu', isCorrect: false),
      Option(code: 'B', text: 'Tauros', isCorrect: true),
      Option(code: 'C', text: 'Weedle', isCorrect: false),
      Option(code: 'D', text: 'Charmander', isCorrect: false),
    ],
    solution: 'Tauros',
  ),
];

// MARIO BROS ENGLISH QUESTIONS
final mario_bros_questions_en = [
  //  #1
  Question(
    text: 'Mario was created by which company?',
    options: [
      Option(code: 'A', text: 'Roblox Corp', isCorrect: false),
      Option(code: 'B', text: 'Sega', isCorrect: false),
      Option(code: 'C', text: 'Nintendo', isCorrect: true),
      Option(code: 'D', text: 'Kellogs', isCorrect: false),
    ],
    solution: 'Nintendo',
  ),

  //  #2
  Question(
    text: 'What is Mario’s job?',
    options: [
      Option(code: 'A', text: 'Baker', isCorrect: false),
      Option(code: 'B', text: 'Electrician', isCorrect: false),
      Option(code: 'C', text: 'Carpenter', isCorrect: false),
      Option(code: 'D', text: 'Plumber', isCorrect: true),
    ],
    solution: 'Plumber',
  ),

  //  #3
  Question(
    text: 'What was the first game Mario appeared in?',
    options: [
      Option(code: 'A', text: 'Donkey Kong', isCorrect: true),
      Option(code: 'B', text: 'Monkey Kong', isCorrect: false),
      Option(code: 'C', text: 'Sonic', isCorrect: false),
      Option(code: 'D', text: 'Super Mario Bros 2', isCorrect: false),
    ],
    solution: 'Donkey Kong',
  ),

  //  #4
  Question(
    text: 'What type of animal is Donkey Kong?',
    options: [
      Option(code: 'A', text: 'Donkey', isCorrect: false),
      Option(code: 'B', text: 'Gorilla', isCorrect: true),
      Option(code: 'C', text: "Dog", isCorrect: false),
      Option(code: 'D', text: "Horse", isCorrect: false),
    ],
    solution: 'Gorilla',
  ),

  //  #5
  Question(
    text: 'What colour is Mario’s hat?',
    options: [
      Option(code: 'A', text: 'Blue', isCorrect: false),
      Option(code: 'B', text: 'Green', isCorrect: false),
      Option(code: 'C', text: 'Red', isCorrect: true),
      Option(code: 'D', text: 'Purple', isCorrect: false),
    ],
    solution: 'Red',
  ),

  //  #6
  Question(
    text: 'Who is Mario’s brother?',
    options: [
      Option(code: 'A', text: 'Wario', isCorrect: false),
      Option(code: 'B', text: 'Luigi', isCorrect: true),
      Option(code: 'C', text: 'Waluigi', isCorrect: false),
      Option(code: 'D', text: 'Plumber Boy', isCorrect: false),
    ],
    solution: 'Luigi',
  ),

  //  #7
  Question(
    text: 'What colour are Mario’s usual dungarees?',
    options: [
      Option(code: 'A', text: 'Red', isCorrect: false),
      Option(code: 'B', text: 'Blue', isCorrect: true),
      Option(code: 'C', text: 'Green', isCorrect: false),
      Option(code: 'D', text: 'White', isCorrect: false),
    ],
    solution: 'Blue',
  ),

  //  #8
  Question(
    text: 'What’s the name of the dinosaur Mario hangs about with?',
    options: [
      Option(code: 'A', text: 'Moshi', isCorrect: false),
      Option(code: 'B', text: 'Yoshi', isCorrect: true),
      Option(code: 'C', text: 'Eduardo', isCorrect: false),
      Option(code: 'D', text: 'Yoyo', isCorrect: false),
    ],
    solution: 'Yoshi',
  ),

  //  #9
  Question(
    text: 'What is written on Mario’s hat?',
    options: [
      Option(code: 'A', text: 'M', isCorrect: true),
      Option(code: 'B', text: 'Ma', isCorrect: false),
      Option(code: 'C', text: 'M.', isCorrect: false),
      Option(code: 'D', text: 'Mario', isCorrect: false),
    ],
    solution: 'M',
  ),

  //  #10
  Question(
    text: 'Which of these isn’t a real game?',
    options: [
      Option(code: 'A', text: 'Donkey Kong', isCorrect: false),
      Option(code: 'B', text: 'Mario Kart', isCorrect: false),
      Option(code: 'C', text: 'Mario Tennis', isCorrect: false),
      Option(code: 'D', text: 'Mario Dance', isCorrect: true),
    ],
    solution: 'Mario Dance',
  ),

  //  #11
  Question(
    text: 'What year did the first Mario game come out?',
    options: [
      Option(code: 'A', text: '1985', isCorrect: true),
      Option(code: 'B', text: '1990', isCorrect: false),
      Option(code: 'C', text: '1995', isCorrect: false),
      Option(code: 'D', text: '2000', isCorrect: false),
    ],
    solution: '1985',
  ),

  //  #12
  Question(
    text: 'Which other game did Mario first appear in?',
    options: [
      Option(code: 'A', text: 'Pokémon', isCorrect: false),
      Option(code: 'B', text: 'Donkey Kong', isCorrect: true),
      Option(code: 'C', text: 'The Lengend of Zelda', isCorrect: false),
      Option(code: 'D', text: 'Spiro', isCorrect: false),
    ],
    solution: 'Donkey Kong',
  ),

  //  #13
  Question(
    text: 'How many levels were in the first game?',
    options: [
      Option(code: 'A', text: '19', isCorrect: false),
      Option(code: 'B', text: '25', isCorrect: false),
      Option(code: 'C', text: '32', isCorrect: true),
      Option(code: 'D', text: '40', isCorrect: false),
    ],
    solution: '32',
  ),

  //  #14
  Question(
    text: 'What are Goombas called in Japan?',
    options: [
      Option(code: 'A', text: 'Sakura', isCorrect: false),
      Option(code: 'B', text: 'Tanuki', isCorrect: false),
      Option(code: 'C', text: 'Kinoko', isCorrect: false),
      Option(code: 'D', text: 'Kuribo', isCorrect: true),
    ],
    solution: 'Kuribo',
  ),

  //  #15
  Question(
    text: 'What type of mushroom are Goombas based on?',
    options: [
      Option(code: 'A', text: 'Chestnut', isCorrect: false),
      Option(code: 'B', text: 'Shiitake', isCorrect: true),
      Option(code: 'C', text: 'Closed cup', isCorrect: false),
      Option(code: 'D', text: 'Porcini', isCorrect: false),
    ],
    solution: 'Shiitake',
  ),

  //  #16
  Question(
    text: 'What is Yoshi?',
    options: [
      Option(code: 'A', text: 'A dinosaur', isCorrect: true),
      Option(code: 'B', text: 'A lizard', isCorrect: false),
      Option(code: 'C', text: 'A toad', isCorrect: false),
      Option(code: 'D', text: 'A dragon', isCorrect: false),
    ],
    solution: 'A dinosaur',
  ),

  //  #17
  Question(
    text: 'Who is Koji Kondo?',
    options: [
      Option(code: 'A', text: 'The creator', isCorrect: false),
      Option(code: 'B', text: 'A character', isCorrect: false),
      Option(code: 'C', text: 'The game´s composer', isCorrect: true),
      Option(code: 'D', text: 'Some random guy', isCorrect: false),
    ],
    solution: 'The game´s composer',
  ),

  //  #18
  Question(
    text: 'What did Nintendo declare that August was?',
    options: [
      Option(code: 'A', text: 'National Gaming Month', isCorrect: false),
      Option(code: 'B', text: 'Mario Month', isCorrect: false),
      Option(code: 'C', text: 'National Peach Month', isCorrect: true),
      Option(code: 'D', text: 'National Mushroom Month', isCorrect: false),
    ],
    solution: 'National Peach Month',
  ),

  //  #19
  Question(
    text: 'True or false: Mario was originally meant to be a carpenter?',
    options: [
      Option(code: 'A', text: 'True', isCorrect: true),
      Option(code: 'B', text: 'False', isCorrect: false),
    ],
    solution: 'True',
  ),

  //  #20
  Question(
    text: 'What was Mario originally going to be called?',
    options: [
      Option(code: 'A', text: 'Mushroom Man', isCorrect: false),
      Option(code: 'B', text: 'Plumber Guy', isCorrect: false),
      Option(code: 'C', text: 'Jumpman', isCorrect: true),
      Option(code: 'D', text: 'Tony Pipes', isCorrect: false),
    ],
    solution: 'Jumpman',
  ),
];

// THE LEGEND OF ZELDA ENGLISH QUESTIONS
final zelda_questions_en = [
  // #1
  Question(
    text: 'Where is Zelda from?',
    options: [
      Option(code: 'A', text: 'Hyrule', isCorrect: true),
      Option(code: 'B', text: 'Lorule', isCorrect: false),
      Option(code: 'C', text: 'Necluda', isCorrect: false),
      Option(code: 'D', text: 'Faron', isCorrect: false),
    ],
    solution: 'Hyrule',
  ),

  // #2
  Question(
    text: 'What three virtues make up the Triforce?',
    options: [
      Option(code: 'A', text: 'Power, Wisdom, Courage', isCorrect: true),
      Option(code: 'B', text: 'Power, Wisdom, Faith', isCorrect: false),
      Option(code: 'C', text: 'Power, Wisdom, Humility', isCorrect: false),
      Option(code: 'D', text: 'Bacon, Lettuce, Tomato', isCorrect: false),
    ],
    solution: 'Power, Wisdom, Courage',
  ),

  // #3
  Question(
    text: 'Which tree protects Holodrum?',
    options: [
      Option(code: 'A', text: 'Maku', isCorrect: true),
      Option(code: 'B', text: 'Coconut', isCorrect: false),
      Option(code: 'C', text: 'Baobab', isCorrect: false),
      Option(code: 'D', text: 'Pelican', isCorrect: false),
    ],
    solution: 'Maku',
  ),

  // #4
  Question(
    text: 'What is the main setting of Triforce Heroes?',
    options: [
      Option(code: 'A', text: 'Holodrum', isCorrect: false),
      Option(code: 'B', text: 'Hytopia', isCorrect: true),
      Option(code: 'C', text: 'Koholint Island', isCorrect: false),
      Option(code: 'D', text: 'The Great Sea', isCorrect: false),
    ],
    solution: 'Hytopia',
  ),

  // #5
  Question(
    text: 'What sits at the top of Koholint Island’s highest peak?',
    options: [
      Option(code: 'A', text: 'Sausage', isCorrect: false),
      Option(code: 'B', text: 'Bacon', isCorrect: false),
      Option(code: 'C', text: 'Egg', isCorrect: true),
      Option(code: 'D', text: 'Fried Bread', isCorrect: false),
    ],
    solution: 'Egg',
  ),

  // #6
  Question(
    text: 'Who created Ancient Robots?',
    options: [
      Option(code: 'A', text: 'Thunder Dragon Lanayru', isCorrect: true),
      Option(code: 'B', text: 'Rain Dragon Lanayru', isCorrect: false),
      Option(code: 'C', text: 'Storm Dragon Lanayru', isCorrect: false),
      Option(code: 'D', text: 'Drizzle Dragon Lanayru', isCorrect: false),
    ],
    solution: 'Thunder Dragon Lanayru',
  ),

  // #7
  Question(
    text: 'Who are the pixie-like race who inhabit the forest?',
    options: [
      Option(code: 'A', text: 'Lokiri', isCorrect: false),
      Option(code: 'B', text: 'Moxie', isCorrect: false),
      Option(code: 'C', text: 'Pixolotls', isCorrect: false),
      Option(code: 'D', text: 'Kokori', isCorrect: true),
    ],
    solution: 'Kokori',
  ),

  // #8
  Question(
    text: 'In which game featuring Mario, do the Occoo also appear?',
    options: [
      Option(code: 'A', text: 'Donkey Kong', isCorrect: false),
      Option(code: 'B', text: 'Super Mario Bros', isCorrect: true),
      Option(code: 'C', text: 'Mario Kart', isCorrect: false),
      Option(code: 'D', text: 'Super Mario', isCorrect: false),
    ],
    solution: 'Super Mario Bros',
  ),

  // #9
  Question(
    text: 'What colour eyes do the Sheikah have?',
    options: [
      Option(code: 'A', text: 'Yellow', isCorrect: false),
      Option(code: 'B', text: 'Red', isCorrect: true),
      Option(code: 'C', text: 'Black', isCorrect: false),
      Option(code: 'D', text: 'Green', isCorrect: false),
    ],
    solution: 'Red',
  ),

  // #10
  Question(
    text: 'What is The Blade of Evil´s Bane?',
    options: [
      Option(code: 'A', text: 'A sword', isCorrect: true),
      Option(code: 'B', text: 'A spell', isCorrect: false),
      Option(code: 'C', text: 'A spear', isCorrect: false),
      Option(code: 'D', text: 'An assassin', isCorrect: false),
    ],
    solution: 'A sword',
  ),
];

// CALL OF DUTY ENGLISH QUESTIONS
final call_of_duty_questions_en = [
  // #1
  Question(
    text: 'When was the first Call of Duty title released?',
    options: [
      Option(code: 'A', text: '2003', isCorrect: true),
      Option(code: 'B', text: '2007', isCorrect: false),
      Option(code: 'C', text: '2010', isCorrect: false),
    ],
    solution: 'The first title came out on October 23, 2003.',
  ),

  // #2
  Question(
    text:
        'Fans watched how much "Advanced Warfare" gameplay during opening week, alone?',
    options: [
      Option(code: 'A', text: '1 million', isCorrect: false),
      Option(code: 'B', text: '5 million', isCorrect: true),
      Option(code: 'C', text: '16 million', isCorrect: false),
    ],
    solution: 'Fans watched 5 million hours -- 623 years -- in just 7 days.',
  ),

  // #3
  Question(
    text: 'How many grenades are thrown in CoD games over 5 years?',
    options: [
      Option(code: 'A', text: '175 million', isCorrect: false),
      Option(code: 'B', text: '300 million', isCorrect: true),
      Option(code: 'C', text: '579 million', isCorrect: false),
    ],
    solution: 'More than 300 billion grenades.',
  ),

  // #4
  Question(
    text: 'Exo Suits were introduced in which CoD series?',
    options: [
      Option(code: 'A', text: 'Advanced Warfare', isCorrect: true),
      Option(code: 'B', text: 'Black Ops', isCorrect: false),
      Option(code: 'C', text: 'World at War', isCorrect: false),
    ],
    solution: '"Advanced Warfare" was the debut of Exo Suits.',
  ),

  // #5
  Question(
    text: '"Modern Warfare 3" sold how many copies in its first month?',
    options: [
      Option(code: 'A', text: '7.4 million', isCorrect: false),
      Option(code: 'B', text: '8.8 million', isCorrect: true),
      Option(code: 'C', text: '10.2 million', isCorrect: false),
    ],
    solution: 'MS3 sold 8.8 million copies in the first month.',
  ),

  // #6
  Question(
    text: 'How do you unlock the Burger Town emblem in "Modern Warfare 3?"',
    options: [
      Option(
          code: 'A',
          text: 'Call 3 assault UAVs in one match',
          isCorrect: false),
      Option(
          code: 'B',
          text: 'Get 200 one-shot kills with sniper rifles',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'Kill 20 enemies with cooked grenades',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'Stick 30 players with a Semtex grenade',
          isCorrect: false),
    ],
    solution:
        'Complete the "Master Chef: III" challenge by killing 20 enemies with cooked grenades.',
  ),

  // #7
  Question(
    text:
        'Which team won the 2015 "Call of Duty" Championship held in Los Angeles?',
    options: [
      Option(code: 'A', text: 'Denial eSports', isCorrect: true),
      Option(code: 'B', text: 'FaZe Red', isCorrect: false),
      Option(code: 'C', text: 'Team EnVyUs', isCorrect: false),
    ],
    solution:
        'Denial eSports -- made up of Attach, Clayster, Jkap and Replays -- placed first.',
  ),

  // #8
  Question(
    text:
        'What was the cash prize handed out to the top "Call of Duty: Advanced Warfare" gamers in 2015?',
    options: [
      Option(code: 'A', text: '500,000 dollars', isCorrect: false),
      Option(code: 'B', text: '1 million dollars', isCorrect: true),
      Option(code: 'C', text: '5 million dollars', isCorrect: false),
    ],
    solution: 'The 32-team tournament had a 1 million dollar prize.',
  ),

  // #9
  Question(
    text: 'What war is "World at War" based on?',
    options: [
      Option(code: 'A', text: 'Gulf War', isCorrect: false),
      Option(code: 'B', text: 'Vietnam', isCorrect: false),
      Option(code: 'C', text: 'WWI', isCorrect: false),
      Option(code: 'D', text: 'WWII', isCorrect: true),
    ],
    solution: '"World at War" is set during WWII',
  ),

  // #10
  Question(
    text:
        'Manned vehicles disappeared after "World at War," but returned in which new series?',
    options: [
      Option(code: 'A', text: 'Advanced Warfare', isCorrect: true),
      Option(code: 'B', text: 'Ghosts', isCorrect: false),
      Option(code: 'C', text: 'Modern Warfare 3', isCorrect: false),
    ],
    solution: 'Hoverbikes returned in "Advanced Warfare."',
  ),

  // #11
  Question(
    text:
        'Which country used "Modern Warfare 3" footage in anti-American propaganda?',
    options: [
      Option(code: 'A', text: 'China', isCorrect: false),
      Option(code: 'B', text: 'Iran', isCorrect: false),
      Option(code: 'C', text: 'North Korea', isCorrect: true),
      Option(code: 'D', text: 'Russia', isCorrect: false),
    ],
    solution: 'North Korean used MW3 footage in a 2013 propaganda film.',
  ),

  // #12
  Question(
    text: 'Which map was the first zombie map?',
    options: [
      Option(code: 'A', text: 'Call of the Dead', isCorrect: false),
      Option(code: 'B', text: 'Origins', isCorrect: false),
      Option(code: 'C', text: 'Shangri-La', isCorrect: false),
      Option(code: 'D', text: 'Verrückt', isCorrect: true),
    ],
    solution: 'Verrückt was the first.',
  ),
];

// SLY COOPER SAGA ENGLISH QUESTIONS
final zelda_questions_es = [
  // #1
  Question(
    text: 'How did Bentley come to be in a wheel chair?',
    options: [
      Option(
          code: 'A',
          text: "Clockwerk's beak crushed his legs.",
          isCorrect: true),
      Option(code: 'B', text: 'Fell down the stairs.', isCorrect: false),
      Option(
          code: 'C',
          text: 'He ate something bad for dinner.',
          isCorrect: false),
      Option(
          code: 'D',
          text:
              'Carmelita shot at the climbing device causing it to fall from a great height.',
          isCorrect: false),
    ],
    solution:
        "Clockwerk's beak crushed his legs as he tried to remove the 'chip-of-hate'.",
  ),

  // #2
  Question(
    text:
        "Which development company is behind 'Sly Cooper 3: Honor Among Thieves'?",
    options: [
      Option(code: 'A', text: 'Imsomniac', isCorrect: false),
      Option(code: 'B', text: 'Team ICO', isCorrect: false),
      Option(code: 'C', text: 'Sucker Punch Productions', isCorrect: true),
      Option(code: 'D', text: 'Naughty Dog', isCorrect: false),
    ],
    solution: 'Sucker Punch Productions, the creators of Sekiro.',
  ),

  // #3
  Question(
    text: "What kind of animal is Sly?",
    options: [
      Option(code: 'A', text: 'Weasel', isCorrect: false),
      Option(code: 'B', text: 'Bobcat', isCorrect: false),
      Option(code: 'C', text: 'Hippo', isCorrect: false),
      Option(code: 'D', text: 'Racoon', isCorrect: true),
    ],
    solution: 'Sucker Punch Productions, the creators of Sekiro.',
  ),

  // #4
  Question(
    text: "What does Carmelita Fox do for a living?",
    options: [
      Option(code: 'A', text: 'Inspector', isCorrect: true),
      Option(code: 'B', text: 'Private Military Contractor', isCorrect: false),
      Option(code: 'C', text: 'Detective', isCorrect: false),
      Option(code: 'D', text: 'Police Agent', isCorrect: false),
    ],
    solution: 'Inspector, she is also know as Inspector Fox',
  ),

  // #5
  Question(
    text: "What kind of animal is Bentley?",
    options: [
      Option(code: 'A', text: 'Weasel', isCorrect: false),
      Option(code: 'B', text: 'Bobcat', isCorrect: false),
      Option(code: 'C', text: 'Hippo', isCorrect: false),
      Option(code: 'D', text: 'Racoon', isCorrect: true),
    ],
    solution: 'Sucker Punch Productions, the creators of Sekiro.',
  ),

  // #6
  Question(
    text: "What kind of animal is Murray?",
    options: [
      Option(code: 'A', text: 'Hippo', isCorrect: true),
      Option(code: 'B', text: 'Rhino', isCorrect: false),
      Option(code: 'C', text: 'Elephant', isCorrect: false),
      Option(code: 'D', text: 'Steer', isCorrect: false),
    ],
    solution: 'Sucker Punch Productions, the creators of Sekiro.',
  ),
];
