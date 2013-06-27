class CreatePrintPrimes < ActiveRecord::Migration
  def change
    create_table :print_primes do |t|

      t.timestamps
    end
  end
end
