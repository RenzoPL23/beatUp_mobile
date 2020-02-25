import 'package:beat_up/models/artist.dart';
import 'package:flutter/material.dart';
import './models/genre.dart';

const MUSIC_GENRES = const [
  Genre(
    id: 'c1',
    title: 'Rock',
    color: Colors.purple,
  ),
  Genre(
    id: 'c2',
    title: 'Indie',
    color: Colors.red,
  ),
  Genre(
    id: 'c3',
    title: 'pop',
    color: Colors.orange,
  ),
  Genre(
    id: 'c4',
    title: 'Hip Hop',
    color: Colors.amber,
  ),
  Genre(
    id: 'c5',
    title: 'Classical',
    color: Colors.blue,
  ),
  Genre(
    id: 'c6',
    title: 'R&B',
    color: Colors.green,
  ),
  Genre(
    id: 'c7',
    title: 'Metal',
    color: Colors.lightBlue,
  ),
  Genre(
    id: 'c8',
    title: 'Soul',
    color: Colors.lightGreen,
  ),
  Genre(
    id: 'c9',
    title: 'Country',
    color: Colors.pink,
  ),
  Genre(
    id: 'c10',
    title: 'Blues',
    color: Colors.teal,
  ),
];

const ARTIST_DATA = const [
  Artist(
    id: 'm1',
    genres: [
      'c1',
    ],
    name: 'MUSE',
    imageUrl: 'https://www.dafont.com/forum/attach/orig/4/4/44960.jpg',
    description:
        'Muse are an English rock band from Teignmouth, Devon, formed in 1994. The band consists of Matt Bellamy (lead vocals, guitar, keyboards), Chris Wolstenholme (bass guitar, backing vocals), and Dominic Howard (drums).',
    songs: [
      'Urprising',
      'Hysteria',
      'Starlight',
      'Time is Running Out',
      'Psycho',
      'Madness'
    ],
    albums: [
      'Origin of Symmetry',
      'Showbiz',
      'Absolution',
      'Black Holes and Revelations',
      'The Resistance',
      'The 2nd Law ',
      'Live at Rome Olympic Stadium',
      'Drones',
    ],
    isSolist: false,
    isBand: true,
  ),
  Artist(
    id: 'm2',
    genres: [
      'c1',
      'c2',
    ],
    name: 'Two Door Cinema Club',
    imageUrl:
        'https://res.cloudinary.com/teepublic/image/private/s--G_ScJ3Be--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1531070720/production/designs/2869007_0.jpg',
    description:
        'Two Door Cinema Club is a band from Northern Ireland. The band formed in 2007 and is composed of three members: Alex Trimble (vocals, rhythm guitar, beats, synths), Sam Halliday (lead guitar, backing vocals), and Kevin Baird (bass, synths, backing vocals).',
    songs: [
      'Cigarettes in the Theatre',
      'Do You Want It All?',
      'This Is the Life',
      'What You Know',
      'Spices',
      'You Are Not Stubborn'
    ],
    albums: [
      'Tourist History',
      'Beacon',
      'Gameshow',
      'False Alarm',
    ],
    isSolist: false,
    isBand: true,
  ),
  Artist(
    id: 'm3',
    genres: [
      'c1',
    ],
    name: 'Coldplay',
    imageUrl:
        'https://i.pinimg.com/600x315/65/1f/81/651f81f3100b5be24c5554607446dde4.jpg',
    description:
        'Coldplay is an English rock band formed in London in 1996. The members of band are vocalist/pianist Chris Martin, guitarist Jonny Buckland, bass player Guy Berryman and drummer Will Champion. ',
    songs: ['Yellow', 'Fix You', 'Magic', 'Sparks', 'Trouble', 'Paradise'],
    albums: [
      'Parachutes',
      'X&Y',
      '	Mylo Xyloto',
      'Ghost Stories',
      'Everyday Life',
      'A Head Full of Dreams',
      'Love in Tokyo'
    ],
    isSolist: false,
    isBand: true,
  ),
  Artist(
    id: 'm4',
    genres: [
      'c6',
      'c3',
      'c4',
    ],
    name: 'Chris Brown',
    imageUrl:
        'https://i.pinimg.com/originals/8a/94/fc/8a94fcd0c040eaeb86e51874ef59358b.jpg',
    description:
        'Christopher Maurice Brown (born May 5, 1989) is an American singer, songwriter, rapper, dancer, actor, and record producer. Born in Tappahannock, Virginia, he was involved in his church choir and several local talent shows from a young age. Having signed with Jive Records in 2004, Brown released his self-titled debut studio album the following year, which became certified double platinum by the Recording Industry Association of America (RIAA).',
    songs: [
      'Deuces',
      'No Bullshit',
      'She Ain\'t You',
      'Say It With Me',
      'Next 2 You',
      'Oh My Love'
    ],
    albums: [
      'Indigo',
      'X',
      'Fortune',
      'Royalty',
      'Graffiti',
      'X Files',
      'F.A.M.E'
    ],
    isSolist: true,
    isBand: false,
  ),
  Artist(
    id: 'm5',
    genres: [
      'c5',
    ],
    name: 'Ludwig van Beethoven',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Beethoven.jpg/800px-Beethoven.jpg',
    description:
        'Ludwig van Beethoven was a German composer and pianist. He was a crucial figure in the transition between the classical and romantic eras in classical music and is considered to be one of the greatest composers of all time.',
    songs: [
      'Para Elisa',
      'symphony n°9',
      'symphony n°5',
      'symphony n°3',
      'symphony n°6',
      'Fidelio'
    ],
    albums: [
      'Best Of Beethoven',
    ],
    isSolist: true,
    isBand: false,
  ),
  Artist(
    id: 'm6',
    genres: [
      'c1',
      'c3',
    ],
    name: 'Vitor Kley',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Vitor_Kley%2C_2018.jpg/800px-Vitor_Kley%2C_2018.jpg',
    description:
        'Born in Porto Alegre and raised in Balneário Camboriú and raised in Novo Hamburgo, he started playing guitar in his teens and was encouraged by his mother Janice Barbiero and his father Ivan Kley, who presents him with a guitar when he was 11 years old.',
    songs: [
      'O Sol',
      'Morena',
      'Dois Amores',
      'Armas a Nosso Favor',
      'Onde Voce Esta',
      'A Noite Cai'
    ],
    albums: [
      'Adrenalizou',
    ],
    isSolist: true,
    isBand: false,
  ),
  Artist(
    id: 'm7',
    genres: [
      'c7',
    ],
    name: 'Pantera',
    imageUrl:
        'https://media.kidozi.com/unsafe/600x600/img.kidozi.com/design/600/600/0a0909/79557/329fef807429caacef6c24080117457f.png.jpg',
    description:
        'Pantera was an American heavy metal band from Arlington, Texas formed in 1981. The group\'s best-known lineup consisted of the Abbott brothers—drummer Vinnie Paul and guitarist Dimebag Darrell—along with vocalist Phil Anselmo and bassist Rex Brown.',
    songs: [
      'Walk',
      'this love',
      'I\'m Broken',
      'Cowboys From Hell',
      'Floods',
      'A New Level'
    ],
    albums: [
      'Power Metal',
      'Cowboys from Hell',
      'I am teh Night',
      'Metal Magic',
      'History Of Hostility',
      'Proyects in the jungle',
    ],
    isSolist: false,
    isBand: true,
  ),
  Artist(
    id: 'm8',
    genres: [
      'c9',
    ],
    name: 'Carly Pearce',
    imageUrl:
        'https://i.pinimg.com/originals/56/a0/e3/56a0e3f4b2011119a81cfffec3a8a883.jpg',
    description:
        'Pearce was born in Taylor Mill, Kentucky. Her parents are Todd and Jackie Slusser. She dropped out of school when she was 16 and moved to Pigeon Forge, Tennessee in order to perform at Dollywood five times a week, in addition to contributing to bluegrass music compilation albums.',
    songs: [
      'I Hope You\'re Happy Now',
      'Every Little Thing',
      'Hide the Wine',
      'Closer To You',
      'You kissed Me First',
      'If My Name Was Whiskey'
    ],
    albums: [
      'Every Little Thing',
    ],
    isSolist: true,
    isBand: false,
  ),
  Artist(
    id: 'm9',
    genres: [
      'c1',
      'c10',
    ],
    name: 'Cream',
    imageUrl:
        'https://res.cloudinary.com/teepublic/image/private/s--srB00Snx--/t_Preview/t_Watermark/b_rgb:000000,c_limit,f_jpg,h_630,q_90,w_630/v1570140559/production/designs/6195474_0.jpg',
    description: 'Cream were a British rock band formed in London in 1966. The group consisted of bassist Jack Bruce, guitarist Eric Clapton, and drummer Ginger Baker.',
    songs: [
      'I Feel Free',
      'Badge',
      'N.S.U',
      'We\'re Going Wrong ',
      'Strange Brew',
    ],
    albums: [
      'Disraeli Gears',
      'Wheels of Fire',
      'Fresh Cream,',
      'Goodbye',
      'Live Cream',
      'Best of Cream',
      'The Sopranos'
    ],
    isSolist: false,
    isBand: true,
  ),
];
