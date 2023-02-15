class CreateMovieTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_tickets do |t|
      t.string :company_name
      t.datetime :departure
      t.string :from
      t.string :to
      t.integer :num_max

      t.timestamps
    end
  end
end
