class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|

      t.text        :body, null: false
      t.string      :rate, null: false
      t.references  :user, null: false
      t.references  :memo, null: false

      t.timestamps       null: false
    end
  end
end
