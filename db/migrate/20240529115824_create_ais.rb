class CreateAis < ActiveRecord::Migration[6.1]
  def change
    create_table :ais do |t|
      t.string :question

      t.timestamps
    end
  end
end
