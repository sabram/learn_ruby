
def translate2 param
  vowel_sound = ["a","e","i","o","u","y"]

  words = param.split(" ")
  words.map {|w|
    puts w
    if vowel_sound.include?(w[0])
      puts "starts with a vowel sound"
      w + "ay"
    else
      puts "starts with a consonant sound"
      cons_start = ""
      i = 0;
      w.split(//).each {|letter|
        puts letter
        if not vowel_sound.include?(letter)
          puts "consonant sound"
          cons_start += letter
        else
            break
        end
        i+=1
      }
      puts cons_start.length
      w[cons_start.length,100] + cons_start + "ay"
    end
  }.join(" ")

end

def translate allwords
  puts allwords
  translatedWords = []
  allwords.split.each{|word|
    puts word
    if ( word =~ /^[aeiou](.*)/ )
      puts "Starts with vowel1"
      translatedWords.push( word + "ay" )
    elsif ( word =~ /((qu|^[^aeiou]*)(.*))/ )
      puts "Starts with cons2"
      puts "1 = #{$1}"
      puts "2 = #{$2}"
      translatedWords.push( $3.to_s + $2.to_s + "ay")
    end
  }
  translatedWords.join(" ")

end
