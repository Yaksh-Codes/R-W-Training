print("Welcome to the Pattern Generator and Number Analyzer System..!")

while True:

    print("\n===== MENU =====")
    print("1. Generate Pattern")
    print("2. Analyze a Range of Numbers")
    print("3. Exit")

    choice = int(input("Enter Your Choice: "))

    if choice == 1:

        rows = int(input("Enter End Number: "))
        print("\nPattern:\n")

        a = 1
        while a <= rows:
            b = 1
            while b <= a:
                print("*", end=" ")
                b += 1
            print()
            a += 1

    elif choice == 2:

        start = int(input("Enter First Number: "))
        end = int(input("Enter Last Number: "))

        num = start
        total = 0

        while num <= end:

            if num % 2 == 0:
                print("Number", num, "is Even")
            else:
                print("Number", num, "is Odd")

            total += num
            num += 1

        print("Sum of Total Numbers from", start, "to", end, "is:", total)

    elif choice == 3:
        print("Thank You! Program Closed.")
        break

    else:
        print("Invalid Choice! Please enter 1, 2, or 3.")
