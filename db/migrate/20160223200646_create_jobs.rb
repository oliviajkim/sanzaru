class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_number
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
