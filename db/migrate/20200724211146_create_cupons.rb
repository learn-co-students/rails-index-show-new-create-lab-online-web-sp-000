class CreateCupons < ActiveRecord::Migration[5.0]
  def change
    create_table :cupons do |t|
      t.string :cupon_code, null: false
      t.string :store, null: false

      t.timestamps null: false      
    end
  end
end
