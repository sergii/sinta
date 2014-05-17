class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :site

      t.timestamps
    end
  end
end
