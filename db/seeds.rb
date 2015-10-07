# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = [ "root", "q2", "q3", "q4", "q5" ]
names.each do |name|
	instance_variable_set("@#{name}", Question.create!)
end
@root.append_child(@q3)
@root.append_child(@q4)
@root.append_child(@q5)
@root.append_child(@q2)


