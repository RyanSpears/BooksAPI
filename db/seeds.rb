# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Author.destroy_all
Book.destroy_all

williamGibson = Author.create({ name: "William Gibson" })
jamesCorey = Author.create({ name: "James S.A Corey" })
nealStephenson = Author.create({ name: "Neal Stephenson" })

Book.create({title: "Leviathan Awakes", pages: 577, publisher: "Orbit Books", year: "2011", description: "", author: Author.find(2)})
Book.create({title: "Caliban's War", pages: 605, publisher: "Orbit Books", year: "2012", description: "", author: Author.find(2)})
Book.create({title: "Abaddon's Gate", pages: 547, publisher: "Orbit Books", year: "2013", description: "", author: Author.find(2)})
Book.create({title: "Cibola Burn", pages: 591, publisher: "Orbit Books", year: "2014", description: "", author: Author.find(2)})
Book.create({title: "Nemesis Games", pages: 536, publisher: "Orbit Books", year: "2015", description: "", author: Author.find(2)})
Book.create({title: "Babylon's Ashes", pages: 544, publisher: "Orbit Books", year: "2016", description: "", author: Author.find(2)})
Book.create({title: "Persepolis Rising", pages: 560, publisher: "Orbit Books", year: "2017", description: "", author: Author.find(2)})
Book.create({title: "Tiamat's Wrath", pages: 544, publisher: "Orbit Books", year: "2018", description: "", author: Author.find(2)})

#   Character.create(name: "Luke", movie: movies.first)
