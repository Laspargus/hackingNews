class CreateSubcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :subcomments do |t|
      t.text :subcomment
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
