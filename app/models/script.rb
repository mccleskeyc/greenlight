class Script < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :title, :writer, :date, :notes
end
