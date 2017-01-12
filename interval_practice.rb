INTERVALS = ["Perfect 4th", "Perfect 5th", "Minor 3rd", "Major 3rd"]
DIRECTION = ["up", "down"]
TONES = ['A','B','C','D','E','F','G','Ab','A#','Bb','B#','Cb','C#','Db','D#','Eb','E#','Fb','F#','Gb','G#']

def random_intervals
  system "clear"
  interval_chooser = INTERVALS.product(DIRECTION).sample.join(' ')
  tone_chooser = TONES.sample
  puts ''
  puts "Sing the following interval:"
  puts ''
  puts "---  #{interval_chooser} from #{tone_chooser}  ---"
  puts ''
end

def desc_fourths
  system "clear"
  tone_chooser = TONES.sample
  puts ''
  puts "Sing the following interval:"
  puts ''
  puts "---  Perfect 4th down from #{tone_chooser}  ---"
  puts ''
end

def looper
  loop do
    random_intervals
    gets
    desc_fourths
    gets
  end
end

looper
