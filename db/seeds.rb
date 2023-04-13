# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Spectacle.destroy_all
Perform.destroy_all
puts "creating spectacle..."
Spectacle.create!(
  title:'Le grand Ecart',
  director: 'jean Michel test',
  description: 'C’est comme une odyssée. Un périple de 640 km en vélo pour aller enterrer un placenta de sa fille sur la terre de ses aïeux. Un retour en arrière pour retisser des fils entre l’endroit d’où on part et l’endroit où on arrive. Entre l’agriculture et la culture. Entre le culte du “cyclisme à la papa” et le théâtre populaire de Firmin Gémier. Entre le monde du silence et celui de la parole. C’est le solo d’un équilibriste bringuebalant et fragile en quête de légitimité qui questionne son choix de ne pas avoir “repris” la ferme, se demande d’où l’on est réellement et si la culture rend plus heureux.',
  duration: 1.5,
  distribution: 'Jean Michel distrib',
  production: 'Jean Michel prod',
  coproduction: 'Jean Michel coprod',
  origin: 'belgique',
  public: '6 ans et plus'
)
Spectacle.create!(
  title:'Labyrinthe',
  director: 'jean Michel test',
  description: '"C’est d’abord une ville et dans cette ville, un quartier, et dans ce quartier, un immeuble. Une fissure trace son sillon à l’intérieur de ce bâtiment. Le terrain est idéal pour raconter l’émiettement, la propagation de la maladie des murs jusqu’au grand fracas." Labyrinthe est une fable qui vient se raconter là où on veut bien l’écouter. Le son accompagne la marche et le récit, il raconte la pulsation des murs et des vies qui les habitent.',
  duration: 1.2,
  distribution: 'Jean Michel distrib',
  production: 'Jean Michel prod',
  coproduction: 'Jean Michel coprod',
  origin: 'belgique',
  public: '10 ans et plus'
)
Spectacle.create!(
  title:'Cabinet de curiosité',
  director: 'jean Michel director',
  description: 'Cabinet de Curiosité est une performance chorégraphique dans une boîte de verre reliée à trente casques diffusant l’univers sonore joué en direct. Elle donne à voir au plus près la dramaturgie microscopique d’un corps qui s’organise.',
  duration: 0.2,
  distribution: 'Jean Michel distrib',
  production: 'Jean Michel prod',
  coproduction: 'Jean Michel coprod',
  origin: 'france',
  public: 'Tout public'
)
Spectacle.create!(
  title:'Aquaria',
  director: 'jean Michel director',
  description: 'Sous couvert d’un univers fêlé, décomplexé et populaire qui détourne les tubes et se rit des clichés, le public est invité à partager des histoires de femmes. Chanson après chanson, nos deux divas espiègles et sensuelles se racontent, se dévoilent et laissent apparaître leurs envies autant que leurs questionnements. Et si tous les chagrins s’effaçaient dans la complicité ? Quel équilibre trouver entre l’amour, le désir, la séduction et le besoin de liberté ? ARIA 3000 c’est avant tout un état d’esprit, celui du rire et du défi.',
  duration: 0.2,
  distribution: 'Jean Michel distrib',
  production: 'Distribution : Hélène Pluyaut-Biwer & Fanny Chamboredon : Chanteuses et metteuses en scène / Clément Vallery : graphiste et technicien son',
  coproduction: 'Coproductions : La Roue Voilée',
  origin: 'france',
  public: 'Tout public'
)
puts "add 4 spectacles : OK -> creating perform..."

Perform.create!(
  date: '2021-04-11',
  cost: 10,
  spectacle_id: 1
)
Perform.create!(
  date: '2021-04-17',
  cost: 20,
  spectacle_id: 1
)
Perform.create!(
  date: '2021-04-17',
  cost: 5,
  spectacle_id: 2
)
puts "add 3 performs : OK"
