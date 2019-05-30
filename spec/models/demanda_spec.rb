require 'rails_helper'

RSpec.describe Demanda, type: :model do

  subject { Demanda.new }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:rua) }
    it { is_expected.to validate_presence_of(:bairro) }
    it { is_expected.to validate_presence_of(:cidade) }
    it { is_expected.to validate_presence_of(:uf) }
    it { is_expected.to validate_presence_of(:numero) }
    it { is_expected.to validate_presence_of(:cep) }
    it { is_expected.to define_enum_for(:situacao).with(Demanda.situacoes.keys) }
  end

#   TODO: criar testes para contato e descricao
end
