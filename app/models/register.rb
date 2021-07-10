class Register < ApplicationRecord
    validates_confirmation_of :Password
    attr_accessible :attribute1, attribute2
end
