class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :movie_ticket_id
      t.string :status
      t.string :payment_details
      t.integer :amount_cents, default: 0

      t.timestamps
    end
  end
end
