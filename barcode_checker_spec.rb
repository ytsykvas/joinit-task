require_relative 'barcode_checker'

RSpec.describe BarcodeChecker do
  describe '.number_to_isbn' do
    context 'with a valid ISBN number' do
      it 'converts the number 978014300723 to ISBN13 barcode' do
        barcode = BarcodeChecker.number_to_isbn('978014300723')
        expect(barcode).to eq('9780143007234')
      end

      it 'converts the number 686914300182 to ISBN13 barcode' do
        barcode = BarcodeChecker.number_to_isbn('686914300182')
        expect(barcode).to eq('6869143001824')
      end

      it 'converts the number 238907500182 to ISBN13 barcode' do
        barcode = BarcodeChecker.number_to_isbn('238907500182')
        expect(barcode).to eq('2389075001821')
      end
    end

    context 'with a not numeric symbol in number' do
      it 'returns "wrong ISBN"' do
        barcode = BarcodeChecker.number_to_isbn('123456аа89012')
        expect(barcode).to eq('wrong ISBN')
      end
    end
  end

  describe '.valid_isbn?' do
    context 'with a valid ISBN number' do
      it 'returns true' do
        result = BarcodeChecker.valid_isbn?('978014300723')
        expect(result).to eq(true)
      end
    end

    context 'with an invalid number length' do
      it 'returns false' do
        result = BarcodeChecker.valid_isbn?('1234511116789012')
        expect(result).to eq(false)
      end
    end
  end
end
