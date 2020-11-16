class UtilService
  # Service para leitura de arquivo cnab

  def self.codificar(parametro)
    dados = []
    File.foreach(parametro)
        .map do |line|
      dados << hash_estrutura(line)
    end
    cnab_dados(dados)
  end

  def self.hash_estrutura(line)
    {
      tipo: line[0].to_i,
      data: formatar_data(line[1..8]),
      valor: conversao_sinal(line[9..18].to_i / 100, line[0].to_i),
      cpf: line[19..29],
      cartao: line[30..41],
      hora: formatar_hora(line),
      dono_loja: line[48..61],
      nome_loja: line[62..80]
    }
  end

  def self.conversao_sinal(parametro, tipo)
    if [1, 4, 5, 6, 7, 8].include?(tipo)
      parametro
    else
      parametro * -1
    end
  end

  def self.formatar_data(parametro)
    Date.parse(parametro).strftime('%m/%d/%Y')
  end

  def self.formatar_hora(line)
    "#{line[42..47][0..1]}:#{line[42..47][2..3]}:#{line[42..47][4..5]}"
  end

  def self.cnab_dados(dados)
    dados.each do |single|
      tipo = single[:tipo]
      data = single[:data]
      valor = single[:valor]
      cpf = single[:cpf]
      cartao = single[:cartao]
      hora = single[:hora]
      dono = single[:dono_loja]
      loja = single[:nome_loja]
      Cnab.create(transacao_id: tipo, data: data, valor: valor, cpf: cpf, cartao: cartao, hora: hora, dono_loja: dono, nome_loja: loja)
    end
  end
end
