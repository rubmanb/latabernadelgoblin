class Product {
  final String image, title, description, name, type, jugadores;
  final int stock, id;
  final double price;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.name,
      required this.type,
      required this.price,
      required this.stock,
      required this.id,
      required this.jugadores});
}

List<Product> products = [
  Product(
      image: "assets/images/zombicide-friends-and-foes.jpg",
      title: "Zombicide BlackPlague",
      description:
          "Contiene: \n29 miniaturas: 4 Supervivientes, 6 Familiares, 18 Caminantes corrompidos, 1 Abominación corrompida; 5 módulos de tablero (de doble cara); 4 tarjetas de"
          "identificación y 33 minicartas: 19 cartas de Equipo y 14 cartas de Zombi.",
      name: "Zombicide 2.0",
      type: "juego de mesa-Campaña",
      price: 80.00,
      stock: 10,
      id: 12341234,
      jugadores: "2-6"),
  Product(
      image: "assets/images/star-wars-legion-spanish.jpg",
      title: "StarWars LegionBase",
      description: "Contenido: \n"
          "33 miniaturas de plástico, 8 barricadas de plástico, 15 dados, 3 plantillas de movimiento, 1 regla de alcance, 8 cartas de Unidad, 35 cartas de Mejora, 14 cartas de Mando, 12 cartas de Batalla, 1 indicador de ronda, 107 fichas diversas, 1 indicador de ronda y 1 cuaderno de Aprende a Jugar.",
      name: "Star Wars Legion",
      type: "juego de mesa-Campaña",
      price: 109.99,
      stock: 10,
      id: 11122233,
      jugadores: "2"),
  Product(
      image: "assets/images/speedpaint-starter-set.jpg",
      title: "Pack Pinturas Army Painter",
      description:
          "The all-in-one Warpaint Speedpaint is truly a one-coat painting solution. In the Speedpaint Starter Set you’ll find all the basic colours you need to begin painting beautiful tabletop-quality miniatures in no time. Simply apply one rich coat of Speedpaint directly over a primed miniature and you are done! All of the colours are using tried and true high-quality heavy pigments.",
      name: "Pinturas Army Miniaturas",
      type: "Modelismo-pinturas",
      price: 99.99,
      stock: 10,
      id: 12323145,
      jugadores: "Individual"),
  Product(
      image: "assets/images/small-world-of-warcraft.jpg",
      title: "Small World of Warcraft",
      description: "La guerra por Azeroth ha comenzado!"
          "Amanece un nuevo día en Azeroth. Un día como todos los anteriores y como todos los que le seguirán. Un día de lucha despiadada por el control de World of Warcraft. No es solo que este Small World sea un territorio demasiado pequeño para todos, sino que también alberga el interminable conflicto entre las facciones de la Alianza y la Horda. Ya ha amanecido. Ha llegado la hora de luchar a la vanguardia de esta batalla.",
      name: "WoW",
      type: "Juego de mesa",
      price: 69.99,
      stock: 2,
      id: 9876456,
      jugadores: "2-5"),
  Product(
      image: "assets/images/aristeia-core-box-castellano.jpg",
      title: "Aristeia",
      description: "Contiene:\n"
          '8 '
          'figuras de personajes con sus cartas exclusivas (plástico-premontadas), '
          '10 '
          'cartas, '
          '8 '
          'cartas de iniciativa, '
          '52 '
          'cartas tácticas, '
          '3 '
          'libretos (Acceso a la Esfera Humana, Cómo Jugar y la Guía de Referencia Rápida), '
          '1 '
          'tablero reversible (el HexaDome), '
          'Dados, marcadores y tokens.',
      name: "Aristeia",
      type: "Juego de mesa",
      price: 65.00,
      stock: 3,
      id: 5642278,
      jugadores: "2")
];