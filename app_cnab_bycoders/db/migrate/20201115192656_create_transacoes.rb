class CreateTransacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :transacoes do |t|
      t.integer :tipo
      t.string :descricao
      t.string :natureza
      t.string :sinal

      t.timestamps
    end
  end
end
