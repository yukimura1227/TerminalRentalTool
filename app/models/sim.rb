class Sim < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :rental_status
  belongs_to :terminal
end
