perms = (0..9).to_a.permutation(10)
999999.times { perms.next }
puts perms.next.join
