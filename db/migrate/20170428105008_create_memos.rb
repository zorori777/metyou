class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.text       :body
      t.string     :people
      t.string     :image
      t.references :user, null: false

      t.timestamps
    end
  end
end
