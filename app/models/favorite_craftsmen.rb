class FavoriteCraftsmen < ActiveRecord::Base
  attr_accessible :craftsman_id, :user_id

  belongs_to :craftsman
  belongs_to :user
end
