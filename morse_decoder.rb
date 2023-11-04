class MorseCodeDecoder
  MORSE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def char_decoder(crypt)
    MORSE[crypt] || ''
  end

  def word_decoder(letter)
    letter.split.map { |char| char_decoder(char) }.join
  end

  def decode(message)
    message.split('   ').map { |letter| word_decoder(letter) }.join(' ')
  end
end

decoder = MorseCodeDecoder.new
# rubocop:disable Layout/LineLength
puts decoder.decode('.... - - .--. ... ---... -..-. -..-. .-- .-- .-- .-.-.- -.-- --- ..- - ..- -... . .-.-.- -.-. --- -- -..-. .-- .- - -.-. .... ..--.. ...- -...- -.. --.- .-- ....- .-- ----. .-- --. -..- -.-. --.- .-... .--. .--. -...- -.-- --. ..- .. -.-. -- .-.. .--- .- ...-- .--- ...- -... --. .-- ...-- -..')
# rubocop:enable Layout/LineLength
