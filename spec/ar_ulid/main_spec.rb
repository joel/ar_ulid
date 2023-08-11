module ArUlid
  RSpec.describe Main do
    subject(:foo) { described_class.new }
    describe '#ar_ulid' do
      context 'when all is good' do
        let(:input) { 'foo' }
        let(:result) { 'foo' }
        it do
          expect(foo.ar_ulid(input)).to eql(result)
        end
      end
    end
  end
end
