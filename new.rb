define :two_notes do
  play 60
  sleep 1
  play 65
  sleep 1
end


use_bpm 90

live_loop :backg do
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
end


live_loop :sounds  do
  sample :guit_e_fifths, rate: 0.5, amp: 1.5
  sample :guit_e_fifths, rate: 1, amp: 0.8
  sleep 1.5
  sample :guit_e_fifths, rate: 1.5, amp: 0.8
  sleep 1.5
  sample :guit_e_fifths, rate: 1.4, amp: 0.8
  sleep 3
  sample :guit_e_slide, rate: 1, amp: 0.8
  sleep 2
end
two_notes

live_loop :clicks do
  sleep 15
  12.times do
    sample :drum_cymbal_pedal, start: 0.1, finish: 0.3, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.0892
  end
end

use_bpm 160
use_synth :fm
nbc_notes = [:ef3, :ef3, :ef3, :ef3, :ef3, :ef3, :ef3, :ef3,] # an array is a list of values

live_loop :ds do
  x = 0
  8.times do
    play nbc_notes[x]
    sleep 3.7
    x = x + 1
    print x
  end
end