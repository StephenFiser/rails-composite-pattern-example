jim = Employee.new(name: "Jim Halpert")
jim.save
dwight = Employee.new(name: "Dwight Shrute")
dwight.save
pam = Employee.new(name: "Pam Halpert")
pam.save
sb = Employee.new(name: "SpongeBob SquarePants")
sb.save

sales = Team.new(name: "Sales")
sales.save
kitchen = Team.new(name: "Kitchen")
kitchen.save

sales << jim
sales << dwight
sales << pam

kitchen << sb
