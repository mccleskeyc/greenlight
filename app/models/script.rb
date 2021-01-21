class Script < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :title, :writer, :date, :notes

    def self.all_writers
        self.pluck(:writer).uniq
    end

    def self.by_writer(writer)
        where(writer: writer)
    end
end