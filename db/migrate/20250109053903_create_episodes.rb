class CreateEpisodes < ActiveRecord::Migration[8.0]
  def change
    create_table :episodes do |t|
      t.boolean :bonus
      t.string :duration
      t.string :number
      t.string :summary
      t.string :title

      t.timestamps
    end
  end
end
