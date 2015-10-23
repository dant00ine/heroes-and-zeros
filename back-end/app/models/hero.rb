class Hero < ActiveRecord::Base
  has_many :feats, dependent: :destroy
end
