class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :url
      t.timestamp :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
