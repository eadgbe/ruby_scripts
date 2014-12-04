loop do
    #Use less to get the file contents and Perl to color in red the strings that contains 'Err'
    puts `less #{ARGV[0]} | perl -pe 's/.*Err.*/\e[1;31m$&\e[0m/g'`

    sleep(5)

    #clear the terminal
    puts "\e[H\e[2J"
end

