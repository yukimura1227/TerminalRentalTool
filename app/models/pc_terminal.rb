class PcTerminal < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :rental_status
  has_paper_trail
end
