class Terminal < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :rental_status
  has_one :sim
  belongs_to :application
  has_paper_trail
end
