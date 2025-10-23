require_relative "slot_machine"

slot_machine = SlotMachine.new([SYMBOLS.sample, SYMBOLS.sample, SYMBOLS.sample])
p slot_machine.reels
p slot_machine.score