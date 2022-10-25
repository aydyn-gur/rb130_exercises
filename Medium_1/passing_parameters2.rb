birds = ['raven', 'finch', 'hawk', 'eagle']

def types(birds)
  yield(birds)
end

types(birds) { |_, _, *raptors| puts "Raptors: #{raptors.join(', ')}." }
