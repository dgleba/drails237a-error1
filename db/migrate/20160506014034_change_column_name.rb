class ChangeColumnName < ActiveRecord::Migration
   def change
  
      change_table :rental_records do |t|
      t.rename :output, :output2
   end
  
  end
end
