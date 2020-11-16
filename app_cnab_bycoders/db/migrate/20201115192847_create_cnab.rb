class CreateCnab < ActiveRecord::Migration[6.0]
  def change
    create_table :cnab do |t|
      t.date :data
      t.integer :valor
      t.string :cpf
      t.string :cartao
      t.string :hora
      t.string :dono_loja
      t.string :nome_loja
      t.references :transacao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
