class MorseCodeDecoder
  MORSE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def charDecoder(crypt)
    MORSE[crypt] || ''
  end

  def letterDecoder(letter)
    letter.split.map { |char| charDecoder(char) }.join
  end

  def decode(message)
    message.split('   ').map { |letter| letterDecoder(letter) }.join(' ')
  end
end

decoder = MorseCodeDecoder.new
puts decoder.decode('.... - - .--. ... ---... -..-. -..-. .-- .-- .-- .-.-.- -.-- --- ..- - ..- -... . .-.-.- -.-. --- -- -..-. .-- .- - -.-. .... ..--.. ...- -...- -.. --.- .-- ....- .-- ----. .-- --. -..- -.-. --.- .-... .--. .--. -...- -.-- --. ..- .. -.-. -- .-.. .--- .- ...-- .--- ...- -... --. .-- ...-- -..')