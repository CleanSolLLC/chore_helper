module ApplicationHelper

	def user_login_time
	  time = Time.now.strftime('%A %B %d, %G %r')
	end

	def user_last_login_time(currnt_user)
	  current_user.last_sign_in_at.in_time_zone("Eastern Time (US & Canada)").strftime('%A %B %d, %G %r')
	end
end
