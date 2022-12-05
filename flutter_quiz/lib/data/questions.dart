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
    text: 'What year was released the Bloodborne DLC "The old hunters"?',
    options: [
      Option(code: 'A', text: '2014', isCorrect: false),
      Option(code: 'B', text: '2015', isCorrect: true),
      Option(code: 'C', text: '2016', isCorrect: false),
    ],
    solution: 'November of 2015, the same year of the game release date',
  ),
  Question(
    text:
        'What famous writer is the atmosphere of Bloodborne greatly inspired by?',
    options: [
      Option(code: 'A', text: 'Edgar Allan Poe', isCorrect: false),
      Option(code: 'B', text: 'Howard Philip Lovecraft', isCorrect: true),
      Option(code: 'C', text: 'Robert William Chambers', isCorrect: false),
      Option(code: 'D', text: 'Richard Bachman', isCorrect: false),
    ],
    solution: 'H.P Lovecraft',
  ),
  Question(
    text:
        'How many umbilical cords do you need to use in order to gain access to the ending "Childhood´s Beginning"?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '3',
  ),
  Question(
    text: 'How do you parry an enemy in bloodborne?',
    options: [
      Option(
          code: 'A',
          text: 'By shooting him with your firearm at the right time',
          isCorrect: true),
      Option(
          code: 'B',
          text: 'By guarding with your melee weapon at the right time',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'By raising your shield at the right time',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'By shooting with your firearm at the arm of the enemy',
          isCorrect: false),
    ],
    solution: 'By shooting him with your firearm at the right time',
  ),
  //5
  Question(
    text: 'What is the name of the inhabitants of the labrynth below Yharnam?',
    options: [
      Option(code: 'A', text: 'Pthumerians', isCorrect: true),
      Option(code: 'B', text: 'Misbegottens', isCorrect: false),
      Option(code: 'C', text: 'Albinaurics', isCorrect: false),
      Option(code: 'D', text: 'White-faced locusts', isCorrect: false),
    ],
    solution: 'Pthumerians',
  ),
  Question(
    text: 'What happens to Vicaria Amelia when you encounter her?',
    options: [
      Option(
          code: 'A',
          text: 'She attacks you with her trick weapon',
          isCorrect: false),
      Option(
          code: 'B',
          text: 'She begs you to save her from her nightmare',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'She transforms into an horrifying beast',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'She is in those days of the month',
          isCorrect: false),
    ],
    solution: 'She transforms into an horrifying beast',
  ),
  //7
  Question(
    text:
        'What do you need to do in order to receive the invitation to Cainhurst Castle?',
    options: [
      Option(
          code: 'A',
          text:
              'Obtain the Cainhurst summons letter left inside Iosefka´s Clinic',
          isCorrect: true),
      Option(
          code: 'B',
          text:
              'Obtain the Cainhurst summons letter left inside Oedon´s Chapel',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'Speak to the suspicious beggar inside the Forbidden Woods',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'Speak to the suspicious beggar inside the Oedon´s Chapel',
          isCorrect: false),
    ],
    solution:
        'Obtain the Cainhurst summons letter left inside Iosefka´s Clinic',
  ),
  //8
  Question(
    text: 'What is the maximum upgrade level for regular weapons?',
    options: [
      Option(code: 'A', text: '5', isCorrect: false),
      Option(code: 'B', text: '10', isCorrect: true),
      Option(code: 'C', text: '15', isCorrect: false),
      Option(code: 'D', text: '20', isCorrect: false),
    ],
    solution: '10',
  ),
  //9
  Question(
    text: 'Are there new boss designs in the optional labrynth levels?',
    options: [
      Option(code: 'A', text: 'No', isCorrect: false),
      Option(code: 'B', text: 'Yes', isCorrect: true),
    ],
    solution: 'Yes',
  ),
  Question(
    text: 'What are the names of the hunters Eileen the Crow fights?',
    options: [
      Option(
          code: 'A', text: 'Henryk, Bloody Crow of Cainhurst', isCorrect: true),
      Option(code: 'B', text: 'Father Gascoine, Henryk', isCorrect: false),
      Option(
          code: 'C',
          text: 'Father Gascoine, Henryk, Bloody Crow of Cainhurst',
          isCorrect: false),
      Option(
          code: 'D', text: 'Djura, Bloody Crow of Cainhurst', isCorrect: false),
    ],
    solution: 'Henryk, Bloody Crow of Cainhurst',
  ),
  Question(
    text: 'What is not a possible ending for Arianna, Woman of the Night?',
    options: [
      Option(code: 'A', text: 'She ends up killed by Adella', isCorrect: false),
      Option(
          code: 'B',
          text: 'She ends up killed by the suspicios beggar',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'She ends up transformed into a celestial emissary',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'She ends up giving birth to an alien baby',
          isCorrect: false),
      Option(code: 'E', text: 'She ends up killing Adella', isCorrect: true),
    ],
    solution: 'She ends up killing Adella',
  ),
  Question(
    text: 'How many endings are there in Bloodborne?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '3',
  ),
  Question(
    text: 'How many nightmare levels are there in Bloodborne?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '3',
  ),
  Question(
    text: 'How many levels are there in the Nightmare Headstone?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '3',
  ),
  Question(
    text: 'How many levels are there in the Yharnam Headstone?',
    options: [
      Option(code: 'A', text: '2', isCorrect: false),
      Option(code: 'B', text: '4', isCorrect: false),
      Option(code: 'C', text: '6', isCorrect: true),
      Option(code: 'D', text: '8', isCorrect: false),
    ],
    solution: '6',
  ),
  Question(
    text: 'What are the beasts of Yharnam afraid of?',
    options: [
      Option(code: 'A', text: 'Nothing', isCorrect: false),
      Option(code: 'B', text: 'Fire', isCorrect: true),
      Option(code: 'C', text: 'Blood', isCorrect: false),
      Option(code: 'D', text: 'Arcane', isCorrect: false),
    ],
    solution: 'Fire',
  ),
  Question(
    text: 'What resistence lowers the more insight you have?',
    options: [
      Option(code: 'A', text: 'Fire resistance', isCorrect: false),
      Option(code: 'B', text: 'Poison resistance', isCorrect: false),
      Option(code: 'C', text: 'Beasthood resistance', isCorrect: false),
      Option(code: 'D', text: 'Frenzy resistance', isCorrect: true),
    ],
    solution: 'Frenzy resistance',
  ),
  Question(
    text: 'What can you NOT do if you run out of silver bullets?',
    options: [
      Option(
          code: 'A', text: 'Wait for an enemy to drop some', isCorrect: false),
      Option(
          code: 'B',
          text: 'Go back to the Hunters Dream and buy some more',
          isCorrect: false),
      Option(
          code: 'C',
          text:
              'Make bullets with your own blood at the cost of some of your life',
          isCorrect: false),
      Option(
          code: 'D',
          text:
              'Use a mobile workshop to quickly make some at the cost of your blood echoes',
          isCorrect: true),
    ],
    solution:
        'Use a mobile workshop to quickly make some at the cost of your blood echoes',
  ),
  Question(
    text:
        'How many shadows of Yharnam do you encounter in the Forbidden Woods?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: '3',
  ),
  Question(
    text: 'Who was the founder of the Healing Church?',
    options: [
      Option(
          code: 'A', text: 'Nicolash, Host of the Nightmare', isCorrect: false),
      Option(code: 'B', text: 'Laurence, The First Vicar', isCorrect: true),
      Option(code: 'C', text: 'Master Willem of Byrgenwerth', isCorrect: false),
      Option(code: 'D', text: 'Martyr Logarius', isCorrect: false),
    ],
    solution: 'Laurence, The First Vicar',
  ),
  Question(
    text: 'What are the two upper echelons of the Healing Church?',
    options: [
      Option(
          code: 'A',
          text: 'The Choir and the School of Mensis',
          isCorrect: true),
      Option(
          code: 'B',
          text: 'The Choir and Byrgenwerth College',
          isCorrect: false),
      Option(
          code: 'C',
          text: 'The School of Mensis and Byrgenwerth College',
          isCorrect: false)
    ],
    solution: 'The Choir and the School of Mensis',
  ),
  Question(
    text: 'What was found inside the Isz Chalice?',
    options: [
      Option(
          code: 'A', text: 'Yharnam, the Pthumerian Queen', isCorrect: false),
      Option(
          code: 'B', text: 'Ebrietas, Daughter of the Cosmos', isCorrect: true),
      Option(code: 'C', text: 'Rom, the Vacuous Spider', isCorrect: false),
      Option(code: 'D', text: 'Ludwig, the Accursed', isCorrect: false)
    ],
    solution: 'Ebrietas, Daughter of the Cosmos',
  ),
  Question(
    text: 'Is the Cleric Beast an optional boss?',
    options: [
      Option(code: 'A', text: 'No', isCorrect: false),
      Option(code: 'B', text: 'Yes', isCorrect: true),
    ],
    solution: 'Yes',
  ),
  Question(
    text:
        'What kind of poison does the Blood Starved Beast spouts from its body?',
    options: [
      Option(code: 'A', text: 'Rapid Poison', isCorrect: false),
      Option(code: 'B', text: 'Slow Poison', isCorrect: true),
    ],
    solution: 'Slow Poison',
  ),
  Question(
    text: 'Can you befriend hunter Djura?',
    options: [
      Option(code: 'A', text: 'Yes', isCorrect: true),
      Option(code: 'B', text: 'No', isCorrect: false),
    ],
    solution: 'Yes. Long live friendships!',
  ),
];

final Sekiro_questions = [
  //--------------------------1
  Question(
    text: 'What arm does Sekiro losses in his fight against Genichiro Ashina?',
    options: [
      Option(code: 'A', text: 'Left arm', isCorrect: true),
      Option(code: 'B', text: 'Right arm', isCorrect: false),
      Option(code: 'C', text: 'Both arms', isCorrect: false),
    ],
    solution: 'The left one',
  ),
  //--------------------------2
  Question(
    text: 'Is Emma proficient with the sword?',
    options: [
      Option(code: 'A', text: 'Yes', isCorrect: true),
      Option(code: 'B', text: 'No', isCorrect: false),
      Option(code: 'C', text: 'It´s a mistery', isCorrect: false),
    ],
    solution: 'Yes',
  ),
  //--------------------------3
  Question(
    text: 'What is Genichiro Ashina to Isshin Ashina?',
    options: [
      Option(code: 'A', text: 'His grandchild', isCorrect: true),
      Option(code: 'B', text: 'His son', isCorrect: false),
      Option(code: 'C', text: 'His brother', isCorrect: false),
      Option(code: 'D', text: 'His spouse', isCorrect: false),
    ],
    solution: 'His grandchild',
  ),
  //--------------------------4
  Question(
    text:
        'How many years into the past are you transported in the Hirata State level?',
    options: [
      Option(code: 'A', text: '1 year', isCorrect: false),
      Option(code: 'B', text: '2 years', isCorrect: false),
      Option(code: 'C', text: '3 years', isCorrect: true),
      Option(code: 'D', text: '4 years', isCorrect: false),
    ],
    solution: 'Three years',
  ),
  //--------------------------5
  Question(
    text: 'How many perilous attack types are there in the game?',
    options: [
      Option(code: 'A', text: '1. Thrust attacks', isCorrect: false),
      Option(code: 'B', text: '2. Thrust and sweep attacks', isCorrect: false),
      Option(
          code: 'C',
          text: '3. Thrust, sweep and lightning attacks',
          isCorrect: false),
      Option(
          code: 'D',
          text: '4. Thrust, sweep, grab and lightning attacks',
          isCorrect: true),
      Option(
          code: 'E',
          text: '5. Thrust, sweep, grab, jump and lightning attacks',
          isCorrect: false),
    ],
    solution: 'There are four',
  ),
  //--------------------------6
  Question(
    text: 'What status effect can apparition type enemies inflict you?',
    options: [
      Option(code: 'A', text: '1. Frenzy', isCorrect: false),
      Option(code: 'B', text: '2. Curse', isCorrect: false),
      Option(code: 'C', text: '3. Terror', isCorrect: true),
      Option(code: 'D', text: '4. Madness', isCorrect: false),
    ],
    solution: 'Terror it is!',
  ),
  //--------------------------7
  Question(
    text: 'You can use Mikiri Counter against...',
    options: [
      Option(code: 'A', text: 'Sweep attacks', isCorrect: false),
      Option(code: 'B', text: 'Thurst attacks', isCorrect: true),
      Option(code: 'C', text: 'Jump attacks', isCorrect: false),
      Option(code: 'D', text: 'Grab attacks', isCorrect: false),
    ],
    solution: 'Thrust attacks',
  ),
  //--------------------------8
  Question(
    text:
        'How many deathblows can you cheese from the Corrupted Monk in Fountainhead Palace?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: true),
      Option(code: 'C', text: '3', isCorrect: false),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: 'Two out of three',
  ),
  //--------------------------9
  Question(
    text:
        'If you want to parry and deflect a lightning attack you first have to...',
    options: [
      Option(code: 'A', text: 'Jump', isCorrect: true),
      Option(code: 'B', text: 'Mikiri counter it', isCorrect: false),
      Option(code: 'C', text: 'You can´t', isCorrect: false),
      Option(code: 'D', text: 'Attack', isCorrect: false),
    ],
    solution:
        'Of course it´s jump. Dont you know nothing about electrical circuits?',
  ),
  //--------------------------10
  Question(
    text:
        'Hown many skins can you obtain from completing all Gauntles of Strength fights',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: 'Three',
  ),
  //--------------------------11
  Question(
    text: 'How many folding screen monkeys are there?',
    options: [
      Option(code: 'A', text: '2', isCorrect: false),
      Option(code: 'B', text: '3', isCorrect: false),
      Option(code: 'C', text: '4', isCorrect: true),
      Option(code: 'D', text: '5', isCorrect: false),
    ],
    solution: 'Four',
  ),
  //--------------------------12
  Question(
    text: 'Sekiro Fushigiri mortal blade is a...?',
    options: [
      Option(code: 'A', text: 'Katana', isCorrect: false),
      Option(code: 'B', text: 'Odachi', isCorrect: true),
      Option(code: 'C', text: 'Bastard sword', isCorrect: false),
      Option(code: 'D', text: 'Kusabimaru', isCorrect: false),
    ],
    solution: 'Odachi. Meaning big sword.',
  ),
  //--------------------------13
  Question(
    text: 'What is inside the Guardian Ape?',
    options: [
      Option(
          code: 'A', text: 'Nothing, just flesh and organs', isCorrect: false),
      Option(code: 'B', text: 'A tiny person', isCorrect: false),
      Option(code: 'C', text: 'A centipede', isCorrect: true),
      Option(code: 'D', text: 'Is hollow!', isCorrect: false),
    ],
    solution: 'A centipede',
  ),
  //--------------------------14
  Question(
    text: 'How many finals are there in Sekiro?',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: false),
      Option(code: 'D', text: '4', isCorrect: true),
    ],
    solution: '4',
  ),
  //--------------------------15
  Question(
    text: 'What item makes fights against apparition type enemies much easier?',
    options: [
      Option(code: 'A', text: 'No one', isCorrect: false),
      Option(code: 'B', text: 'Divine confetti', isCorrect: true),
      Option(code: 'C', text: 'Ako´s sugar', isCorrect: false),
      Option(code: 'D', text: 'Salt', isCorrect: false),
      Option(code: 'E', text: 'Ceremonial tanto', isCorrect: false),
    ],
    solution: 'Divine confetti',
  ),
  //--------------------------16
  Question(
    text: 'Is there a hard mode in Sekiro?',
    options: [
      Option(code: 'A', text: 'No. Sekiro is hard enough', isCorrect: false),
      Option(
          code: 'B',
          text: 'Yes. If you dont take Kuro´s Charm',
          isCorrect: true),
      Option(code: 'C', text: 'Yes', isCorrect: false),
      Option(code: 'D', text: 'Not just one but two!', isCorrect: true),
    ],
    solution: 'Not just one but two! Charmless and Demon Bell',
  ),
  //--------------------------17
  Question(
    text: 'How can you beat the Armored Warrior?',
    options: [
      Option(code: 'A', text: 'You can´t', isCorrect: false),
      Option(code: 'B', text: 'By cutting off his head', isCorrect: false),
      Option(code: 'C', text: 'By pushing him into the void', isCorrect: true),
      Option(
          code: 'D', text: 'By messing with his son Roberto', isCorrect: false),
    ],
    solution: 'By pushing him into the void. ROBERRRRRRRTTT',
  ),
  //--------------------------18
  Question(
    text: 'Does Isshin use a gun when fights against you?',
    options: [
      Option(
          code: 'A',
          text: 'Impossible. There were no guns at the time',
          isCorrect: false),
      Option(
          code: 'B',
          text: 'Yes, only when he is in the Sword Saint form',
          isCorrect: true),
      Option(code: 'C', text: 'Yes, always', isCorrect: false),
      Option(
          code: 'D',
          text: 'Yes, only when he is in his aged form',
          isCorrect: false),
    ],
    solution: 'Sword Saint',
  ),
  //--------------------------19
  Question(
    text: 'Who is the Tengu of Ashina?',
    options: [
      Option(code: 'A', text: 'Isshin Ashina', isCorrect: true),
      Option(code: 'B', text: 'Genichiro Ashina', isCorrect: false),
      Option(code: 'C', text: 'Sekiro', isCorrect: false),
      Option(code: 'D', text: 'Tomoe', isCorrect: false),
      Option(code: 'D', text: 'It´s a mistery', isCorrect: false),
    ],
    solution: 'Isshin Ashina',
  ),
  //--------------------------20
  Question(
    text:
        'Which of these actions can Great Shinoby Owl NOT do when fighting against you?',
    options: [
      Option(code: 'A', text: 'Prevent you from healing', isCorrect: true),
      Option(code: 'B', text: 'Throwing shurikens', isCorrect: false),
      Option(code: 'C', text: 'Throwing poison bombs', isCorrect: false),
      Option(code: 'D', text: 'Mikiri counter you', isCorrect: false),
      Option(code: 'D', text: 'Use shinobi lightning attacks', isCorrect: true),
    ],
    solution: 'Use shinobi lightning attacks',
  ),
];

final PokemonBlackWhite_questions = [
  //  ---------------------1
  Question(
    text: 'Who is the Unova Pokedex number 0?',
    options: [
      Option(code: 'A', text: 'Victini', isCorrect: true),
      Option(code: 'B', text: 'Meloetta', isCorrect: false),
      Option(code: 'C', text: 'Mew', isCorrect: false),
      Option(code: 'D', text: 'Genesect', isCorrect: false),
    ],
    solution: 'Victini',
  ),
  //  ---------------------2
  Question(
    text: 'who is the grass starter pokemon?',
    options: [
      Option(code: 'A', text: 'Tepig', isCorrect: false),
      Option(code: 'B', text: 'Snivy', isCorrect: true),
      Option(code: 'C', text: 'Oshawott', isCorrect: false),
      Option(code: 'D', text: 'Servine', isCorrect: false),
    ],
    solution: 'Snivy',
  ),
  //  ---------------------3
  Question(
    text: 'What can be found on 4F of the Abyssal Ruins??',
    options: [
      Option(code: 'A', text: 'Lucky Egg', isCorrect: false),
      Option(code: 'B', text: 'Rocky Helmet', isCorrect: false),
      Option(code: 'C', text: 'Relic Crown', isCorrect: true),
      Option(code: 'D', text: 'Kings Rock', isCorrect: false),
    ],
    solution: 'In the center of the room is the relic rock',
  ),
  //  ---------------------4
  Question(
    text: 'What is not one of the names of the three leaders of the first gym?',
    options: [
      Option(code: 'A', text: 'Cilan', isCorrect: false),
      Option(code: 'B', text: 'Cress', isCorrect: false),
      Option(code: 'C', text: 'Chris', isCorrect: true),
      Option(code: 'D', text: 'Chili', isCorrect: false),
    ],
    solution:
        'Cress the water type user, Chili will use a fire type and Cilan will use a grass type',
  ),
  //  ---------------------5
  Question(
    text:
        'Who are these two friends who receive a starter Pokemon along with you?',
    options: [
      Option(code: 'A', text: 'Ethan and Bianca', isCorrect: false),
      Option(code: 'B', text: 'Cheren and Lyra', isCorrect: false),
      Option(code: 'C', text: 'Ethan and Lyra', isCorrect: false),
      Option(code: 'D', text: 'Cheren and Bianca', isCorrect: true),
    ],
    solution: 'Cheren and Bianca',
  ),
  //  ---------------------6
  Question(
    text: 'who serve as the team antagonists of these games?',
    options: [
      Option(code: 'A', text: 'Team Galactic', isCorrect: false),
      Option(code: 'B', text: 'Team Aqua', isCorrect: false),
      Option(code: 'C', text: 'Team Flare', isCorrect: false),
      Option(code: 'D', text: 'Team Plasma', isCorrect: true),
    ],
    solution: 'Team Plasma',
  ),
  //  ---------------------7
  Question(
    text: 'Which pokemon does AZ have a special relationship??',
    options: [
      Option(code: 'A', text: 'Floette', isCorrect: true),
      Option(code: 'B', text: 'Flabebe', isCorrect: false),
      Option(code: 'C', text: 'Forges', isCorrect: false),
      Option(code: 'D', text: 'Flaebe', isCorrect: false),
    ],
    solution: 'The Eternal Flower Floette.',
  ),
  //  ---------------------8
  Question(
    text: 'What is the name of the city where you can earn your first badge?',
    options: [
      Option(code: 'A', text: 'Castelia City', isCorrect: false),
      Option(code: 'B', text: 'Nacrene City', isCorrect: false),
      Option(code: 'C', text: 'Icirrus City', isCorrect: false),
      Option(code: 'D', text: 'Striaton City', isCorrect: true),
    ],
    solution: 'Striaton City',
  ),
  //  ---------------------9
  Question(
    text: 'Which Pokemon learn Sacred Sword?',
    options: [
      Option(code: 'A', text: 'Terrakion', isCorrect: false),
      Option(code: 'B', text: 'Keldeo', isCorrect: true),
      Option(code: 'C', text: 'Cobalion', isCorrect: false),
      Option(code: 'D', text: 'Virizion', isCorrect: false),
    ],
    solution: 'Keldeo',
  ),
  //  ---------------------10
  Question(
    text: 'which attack does x4 damage to Liepard?',
    options: [
      Option(code: 'A', text: 'fighting attacks', isCorrect: false),
      Option(code: 'B', text: 'bug attacks', isCorrect: false),
      Option(code: 'C', text: 'None', isCorrect: true),
      Option(code: 'D', text: 'psychic attacks', isCorrect: false),
    ],
    solution: 'None, is dark only',
  ),
  //  ---------------------11
  Question(
    text: 'What is Gurdurr holding with his/her hands?',
    options: [
      Option(code: 'A', text: 'A Log', isCorrect: false),
      Option(code: 'B', text: 'A beam', isCorrect: true),
      Option(code: 'C', text: 'A column', isCorrect: false),
      Option(code: 'D', text: 'Two columns', isCorrect: false),
    ],
    solution: 'Gurdurr holds a beam with both hands',
  ),
  //  ---------------------12
  Question(
    text: 'What type is Swoobat?',
    options: [
      Option(code: 'A', text: 'Flying and Normal', isCorrect: false),
      Option(code: 'B', text: 'Normal and Psychc', isCorrect: false),
      Option(code: 'C', text: 'Psychc and Flying', isCorrect: true),
      Option(code: 'D', text: 'Dark and Normal', isCorrect: false),
    ],
    solution: 'Psychc and Flying',
  ),
  //  ---------------------13
  Question(
    text: 'What is the fisrt evolution of Leavanny?',
    options: [
      Option(code: 'A', text: 'Swinub', isCorrect: false),
      Option(code: 'B', text: 'Sewaddle', isCorrect: true),
      Option(code: 'C', text: 'Swadloon', isCorrect: false),
      Option(code: 'D', text: 'Swalot', isCorrect: false),
    ],
    solution: 'Sewaddle evolves to Swadloon and Swadloon to Leavanny',
  ),
  //  ---------------------14
  Question(
    text: 'Which Pokemon has the ability defeatist?',
    options: [
      Option(code: 'A', text: 'Archeops', isCorrect: true),
      Option(code: 'B', text: 'Cofagrigus', isCorrect: false),
      Option(code: 'C', text: 'Zoroark', isCorrect: false),
      Option(code: 'D', text: 'Galvantula', isCorrect: false),
    ],
    solution: 'Is exclusive to Archeops',
  ),
  //  ---------------------15
  Question(
    text: 'What type is kyurem-black?',
    options: [
      Option(code: 'A', text: 'Dragon and Ice', isCorrect: true),
      Option(code: 'B', text: 'Ice and Fire', isCorrect: false),
      Option(code: 'C', text: 'Dragon and Fire', isCorrect: false),
      Option(code: 'D', text: 'Dragon and electric', isCorrect: false),
    ],
    solution: 'Dragon and Ice, the type does not change',
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

  // #11
  Question(
    text: 'What is the main part of a Goron´s diet?',
    options: [
      Option(code: 'A', text: 'Rocks', isCorrect: true),
      Option(code: 'B', text: 'Rubies', isCorrect: false),
      Option(code: 'C', text: 'Rats', isCorrect: false),
      Option(code: 'D', text: 'Rubber plants', isCorrect: false),
    ],
    solution: 'Rocks',
  ),

  // #12
  Question(
    text:
        'Chronologically (according to the in-game universe), which game is the first in the series?',
    options: [
      Option(code: 'A', text: 'The Legend of Zelda', isCorrect: false),
      Option(
          code: 'B', text: 'Zelda II: The Adventure of Link', isCorrect: false),
      Option(
          code: 'C',
          text: 'The Legend of Zelda: Ocarina of Time',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'The Legend of Zelda: Skyward Sword',
          isCorrect: true),
    ],
    solution: 'The Legend of Zelda: Skyward Sword',
  ),

  // #13
  Question(
    text:
        'Navi accompanied Link on his adventure in Ocarina of Time, but what´s the name of his fairy companion in Majora´s Mask?',
    options: [
      Option(code: 'A', text: 'Titl', isCorrect: false),
      Option(code: 'B', text: 'Tatl', isCorrect: true),
      Option(code: 'C', text: 'Tael', isCorrect: false),
      Option(code: 'D', text: 'Tryp', isCorrect: false),
    ],
    solution: 'Tatl',
  ),

  // #14
  Question(
    text:
        'Which of the following Zelda games has the lovable Tingle NOT appeared in?',
    options: [
      Option(code: 'A', text: 'Majora´s Mask', isCorrect: false),
      Option(code: 'B', text: 'The Minish Cap', isCorrect: false),
      Option(code: 'C', text: 'Oracle of Ages', isCorrect: false),
      Option(code: 'D', text: 'Twilight Princess', isCorrect: true),
    ],
    solution: 'Twilight Princess',
  ),

  // #15
  Question(
    text: 'What is the name of Link´s talking boat in The Wind Waker?',
    options: [
      Option(code: 'A', text: 'King of Blue Fins', isCorrect: false),
      Option(code: 'B', text: 'King of Golden Sunsets', isCorrect: false),
      Option(code: 'C', text: 'King of Red Lions', isCorrect: true),
      Option(code: 'D', text: 'King of White Waves', isCorrect: false),
    ],
    solution: 'King of Red Lions',
  ),

  // #16
  Question(
    text: 'What is antagonist Ganondorf´s last name?',
    options: [
      Option(code: 'A', text: 'Agahnim', isCorrect: false),
      Option(code: 'B', text: 'Dragmire', isCorrect: true),
      Option(code: 'C', text: 'Grimoire', isCorrect: false),
      Option(code: 'D', text: 'Mandrag', isCorrect: false),
    ],
    solution: 'Dragmire',
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

  // #13
  Question(
    text: 'Which COD has the 44. Magnum?',
    options: [
      Option(code: 'A', text: 'CoD Modern Warfare 3', isCorrect: true),
      Option(code: 'B', text: 'CoD Black Ops', isCorrect: false),
      Option(code: 'C', text: 'CoD World At War', isCorrect: false),
      Option(code: 'D', text: 'CoD 1', isCorrect: false),
    ],
    solution: 'CoD Modern Warfare 3.',
  ),

  // #14
  Question(
    text: 'Which COD was made by Treyarch?',
    options: [
      Option(code: 'A', text: 'CoD Modern Warfare', isCorrect: false),
      Option(code: 'B', text: 'CoD Black Ops 3', isCorrect: true),
      Option(code: 'C', text: 'CoD Modern Warfare 3', isCorrect: false),
      Option(code: 'D', text: 'CoD 2', isCorrect: false),
    ],
    solution: 'CoD Black Ops 3.',
  ),

  // #15
  Question(
    text: 'What CoD has juggernauts',
    options: [
      Option(code: 'A', text: 'CoD 1', isCorrect: false),
      Option(code: 'B', text: 'CoD Black Ops', isCorrect: false),
      Option(code: 'C', text: 'CoD Modern Warfare 3', isCorrect: true),
    ],
    solution: 'CoD Modern Warfare 3.',
  ),

  // #16
  Question(
    text: 'What CoD introduced the ray gun?',
    options: [
      Option(code: 'A', text: 'CoD Black Ops', isCorrect: false),
      Option(code: 'B', text: 'CoD Black Ops 2', isCorrect: false),
      Option(code: 'C', text: 'CoD Cold War', isCorrect: false),
      Option(code: 'D', text: 'CoD World At War', isCorrect: true),
    ],
    solution: 'CoD World At War.',
  ),

  // #16
  Question(
    text: 'Which CoD came first?',
    options: [
      Option(code: 'A', text: 'CoD Black Ops', isCorrect: false),
      Option(code: 'B', text: 'CoD Warzone', isCorrect: false),
      Option(code: 'C', text: 'CoD Modern Warfare', isCorrect: true),
      Option(code: 'D', text: 'CoD Advanced Warfare', isCorrect: false),
    ],
    solution: 'CoD Modern Warfare.',
  ),
];

// SLY COOPER SAGA ENGLISH QUESTIONS
final slyCooper_questions_en = [
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

  // #7
  Question(
    text:
        "Which country Sly and his gang of thieves do NOT visit in the third episode?",
    options: [
      Option(code: 'A', text: 'Netherlands', isCorrect: false),
      Option(code: 'B', text: 'China', isCorrect: false),
      Option(code: 'C', text: 'Spain', isCorrect: true),
      Option(code: 'D', text: 'Italy', isCorrect: false),
    ],
    solution: "Unfortunately Sly's band never visited Spain.",
  ),

  // #8
  Question(
    text: "What is Sly's mysterious weapon for?",
    options: [
      Option(code: 'A', text: 'To scratch your back.', isCorrect: false),
      Option(
          code: 'B', text: 'To reach things from the couch.', isCorrect: false),
      Option(
          code: 'C',
          text:
              'It has no strange function, it is just an oddly shaped weapon.',
          isCorrect: false),
      Option(
          code: 'D',
          text: 'It is an ancient key with unique qualities.',
          isCorrect: true),
    ],
    solution: "Sly's key serves as a KEY to his family vault.",
  ),

  // # 9
  Question(
    text:
        "Which is the name of the villain who tries to steal the inside of Sly's vault?",
    options: [
      Option(code: 'A', text: 'Sr. Monke', isCorrect: false),
      Option(code: 'B', text: 'Sr. M', isCorrect: false),
      Option(code: 'C', text: 'Dr. Monkey', isCorrect: false),
      Option(code: 'D', text: 'Dr. M', isCorrect: true),
    ],
    solution: "His first name is unknown, but his henchmen call him Dr. M.",
  ),

  // # 10
  Question(
    text: "Which thief joins the gang first at the start of the third episode?",
    options: [
      Option(code: 'A', text: 'Murray', isCorrect: true),
      Option(code: 'B', text: 'Dimitry', isCorrect: false),
      Option(code: 'C', text: 'Guru', isCorrect: false),
      Option(code: 'D', text: 'Panda King', isCorrect: false),
    ],
    solution: "Murray, who re-joins the band after clearing Venice.",
  ),

  // # 11
  Question(
    text: "Which is the name of the villain we must defeat in Venice?",
    options: [
      Option(code: 'A', text: 'Martino', isCorrect: false),
      Option(code: 'B', text: 'Octavio', isCorrect: true),
      Option(code: 'C', text: 'Luciano', isCorrect: false),
      Option(code: 'D', text: 'Andrea', isCorrect: false),
    ],
    solution: "Octavio, the Master of opera.",
  ),

  // # 12
  Question(
    text: "Which is Dmitri's special skill?",
    options: [
      Option(code: 'A', text: 'Being Dimitri', isCorrect: false),
      Option(code: 'B', text: 'Climbing', isCorrect: false),
      Option(code: 'C', text: 'Sailing', isCorrect: false),
      Option(code: 'D', text: 'Scuba diving', isCorrect: true),
    ],
    solution: "Scuba diving, he is a fish.",
  ),

  // # 13
  Question(
    text: "What is Dr. M's lieutenant's name?",
    options: [
      Option(code: 'A', text: 'Donk', isCorrect: false),
      Option(code: 'B', text: 'Gronk', isCorrect: false),
      Option(code: 'C', text: 'Folk', isCorrect: false),
      Option(code: 'D', text: 'None', isCorrect: true),
    ],
    solution: "Dr. M has no known lieutenant.",
  ),

  // # 14
  Question(
    text:
        "How many members does the team have at the end of the third episode?",
    options: [
      Option(code: 'A', text: '3', isCorrect: false),
      Option(code: 'B', text: '7', isCorrect: true),
      Option(code: 'C', text: '9', isCorrect: false),
      Option(code: 'D', text: '8', isCorrect: false),
    ],
    solution: "Dimitri, Penelope, Bentley, Sly, Murray, Guru, and Panda King",
  ),

  // # 15
  Question(
    text: "What year was Sly Cooper 3 Honor Among Thieves released?",
    options: [
      Option(code: 'A', text: '2001', isCorrect: false),
      Option(code: 'B', text: '2004', isCorrect: false),
      Option(code: 'C', text: '2005', isCorrect: true),
      Option(code: 'D', text: '2003', isCorrect: false),
    ],
    solution: "26/09/2005 on North America, and 18/11/2005 on Europe.",
  ),
];
final escapeFromTarkov_en = [
  // #1
  Question(
    text: 'What was the first map that appeared in the game?',
    options: [
      Option(code: 'A', text: "Customs", isCorrect: true),
      Option(code: 'B', text: 'Shoreline', isCorrect: false),
      Option(code: 'C', text: 'Labs', isCorrect: false),
      Option(code: 'D', text: 'Lighthouse', isCorrect: false),
    ],
    solution: "It was Customs.",
  ),

  // #2
  Question(
    text: "In what year was the first version of Escape from Tarkov published?",
    options: [
      Option(code: 'A', text: "2020", isCorrect: false),
      Option(code: 'B', text: '2019', isCorrect: false),
      Option(code: 'C', text: '2016', isCorrect: true),
      Option(code: 'D', text: '2021', isCorrect: false),
    ],
    solution:
        "Yes, it sounds incredible but the first time it was released was in 2016.",
  ),

  // #3
  Question(
    text: 'Which NPC is the only one we have to complete a mission to unlock?',
    options: [
      Option(code: 'A', text: "Prapor", isCorrect: false),
      Option(code: 'B', text: 'Threapist', isCorrect: false),
      Option(code: 'C', text: 'Jaeger', isCorrect: true),
      Option(code: 'D', text: 'Fence', isCorrect: false),
    ],
    solution:
        "We have to go to Woods to get a message, in order to unlock Jaeger.",
  ),

  // #4
  Question(
    text: 'What trader buys absolutely everything from us?',
    options: [
      Option(code: 'A', text: "Peacekeeper", isCorrect: false),
      Option(code: 'B', text: 'Mechanic', isCorrect: false),
      Option(code: 'C', text: 'Prapor', isCorrect: false),
      Option(code: 'D', text: 'Fence', isCorrect: true),
    ],
    solution: "Fence, but at a very bad price.",
  ),

  // #5
  Question(
    text: 'On which map does tagila appear?',
    options: [
      Option(code: 'A', text: "None of this", isCorrect: false),
      Option(code: 'B', text: 'Factory', isCorrect: true),
      Option(code: 'C', text: 'Customs', isCorrect: false),
      Option(code: 'D', text: 'Shoreline', isCorrect: false),
    ],
    solution: "Tagila is the boss of Factory",
  ),

  // #6
  Question(
    text: 'What calibre is the CMMG Mk47 Mutant?',
    options: [
      Option(code: 'A', text: "5.45x39mm", isCorrect: false),
      Option(code: 'B', text: '5.56x45mm NATO', isCorrect: false),
      Option(code: 'C', text: '7.62x39mm', isCorrect: true),
      Option(code: 'D', text: '.300', isCorrect: false),
    ],
    solution: "Use the 7.62x39mm",
  ),

  // #7
  Question(
    text: 'What calibre is the Kalashnikov AKS-74U?',
    options: [
      Option(code: 'A', text: "5.45x39mm", isCorrect: true),
      Option(code: 'B', text: '5.56x45mm NATO', isCorrect: false),
      Option(code: 'C', text: '7.62x39mm', isCorrect: false),
      Option(code: 'D', text: '.300', isCorrect: false),
    ],
    solution: "Use the 7.62x39mm",
  ),

  // #8
  Question(
    text: 'What calibre is the Kalashnikov AKS-74U?',
    options: [
      Option(code: 'A', text: "5.45x39mm", isCorrect: true),
      Option(code: 'B', text: '5.56x45mm NATO', isCorrect: false),
      Option(code: 'C', text: '7.62x39mm', isCorrect: false),
      Option(code: 'D', text: '.300', isCorrect: false),
    ],
    solution: "Use the 5.45x39mm",
  ),

  // #9
  Question(
    text: 'What calibre is the Colt M4A1?',
    options: [
      Option(code: 'A', text: "5.45x39mm", isCorrect: false),
      Option(code: 'B', text: '5.56x45mm NATO', isCorrect: true),
      Option(code: 'C', text: '7.62x39mm', isCorrect: false),
      Option(code: 'D', text: '.300', isCorrect: false),
    ],
    solution: "Use the 5.56x45mm NATO",
  ),

  // #10
  Question(
    text: 'What calibre is the Kalashnikov AK-101?',
    options: [
      Option(code: 'A', text: "5.45x39mm", isCorrect: false),
      Option(code: 'B', text: '5.56x45mm NATO', isCorrect: true),
      Option(code: 'C', text: '7.62x39mm', isCorrect: false),
      Option(code: 'D', text: '.300', isCorrect: false),
    ],
    solution: "Use the 5.56x45mm NATO",
  ),

  // #11
  Question(
    text: "Who gives you the mission 'Shooter borned in heaven'?",
    options: [
      Option(code: 'A', text: "Fence", isCorrect: false),
      Option(code: 'B', text: 'Peacekeeper', isCorrect: false),
      Option(code: 'C', text: 'Prapor', isCorrect: false),
      Option(code: 'D', text: 'Mechanic', isCorrect: true),
    ],
    solution: "This iconic mission is given to us by Mechanic.",
  ),

  // #12
  Question(
    text: "Who gives you the mission 'Collector'?",
    options: [
      Option(code: 'A', text: "Fence", isCorrect: true),
      Option(code: 'B', text: 'Peacekeeper', isCorrect: false),
      Option(code: 'C', text: 'Prapor', isCorrect: false),
      Option(code: 'D', text: 'Mechanic', isCorrect: false),
    ],
    solution:
        "This iconic mission is given to us by Fence (It is the only mission he gives).",
  ),

  // #13
  Question(
    text: 'Which is the largest map?',
    options: [
      Option(code: 'A', text: "Factory", isCorrect: false),
      Option(code: 'B', text: 'Lighthouse', isCorrect: false),
      Option(code: 'C', text: 'Shoreline', isCorrect: false),
      Option(code: 'D', text: 'Woods', isCorrect: true),
    ],
    solution: "It's Woods",
  ),

  // #14
  Question(
    text:
        'In the weapon, which is what we will have to change if we want to do more damage to the enemy?',
    options: [
      Option(code: 'A', text: "Receiver", isCorrect: false),
      Option(code: 'B', text: 'Bullets', isCorrect: true),
      Option(code: 'C', text: 'Chamber', isCorrect: false),
      Option(code: 'D', text: 'Cannon', isCorrect: false),
    ],
    solution: "The bullets, of course",
  ),

  // #15
  Question(
    text: 'What happens to you if you self-inject morphine?',
    options: [
      Option(code: 'A', text: "It heals you a little", isCorrect: false),
      Option(code: 'B', text: "It's like taking a painkiller", isCorrect: true),
      Option(code: 'C', text: 'Makes you take more damage', isCorrect: false),
      Option(code: 'D', text: 'A and B effects', isCorrect: false),
    ],
    solution: "It's like taking such a pro painkiller",
  ),
];

final worldOfWarcraft_Classic_en = [
  // #1
  Question(
    text: 'What is the capital of the alliance??',
    options: [
      Option(code: 'A', text: "Orgrimmar", isCorrect: false),
      Option(code: 'B', text: 'Darnassus', isCorrect: false),
      Option(code: 'C', text: 'Stormwind', isCorrect: true),
      Option(code: 'D', text: 'Ironforge', isCorrect: false),
    ],
    solution: "Stormwind",
  ),

  // #2
  Question(
    text: 'What is the capital of the horde?',
    options: [
      Option(code: 'A', text: "Orgrimmar", isCorrect: true),
      Option(code: 'B', text: 'Undercity', isCorrect: false),
      Option(code: 'C', text: 'Stormwind', isCorrect: false),
      Option(code: 'D', text: 'Thunder Bluff', isCorrect: false),
    ],
    solution: "Orgrimmar",
  ),

  // #3
  Question(
    text: 'Which class allows you to turn your enemies into sheep?',
    options: [
      Option(code: 'A', text: "Wizard", isCorrect: true),
      Option(code: 'B', text: 'Warlock', isCorrect: false),
      Option(code: 'C', text: 'Warrior', isCorrect: false),
      Option(code: 'D', text: 'None', isCorrect: false),
    ],
    solution: "Wizard",
  ),

  // #4
  Question(
    text: 'Which class uses fury instead of mana?',
    options: [
      Option(code: 'A', text: "Hunter", isCorrect: false),
      Option(code: 'B', text: 'Warrior', isCorrect: true),
      Option(code: 'C', text: 'Paladin', isCorrect: false),
      Option(code: 'D', text: 'Priest', isCorrect: false),
    ],
    solution: "Warrior",
  ),

  // #5
  Question(
    text: 'Which class is unique to the horde?',
    options: [
      Option(code: 'A', text: "Shaman", isCorrect: true),
      Option(code: 'B', text: 'Paladin', isCorrect: false),
      Option(code: 'C', text: 'Warlock', isCorrect: false),
      Option(code: 'D', text: 'Priest', isCorrect: false),
    ],
    solution: "Shaman",
  ),

  // #6
  Question(
    text: 'What is the first dungeon you have access in the horde?',
    options: [
      Option(code: 'A', text: "The Deadmines", isCorrect: false),
      Option(code: 'B', text: 'Scarlet monastery', isCorrect: false),
      Option(code: 'C', text: 'Wailing Cavers', isCorrect: false),
      Option(code: 'D', text: 'Ragefire chasm', isCorrect: true),
    ],
    solution: "",
  ),

  // #7
  Question(
    text: 'How many copper coins does 1 Gold plus 50 Silver correspond to??',
    options: [
      Option(code: 'A', text: "150", isCorrect: false),
      Option(
          code: 'B',
          text: '1 * (100 * 100) + 50 *(100) = 17,500',
          isCorrect: false),
      Option(
          code: 'C',
          text: '1 * (100 * 100) + 50 *(100) = 15,000',
          isCorrect: true),
      Option(
          code: 'D',
          text: '1 * (100 * 100) + 50 *(60) = 10,000',
          isCorrect: false),
    ],
    solution: "15,000",
  ),

  // #8
  Question(
    text: 'Which class can easily become invisible?',
    options: [
      Option(code: 'A', text: "Priest", isCorrect: false),
      Option(code: 'B', text: 'Rogue', isCorrect: true),
      Option(code: 'C', text: 'Warlock', isCorrect: false),
      Option(code: 'D', text: 'Paladin', isCorrect: false),
    ],
    solution: "Rogue",
  ),

  // #9
  Question(
    text:
        'What kind of animal can be kept as a pet almost any kind of animal that can be found?',
    options: [
      Option(code: 'A', text: "Priest", isCorrect: false),
      Option(code: 'B', text: 'Shaman', isCorrect: false),
      Option(code: 'C', text: 'Hunter', isCorrect: true),
      Option(code: 'D', text: 'Warlock', isCorrect: false),
    ],
    solution: "",
  ),

  // #10
  Question(
    text: 'What happens if you lose a duel?',
    options: [
      Option(code: 'A', text: "Nothing", isCorrect: true),
      Option(
          code: 'B', text: 'They will probably laugh at you', isCorrect: false),
      Option(code: 'C', text: 'That you break the keyboard', isCorrect: false),
      Option(code: 'D', text: 'You lose honour and money', isCorrect: false),
    ],
    solution: "Nothing",
  ),

  // #11
  Question(
    text: 'Which weapon allows players to attack with ranged magic shoots?',
    options: [
      Option(code: 'A', text: "Bow", isCorrect: false),
      Option(code: 'B', text: 'Rifle', isCorrect: false),
      Option(code: 'C', text: 'Wand', isCorrect: true),
      Option(
          code: 'D',
          text: 'No existe ningún arma que haga eso',
          isCorrect: false),
    ],
    solution: "Wand",
  ),

  // #12
  Question(
    text:
        'Where on the map does a daily chest appear for the best PVP player to get it?',
    options: [
      Option(code: 'A', text: "Feralas Arena", isCorrect: false),
      Option(code: 'B', text: 'Durotar Arena', isCorrect: false),
      Option(code: 'C', text: 'Thunder bluff Stadium', isCorrect: false),
      Option(code: 'D', text: 'Gurubashi Arena', isCorrect: true),
    ],
    solution: "Gurubashi Arena",
  ),

  // #13
  Question(
    text: 'Which is not the name of any mainland island?',
    options: [
      Option(code: 'A', text: "Kalimdor", isCorrect: false),
      Option(code: 'B', text: 'The Maelstorm', isCorrect: false),
      Option(code: 'C', text: 'Azeroth', isCorrect: false),
      Option(code: 'D', text: 'Lordaeron', isCorrect: false),
    ],
    solution: "",
  ),

  // #14
  Question(
    text: 'What is the maximum range we can obtain in Arena?',
    options: [
      Option(code: 'A', text: "14", isCorrect: false),
      Option(code: 'B', text: '15', isCorrect: true),
      Option(code: 'C', text: '16', isCorrect: false),
      Option(code: 'D', text: '17', isCorrect: false),
    ],
    solution: "15",
  ),

  // #15
  Question(
    text: 'Which class bases its power on switching between different animals?',
    options: [
      Option(code: 'A', text: "Wizard", isCorrect: false),
      Option(code: 'B', text: 'Warlock', isCorrect: false),
      Option(code: 'C', text: 'Shaman', isCorrect: false),
      Option(code: 'D', text: 'Druid', isCorrect: true),
    ],
    solution: "",
  ),
];

final Civilization_VI_questions = [
  // #1
  Question(
    text: 'How many different eras are there in the base game?',
    options: [
      Option(code: 'A', text: "6", isCorrect: false),
      Option(code: 'B', text: '7', isCorrect: false),
      Option(code: 'C', text: '8', isCorrect: true),
      Option(code: 'D', text: '9', isCorrect: false),
    ],
    solution: "8",
  ),

  // #2
  Question(
    text: 'In which era can you build the Pyramids?',
    options: [
      Option(code: 'A', text: "Ancient Era", isCorrect: true),
      Option(code: 'B', text: 'Classical Era', isCorrect: false),
      Option(code: 'C', text: 'Medieval Era', isCorrect: false),
      Option(code: 'D', text: 'Renaissance Era', isCorrect: false),
    ],
    solution: "Ancient Era",
  ),

  // #3
  Question(
    text:
        'Which tile grants adjacency bonuses to the district Campus Observatory in the base game?',
    options: [
      Option(code: 'A', text: "Mountain", isCorrect: false),
      Option(code: 'B', text: 'Rainforest', isCorrect: false),
      Option(code: 'C', text: 'Great Barrier Reef', isCorrect: false),
      Option(code: 'D', text: 'All', isCorrect: true),
    ],
    solution: "All",
  ),

  // #4
  Question(
    text: 'Which leader is the first to unlock the spies?',
    options: [
      Option(code: 'A', text: "Victoria", isCorrect: false),
      Option(code: 'B', text: 'Catherine de Medici', isCorrect: true),
      Option(code: 'C', text: 'Cleopatra', isCorrect: false),
      Option(code: 'D', text: 'Trajan', isCorrect: false),
    ],
    solution: "Catherine de Medici",
  ),

  // #5
  Question(
    text: 'In which era can you build the Eiffel Tower?',
    options: [
      Option(code: 'A', text: "Renaissence Era", isCorrect: false),
      Option(code: 'B', text: 'Industrial Era', isCorrect: false),
      Option(code: 'C', text: 'Modern Era', isCorrect: true),
      Option(code: 'D', text: 'Atomic Era', isCorrect: false),
    ],
    solution: "Modern Era",
  ),

  // #6
  Question(
    text: 'In which era can you build the Oxford University?',
    options: [
      Option(code: 'A', text: "Industrial Era", isCorrect: true),
      Option(code: 'B', text: 'Modern Era', isCorrect: false),
      Option(code: 'C', text: 'Atomic Era', isCorrect: false),
      Option(code: 'D', text: 'Information Era', isCorrect: false),
    ],
    solution: "Industrial Era",
  ),

  // #7
  Question(
    text:
        'Which tile grants adjacency bonuses to the district Industrial Zone in the base game?',
    options: [
      Option(code: 'A', text: "Quarry", isCorrect: true),
      Option(code: 'B', text: 'Lumber Mill', isCorrect: false),
      Option(code: 'C', text: 'Fort', isCorrect: false),
      Option(code: 'D', text: 'All', isCorrect: false),
    ],
    solution: "Quarry",
  ),

  // #8
  Question(
    text:
        'Which tile grants adjacency bonuses to the district Commercial Hub in the base game?',
    options: [
      Option(code: 'A', text: "Mountain", isCorrect: false),
      Option(code: 'B', text: 'River', isCorrect: true),
      Option(code: 'C', text: 'Rainforest', isCorrect: false),
      Option(code: 'D', text: 'Forest', isCorrect: false),
    ],
    solution: "River",
  ),

  // #9
  Question(
    text: 'Which unit is the evolution of Cavalry?',
    options: [
      Option(code: 'A', text: "Courser", isCorrect: false),
      Option(code: 'B', text: 'Horseman', isCorrect: false),
      Option(code: 'C', text: 'Helicopter', isCorrect: true),
      Option(code: 'D', text: 'Any', isCorrect: false),
    ],
    solution: "Helicopter",
  ),

  // #10
  Question(
    text: 'Which unit is the evolution of Trebuchet?',
    options: [
      Option(code: 'A', text: "Bombard", isCorrect: true),
      Option(code: 'B', text: 'Artillery', isCorrect: false),
      Option(code: 'C', text: 'Field Cannon', isCorrect: false),
      Option(code: 'D', text: 'Any', isCorrect: false),
    ],
    solution: "Bombard",
  ),

  // #11
  Question(
    text: 'Which unit is the evolution of Gallery?',
    options: [
      Option(code: 'A', text: "Caravel", isCorrect: true),
      Option(code: 'B', text: 'Quadrirreme', isCorrect: false),
      Option(code: 'C', text: 'Frigate', isCorrect: false),
      Option(code: 'D', text: 'Any', isCorrect: false),
    ],
    solution: "Caravel",
  ),

  // #12
  Question(
    text: 'Which civilization is able to train the special unit Consquistador?',
    options: [
      Option(code: 'A', text: "Polish", isCorrect: false),
      Option(code: 'B', text: 'Persian', isCorrect: false),
      Option(code: 'C', text: 'Spanish', isCorrect: true),
      Option(code: 'D', text: 'English', isCorrect: false),
    ],
    solution: "Spanish",
  ),

  // #13
  Question(
    text: 'Which civilization is able to build the special district Bath?',
    options: [
      Option(code: 'A', text: "Roman", isCorrect: true),
      Option(code: 'B', text: 'Persian', isCorrect: false),
      Option(code: 'C', text: 'Egyptian', isCorrect: false),
      Option(code: 'D', text: 'Arabian', isCorrect: false),
    ],
    solution: "Roman",
  ),

  // #14
  Question(
    text: 'Which technology outdates Walls and unlocks Urban Defenses',
    options: [
      Option(code: 'A', text: "Steel", isCorrect: true),
      Option(code: 'B', text: 'Combustion', isCorrect: false),
      Option(code: 'C', text: 'Electricity', isCorrect: false),
      Option(code: 'D', text: 'Radio', isCorrect: false),
    ],
    solution: "Steel",
  ),

  // #15
  Question(
    text: 'Where can you launch a Nuclear Device from?',
    options: [
      Option(code: 'A', text: "Bomber Aircraft", isCorrect: true),
      Option(code: 'B', text: 'Airport', isCorrect: false),
      Option(code: 'C', text: 'Rocket Artillery', isCorrect: false),
      Option(code: 'D', text: 'All', isCorrect: false),
    ],
    solution: "Bomber Aircraft",
  ),
];

final League_Of_Legends_questions = [
  // #1
  Question(
    text: 'How many champions were there at the beginning in lol',
    options: [
      Option(code: 'A', text: "17", isCorrect: true),
      Option(code: 'B', text: '20', isCorrect: false),
      Option(code: 'C', text: '23', isCorrect: false),
      Option(code: 'D', text: '25', isCorrect: false),
    ],
    solution: "17",
  ),

  // #2
  Question(
    text: 'How many times can a player reroll champions in Aram?',
    options: [
      Option(code: 'A', text: "0", isCorrect: false),
      Option(code: 'B', text: '1', isCorrect: false),
      Option(code: 'C', text: '2', isCorrect: true),
      Option(code: 'D', text: '3', isCorrect: false),
    ],
    solution: "2",
  ),

  // #3
  Question(
    text: 'Does Quicksilver Slash removes ignite effects?',
    options: [
      Option(code: 'A', text: "True", isCorrect: false),
      Option(code: 'B', text: 'False', isCorrect: true),
    ],
    solution: "False",
  ),

  // #4
  Question(
    text: 'Does Cleanse removes Exhaust effects?',
    options: [
      Option(code: 'A', text: "True", isCorrect: true),
      Option(code: 'B', text: 'False', isCorrect: false),
    ],
    solution: "True",
  ),

  // #5
  Question(
    text: 'Which of these champions is not from Noxus?',
    options: [
      Option(code: 'A', text: "Darius", isCorrect: false),
      Option(code: 'B', text: 'Draven', isCorrect: false),
      Option(code: 'C', text: 'Garen', isCorrect: true),
      Option(code: 'D', text: 'Swain', isCorrect: false),
    ],
    solution: "Modern Era",
  ),

  // #6
  Question(
    text: 'Which of these champions is not from Bilgewater?',
    options: [
      Option(code: 'A', text: "Graves", isCorrect: false),
      Option(code: 'B', text: 'Twisted Fate', isCorrect: false),
      Option(code: 'C', text: 'Pyke', isCorrect: false),
      Option(code: 'D', text: 'Kayn', isCorrect: true),
    ],
    solution: "Kayn",
  ),

  // #7
  Question(
    text: 'What is the name of kaisa´s w ability?',
    options: [
      Option(code: 'A', text: "Void Seeker", isCorrect: true),
      Option(code: 'B', text: 'Icathian Seeker', isCorrect: false),
      Option(code: 'C', text: 'Killer Instinct', isCorrect: false),
      Option(code: 'D', text: 'Void Instinct', isCorrect: false),
    ],
    solution: "Void Seeker",
  ),

  // #8
  Question(
    text: 'How much gold does Doran´s Ring cost?',
    options: [
      Option(code: 'A', text: "500", isCorrect: false),
      Option(code: 'B', text: '350', isCorrect: false),
      Option(code: 'C', text: '400', isCorrect: true),
      Option(code: 'D', text: '450', isCorrect: false),
    ],
    solution: "400",
  ),

  // #9
  Question(
    text: 'At what minute do the plates of the towers fall?',
    options: [
      Option(code: 'A', text: "10", isCorrect: false),
      Option(code: 'B', text: '14', isCorrect: true),
      Option(code: 'C', text: '18', isCorrect: false),
      Option(code: 'D', text: '20', isCorrect: false),
    ],
    solution: "14",
  ),

  // #10
  Question(
    text: 'How many towers does each team have?',
    options: [
      Option(code: 'A', text: "8", isCorrect: false),
      Option(code: 'B', text: '9', isCorrect: false),
      Option(code: 'C', text: '10', isCorrect: false),
      Option(code: 'D', text: '11', isCorrect: true),
    ],
    solution: "11",
  ),

  // #11
  Question(
    text: 'How many different weapons does Aphelios have?',
    options: [
      Option(code: 'A', text: "4", isCorrect: false),
      Option(code: 'B', text: '5', isCorrect: true),
      Option(code: 'C', text: '6', isCorrect: false),
      Option(code: 'D', text: '7', isCorrect: false),
    ],
    solution: "5",
  ),

  // #12
  Question(
    text: 'Which of these champions does not use energy?',
    options: [
      Option(code: 'A', text: "Kennen", isCorrect: false),
      Option(code: 'B', text: 'Akali', isCorrect: false),
      Option(code: 'C', text: 'Kled', isCorrect: true),
      Option(code: 'D', text: 'Zed', isCorrect: false),
    ],
    solution: "Kled",
  ),

  // #13
  Question(
    text: 'What champion can not buy boots?',
    options: [
      Option(code: 'A', text: "Cassiopeia", isCorrect: true),
      Option(code: 'B', text: 'Nami', isCorrect: false),
      Option(code: 'C', text: 'Kassadin', isCorrect: false),
      Option(code: 'D', text: 'Anivia', isCorrect: false),
    ],
    solution: "Cassiopeia",
  ),

  // #14
  Question(
    text: 'How many trinkets can a player have placed at the same time',
    options: [
      Option(code: 'A', text: "1", isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '3', isCorrect: true),
      Option(code: 'D', text: '4', isCorrect: false),
    ],
    solution: "3",
  ),

  // #15
  Question(
    text: 'How many diffrent summoner spells are there in Aram?',
    options: [
      Option(code: 'A', text: "7", isCorrect: false),
      Option(code: 'B', text: '8', isCorrect: false),
      Option(code: 'C', text: '9', isCorrect: true),
      Option(code: 'D', text: '10', isCorrect: false),
    ],
    solution: "9",
  ),
];
