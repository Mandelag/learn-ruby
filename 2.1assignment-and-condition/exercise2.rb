def how_many_times(monthly_fee, individual_ticket)
  puts (1.0*monthly_fee/individual_ticket).ceil
end

# tests

how_many_times(40,15)
how_many_times(30,10)
how_many_times(80,15)



