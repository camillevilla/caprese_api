# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tags = Tag.create([
  {name: "Python"},
  {name: "Javascript"},
  {name: "Ruby"}
  ])

FactoryGirl.create(:user)
FactoryGirl.create(:pomodoro)
FactoryGirl.create(:pomodoro)
FactoryGirl.create(:pomodoro_tag)
FactoryGirl.create(:pomodoro_tag, tag_id: 2)
FactoryGirl.create(:pomodoro_tag, pomodoro_id: 2, tag_id: 2)
FactoryGirl.create(:pomodoro_tag, pomodoro_id: 2, tag_id: 3)