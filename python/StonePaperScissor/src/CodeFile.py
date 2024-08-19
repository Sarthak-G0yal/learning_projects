import random
import numpy as np


WinLoseMatrix = [[0,1,-1],[-1,0,1],[1,-1,0]]
# A matrix to define the Winning And Losing cases of the game.
# Here 1 represent user's Win, 0 represent draw, -1 represent user's loss.


User_Points = 0     # Variable to Count the wins of user.
Coumputer_Points = 0    # Variable to Count the wins of Computer.


def Computer_Guess():   # returns a number as computer guess.
    return random.randint(1,3)


def Game_function(user):    
    return (WinLoseMatrix[Computer_Choice-1][user-1])
             

# Prompt in the Start of the Game
print("\n\n***Welcome to Stone Paper Scissor Game***")
while 1:
    print("\nMenu")
    print("1.Play Game")
    print("2.Show Result And Exit")
    key = int(input("Enter Your Choice - "))
    match (key):
        case 1:
            print("\n 1.Stone | 2. Paper | 3.Scissor")
            user = int(input("Enter Your Choice - "))
            if (user >= 1 and user <= 3):
                Computer_Choice = Computer_Guess()
                print("Computer's Choice - ",Computer_Choice)
                if Game_function(user) == 1 :
                    print("User Wins.")
                    User_Points += 1
                elif Game_function(user) == -1 :
                    print("Computer Wins.")        
                    Coumputer_Points += 1
                else :
                    print("Draw.")
            else:
                print("Please enter a valid choice...")
                continue
        case 2:
            print("\nUser Score - ",User_Points)
            print("Computer Score - ",Coumputer_Points)
            if(User_Points > Coumputer_Points):
                print("User Wins the whole Match.\n")
            elif(User_Points < Coumputer_Points):
                print("Computer Wins the Whole Match.\n")
            else:
                print("The Match was a Draw.\n")
            key = input("Enter N to close the console - ")
            if key == 'N' or key == 'n':
                exit(1)
                        
        case _:
            print("Please enter a valid choice...")