class Script < ActiveRecord::Base
    validates_presence_of :title, :writer, :date, :notes
end
