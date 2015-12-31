class Application < ActiveRecord::Base
  belongs_to :application_type
  has_many :terminals
end
