
#Prompt in the Start of the Game
print("***Welcome to Stone Paper Scissor Game***")
while 1:
    print("\nMenu")
    print("1.Start Game")
    print("2.Exit")
    key = int(input("Enter Your Choice - "))
    match (key):
        case 1:
            print("\n 1.Stone | 2. Paper | 3.Scissor")
        case 2:
            exit(1)            
