class CreatePolies < ActiveRecord::Migration[5.0]
  def change
    create_table :polies do |t|
      t.string :name
      t.string :description
      t.string :docs
      t.string :bugtracker
      t.string :downloads
      t.string :license
      t.string :author
      t.string :submittedby
      t.string :website
      t.string :gitsshurl
      t.string :repotype

      t.timestamps
    end
  end
end
