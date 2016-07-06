# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Todo.create([
    { title: "Learn Ruby", completed: true },
    { title: "Learn AJAX", completed: true },
    { title: "Learn Ruby on Rails", completed: false },
    { title: "Learn React", completed: true },
    { title: "Search for vacancies", completed: false },
    { title: "Talk to Rayta", completed: false },
    { title: "Update LinkedIn profile", completed: false },
    { title: "Clean up GitHub account", completed: false }
])
