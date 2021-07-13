class Register < ApplicationRecord
    has_secure_password
    validates :termsAndCondition, acceptance: true
    validates_confirmation_of :Password
end
