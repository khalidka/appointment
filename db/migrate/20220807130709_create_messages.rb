class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.references :user, null: false, foreign_key: true
      t.boolean :scheduled
      t.datetime :send_time
      t.string :status
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
