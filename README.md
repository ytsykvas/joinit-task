This is a Ruby utility to convert a given number into its ISBN13 barcode representation. It checks if the input is a valid ISBN number and performs the conversion accordingly. This code is developed using Ruby 3.2.2 and RSpec 3.12 for testing.

## Usage

1. Clone this repository to your local machine.
2. Make sure you have Ruby 3.2.2 installed.
3. Install RSpec if you haven't already:

   ```bash
   gem install rspec

## Usage:
Run the barcode converter using the following command:
ruby barcode_checker.rb
This will convert the provided ISBN number to its ISBN13 barcode and display it if the input is valid. If the input is not valid, it will return "wrong ISBN."

## Testing

You can run the included RSpec tests to ensure the code's correctness. The tests cover various scenarios, including valid and invalid ISBN numbers.

To run the tests, use the following command:
   ```bash
   rspec barcode_checker_spec.rb
