golden_state = {
	PG: ["Steph Curry", 30],
	SG: ["Klay Thompson", 11],
	SF: ["Harrison Barnes", 40],
	PF: ["Draymond Green", 23],
	C: ["Andrew Bogut", 12]
}

player_names = []
golden_state.each {|key, val| player_names << val[0]}
puts player_names

player_numbers = []
golden_state.each {|key, val| player_numbers << val[1]}
puts player_numbers


positions = golden_state.keys
puts positions