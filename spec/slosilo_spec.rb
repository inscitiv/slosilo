require 'spec_helper'

describe Slosilo do
  let(:key) { OpenSSL::PKey::RSA.new 512 }
  before { Slosilo::adapter['test'] = key.to_der }
  
  describe '[]' do
    it "returns a Slosilo::Key" do
      Slosilo[:test].should be_instance_of Slosilo::Key
    end
  end
end
