class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :description
      t.string :sub_topic
      t.string :link
      t.references :topic, references: :articles

      t.timestamps
    end
  end
end
