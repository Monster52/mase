class Unit < ApplicationRecord
    
    belongs_to :user
    
    before_create do
        self.members = 1 if members.nil?
    end
    
    after_create do
        @user = self.user_id
        self.owner = User.find(@user).email
    end
    
end
