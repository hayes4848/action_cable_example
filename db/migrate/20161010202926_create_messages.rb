class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.belongs_to :chatroom, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
