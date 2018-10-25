namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    	employees = Employee.all
      notification_message = "Please log in to the overtime management dashboard to request overtime or confirm your hours for last week: https://maz-overtime.herokuapp.com"
    	    	
    	employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
    		SmsTool.send_sms(number: employee.phone, message: notification_message)
    	end
    end
  end

  desc "Sends mail notification to managers (admin users) eash dat to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_post - Post.submitted
    admin_users = AdminUsers.all

    if submitted_post.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
