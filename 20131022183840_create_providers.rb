class CreateProviders < ActiveRecord::Migration
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.string 'coverage area'
      # Add fields that let Rails automatically keep track
      # of when providers are modified
      t.timestamps
     end
    end

    def down
      drop_table 'providers' #delete the whole table and all of its data!
     end
    end
