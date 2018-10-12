namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	# 1. Schedule to run on Sunday At 5pm
  	# 2. Iterare over all employees
  	# 3. Skip AdminUsers
  	# 4. Send a message that has instructions and a link to log time
  	# No spaces or dashes
  	# Exactaly 10 charactures
  	# All characters have to be a number
  	# number: "555-555-5555"  BAD
  	# number: "5555555555" GOOD
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end

  end

end
