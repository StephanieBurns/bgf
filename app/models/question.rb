class Question < ActiveRecord::Base
	  # mount_uploader :avatar, AvatarUploader
end

# q = Question.new
# # q.avatar = params[:file] # Assign a file like this, or
# q.avatar = File.open('somewhere') # like this
# q.save!
# q.avatar.url # => '/url/to/file.png'
# q.avatar.current_path # => 'path/to/file.png'
# q.avatar.identifier # => 'file.png'

