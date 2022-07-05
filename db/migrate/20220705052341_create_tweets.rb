class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.bigint :tweet_id, null: false
      t.text :body, null: false
      t.json :entity

      t.timestamps
    end
    add_index :tweets, :tweet_id, unique: true
  end
end
