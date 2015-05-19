class Question < ActiveRecord::Base
    has_one :answer
    validates :question, presence: true
end
