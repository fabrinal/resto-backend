class Transaction < ActiveRecord::Base
  belongs_to :order, autosave: true
end
