class CreateSoundBite < ActiveRecord::Migration
  def change
    create_table :soundBite do |t|
      t.string :title
      t.string :transcript
      t.integer :length
      t.binary :audiofile
      t.datetime :recording_date

      t.timestamps
    end
  end
end
