class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.integer :time
      t.belongs_to :camper, null: false, foreign_key: true
      # rails g resource Signup time:integer camper:belongs_to activity:belongs_to --no-test-framework
      # We never want a signup without a camper Associated
      t.belongs_to :activity, null: false, foreign_key: true
      # rails g resource Signup time:integer camper:belongs_to activity:belongs_to --no-test-framework
      # We never want a signup without an activity Associated

      t.timestamps
    end
  end
end
