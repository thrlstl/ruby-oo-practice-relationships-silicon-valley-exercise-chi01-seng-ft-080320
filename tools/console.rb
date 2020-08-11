require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tech_startup = Startup.new("Cliqup", "Matthew Steele", "Social Media")
health_startup = Startup.new("HEALTHee", "Jenna Smith", "Health & Wellness")
fit_startup = Startup.new("FitFriend", "Malcolm Joseph Jr.", "Fitness")
fin_startup = Startup.new("QuickFund", "John Peters", "Finance")

mark = VentureCapitalist.new("Mark Smith", 2000000)
peter = VentureCapitalist.new("Peter Parker", 150000000000)
samantha = VentureCapitalist.new("Samantha Jones", 6750000)
carrie = VentureCapitalist.new("Carrie Bradshaw", 500000)

f1 = FundingRound.new(tech_startup, mark, "Pre-Seed", 75000)
f2 = FundingRound.new(tech_startup, mark, "Seed", 100000)
f3 = FundingRound.new(fit_startup, peter, "Series A", 75000000)
f4 = FundingRound.new(fin_startup, samantha, "Angel", 6000000)
f5 = FundingRound.new(fin_startup, carrie, "Series B", 75000)
f6 = FundingRound.new(tech_startup, peter, "Seed", 100000)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line