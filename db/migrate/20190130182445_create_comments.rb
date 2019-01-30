class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :commment
      t.belongs_to :link, index: true
      t.timestamps
    end
  end
end
