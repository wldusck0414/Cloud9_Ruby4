class Post < ActiveRecord::Base
    mount_uploader :pic, AvatarUploader
end
