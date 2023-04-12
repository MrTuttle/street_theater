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
puts "add 2 spectacles : OK -> creating perform..."

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
