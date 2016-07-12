class Violation < ActiveRecord::Base
	require 'csv'
	def self.import(file)
    	CSV.foreach(file.path, :headers => true) do |row|
        	Violation.create! row.to_hash
    	end
    end
end
