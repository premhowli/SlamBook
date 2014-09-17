class Slamrequest < ActiveRecord::Base
self.inheritance_column = nil
belongs_to :user
belongs_to :status
end
