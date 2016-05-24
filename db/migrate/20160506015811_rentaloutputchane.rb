class Rentaloutputchane < ActiveRecord::Migration
   def change
  
      change_table :rental_records do |t|
      t.rename :output2, :output
   end
  
  end
end
