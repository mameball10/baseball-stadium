class CreateMyplayers < ActiveRecord::Migration[5.2]
  def change
    create_table :myplayers do |t|
      t.references :user, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
