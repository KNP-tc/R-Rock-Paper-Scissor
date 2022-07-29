rps <- function() {
  print("Welcome to Rock Paper Scissor")
  total_result <- c()
  while(TRUE) {
    bot_option <- c("r","p","s")
    user_action <- readline("Please choose Rock(r) Paper(p) or Scissor(s) to take action or 'quit' to leave the game : ")
    bot_action <- sample(bot_option,1)
    
    if (bot_action == user_action) {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("it's a tie")
      total_result <- append(total_result,"tie")
    } else if (bot_action == "r" & user_action == "s") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you lose")
      total_result <- append(total_result,"lose")
    } else if (bot_action == "p" & user_action == "s") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you win")
      total_result <- append(total_result,"win")
    } else if (bot_action == "p" & user_action == "r") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you lose")
      total_result <- append(total_result,"lose")
    } else if (bot_action == "s" & user_action == "r") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you win")
      total_result <- append(total_result,"win")
    } else if (bot_action == "s" & user_action == "p") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you lose")
      total_result <- append(total_result,"lose")
    } else if (bot_action == "r" & user_action == "p") {
      print(paste("bot: ",bot_action, "VS. user: ",user_action))
      print("you win")
      total_result <- append(total_result,"win")
    } else if (user_action == "quit") {
      total <- as.factor(total_result)
      print(table(as.factor(total_result)))
      print("thankyou for playing")
      break
    } else {
      print("Plese choose r/p/s or quit to leave")
    }  
  }
}


rps()

