puts "Welcome to the REPL Bowl! You are the coach of the
Wyncode Wyndriders and will be calling all of the plays for your team.
You must choose to pass, run, or kick a field goal  as you work your
way across the 100 yard field. Touchdowns are worth 6 points and a
field goal is worth 3. You will have 5 possessions to
beat the Automated Automatons."

wyncode_score = 0
auto_score = 0
5.times do
  yards_to_go = 100
  puts " The score is Wyncode Wyndriders: #{wyncode_score} Automated Automatons
  #{auto_score}"
while yards_to_go > 0
  puts "You have #{yards_to_go} yards to go, please type 'run' 'pass' or 'kick' "
  play = gets.chomp.downcase
  roll = rand(100)
  case play
  when "run"
    if roll < 5
      puts "Oh no you fumbled!"
      break
    elsif roll < 55
      puts "You ran the ball for 5 yards"
      yards_to_go -= 5
    elsif roll < 80
      puts "You ran the ball for 10 years"
      yards_to_go -= 10
    elsif roll < 90
      puts "What a run! You ran the ball for 20 yards"
      yards_to_go -= 20
    else
      puts "You broke free and scored a long TD!"
      yards_to_go = 0
    end

  when "pass"
    if roll < 15
      puts "Oh no, an interception!"
      break
    elsif roll < 30
      puts "You threw an incomplete pass!"
    elsif roll < 55
      puts "You completed the pass for 15 yards!"
      yards_to_go -= 15
    elsif roll < 85
      puts  "You completed the pass for 25 yards!"
      yards_to_go -= 25
    else
      puts "You threw for a TD!"
      yards_to_go = 0
    end

  when "kick"
    if (yards_to_go < 50) && (roll < 80)
      puts "You made a field goal!"
      wyncode_score += 3
      break
    else
      puts "You missed the kick!"
      break
    end
  else
    puts "Are you sure you typed 'run' 'kick' or 'pass'?"
  end #This ends the case loop
  if yards_to_go <= 0
  wyncode_score += 6
  end
end #This ends the while loop

auto_roll = rand(100)
  if auto_roll < 41
    puts "Oh no! The Automated Automatons have scored a td :("
    auto_score += 6
  elsif auto_roll < 67
    puts "The Automated Automatons have kicked a field goal.. at least
    they didn't score a TD!"
    auto_score += 3
  else
    puts "You stopped the Automated Automatons from scoring!"
  end
end#This ends the 5.times do loop
if wyncode_score > auto_score
  puts "Congratulations!!! The Wyncode Wyndriders
  have won the REPL BOWL by the score of #{wyncode_score} - #{auto_score}!!!!!"
elsif auto_score > wyncode_score
  puts "Unfortunately the Automated Automatons have won by the score of #{auto_score} - #{wyncode_score} :(
  Better luck next time!"
else
  puts "Do you believe it? The REPL bowl ended in a tie! #{wyncode_score} - #{auto_score}"
end
