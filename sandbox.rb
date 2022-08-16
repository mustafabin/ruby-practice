play_again = true
while play_again
    puts "Guess my number game :) \n \n"
    puts "Enter Upper Range : "
    upper = gets.chomp.to_i
    puts "Enter Lower Range : "
    lower = gets.chomp.to_i
    is_over = false
    random_num = rand(lower .. upper)
    while !is_over
        puts "Enter a Guess :"
        guess = gets.chomp.to_i
        if guess < random_num
            puts "A lil higher"
        elsif guess > random_num
            puts "A lil lower"
        else
            is_over = true
            puts "Congratulations, guess is correct ! your guess #{guess} and my number is #{random_num} \n"
            puts "Do you still want to play ? (y/yes to continue)"
            answer = gets.chomp
            if answer == "yes"|| answer == "y"
                play_again = true
            else
                play_again = false
            end
        end
    end
end