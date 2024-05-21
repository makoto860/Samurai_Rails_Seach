class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :address
      t.string :content

      t.timestamps
    end
  end
end
