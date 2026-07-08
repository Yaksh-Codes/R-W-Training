def input_data():
    """
    Accepts any number of integer values from the user.
    """
    global data

    while True:
        try:
            data = list(map(int, input("\nEnter data for 1D Array (separated by spaces): ").split()))

            if len(data) == 0:
                print("Please enter at least one number.")
                continue

            print("\nData has been stored successfully!")
            break

        except ValueError:
            print("Invalid input! Please enter only integers.")
            
def display_summary():

    if not data:
        print("\nNo data available.")
        return

    print("\nData Summary:\n")
    print(f" - Total elements : {len(data)}")
    print(f" - Minimum value : {min(data)}")
    print(f" - Maximum value : {max(data)}")
    print(f" - Sum of all values : {sum(data)}")
    print(f" - Average value : {sum(data)/len(data):.2f}")


# Recursive Factorial

def factorial(n):

    if n == 0 or n == 1:
        return 1

    return n * factorial(n - 1)


def calculate_factorial():

    num = int(input("\nEnter a number to calculate its factorial: "))

    print(f"\nFactorial of {num} is: {factorial(num)}")


# Lambda Filter

def filter_data():

    if not data:
        print("\nNo data available.")
        return

    threshold = int(input("\nEnter a threshold value to filter out data above this value: "))

    result = list(filter(lambda x: x >= threshold, data))

    print(f"\nFiltered Data (values >= {threshold}):")

    if result:
        print(*result, sep=", ")
    else:
        print("No values found.")



# Sorting

def sort_data():

    if not data:
        print("\nNo data available.")
        return

    print("\nChoose sorting option:")
    print("1. Ascending")
    print("2. Descending")

    choice = input("\nEnter your choice: ")

    if choice == "1":
        print("\nSorted Data in Ascending Order:")
        print(*sorted(data), sep=", ")

    elif choice == "2":
        print("\nSorted Data in Descending Order:")
        print(*sorted(data, reverse=True), sep=", ")

    else:
        print("Invalid Choice.")



# Return Multiple Values

def statistics():

    if not data:
        print("\nNo data available.")
        return

    minimum = min(data)
    maximum = max(data)
    total = sum(data)
    average = total / len(data)

    return minimum, maximum, total, average


def display_statistics():

    result = statistics()

    if result:

        minimum, maximum, total, average = result

        print("\nDataset Statistics:\n")
        print(f" - Minimum value : {minimum}")
        print(f" - Maximum value : {maximum}")
        print(f" - Sum of all values : {total}")
        print(f" - Average value : {average:.2f}")



# Main Menu

def menu():

    while True:

        print("\n" + "*" * 55)
        print("Welcome to the Data Analyzer and Transformer Program")
        print("*" * 55)

        print("""
Main Menu

1. Input Data
2. Display Data Summary (Built-in Functions)
3. Calculate Factorial (Recursion)
4. Filter Data by Threshold (Lambda Function)
5. Sort Data
6. Display Dataset Statistics (Return Multiple Values)
7. Exit Program
""")

        choice = input("Please enter your choice: ")

        if choice == "1":
            print("\nStep 1: Input Data")
            input_data()

        elif choice == "2":
            print("\nStep 2: Display Data Summary")
            display_summary()

        elif choice == "3":
            print("\nStep 3: Calculate Factorial")
            calculate_factorial()

        elif choice == "4":
            print("\nStep 4: Filter Data by Threshold")
            filter_data()

        elif choice == "5":
            print("\nStep 5: Sort Data")
            sort_data()

        elif choice == "6":
            print("\nStep 6: Display Dataset Statistics")
            display_statistics()

        elif choice == "7":
            print("\nThank you for using the Data Analyzer and Transformer Program. Goodbye!")
            break

        else:
            print("\nInvalid choice! Try again.")



# Run Program

menu()