class CreateRes < ActiveRecord::Migration[6.1]
  def change
    create_table :res do |t|
      t.string :question

      t.timestamps
    end
  end
end
