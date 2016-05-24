class CustomerIdNotnull1 < ActiveRecord::Migration
  def change
  change_column_null :rental_records, :customer_id, false, 1
  end
end
