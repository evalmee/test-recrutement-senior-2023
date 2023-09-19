class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.datetime :start_date
      t.datetime :stop_date

      t.timestamps
    end
  end
end
