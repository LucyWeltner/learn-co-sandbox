#hashes within a hash
students = {:paul => {:hair => "darkbrown", :age => 21, :talents => ["juggling", "improv", "blog writing"]}, :sarah => {:hair => "blond", :age => 17, :talents => ["beatboxing", "crew", "kindness"]}, :collin => {:hair => "buzzed", :age => 16, :talents => ["rapping", "music criticism", "Magic the Gathering"]}, :maia => {:hair => "poofy", :age => 19, :talents => ["backpacking", "science", "Magic the Gathering"]}}
#use multiple sets of brackets to access data deeper in the hash
p students[:paul][:hair] #returns darkbrown
p students[:maia] #returns Maia's hash
colin = students[:collin]
p colin[:talents] #returns Colin's talent array
p colin[:talents][0] #returns rapping