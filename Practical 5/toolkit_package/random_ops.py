import random
import string


def generate_random_number():
    
    try:
        low = int(input("Enter lower bound: "))
        high = int(input("Enter upper bound: "))
        if low > high:
            low, high = high, low
        print(f"Random Number: {random.randint(low, high)}")
    except ValueError:
        print("Please enter valid integers.")


def generate_random_list():
    
    try:
        size = int(input("Enter the size of the list: "))
        low = int(input("Enter lower bound: "))
        high = int(input("Enter upper bound: "))
        if low > high:
            low, high = high, low
        random_list = [random.randint(low, high) for _ in range(size)]
        print(f"Random List: {random_list}")
    except ValueError:
        print("Please enter valid integers.")


def generate_random_password():
    
    try:
        length = int(input("Enter password length: "))
        if length < 1:
            print("Password length must be at least 1.")
            return
        characters = string.ascii_letters + string.digits + string.punctuation
        password = "".join(random.choice(characters) for _ in range(length))
        print(f"Generated Password: {password}")
    except ValueError:
        print("Please enter a valid integer for length.")


def generate_random_otp():
    
    try:
        length = int(input("Enter OTP length: "))
        if length < 1:
            print("OTP length must be at least 1.")
            return
        otp = "".join(str(random.randint(0, 9)) for _ in range(length))
        print(f"Generated OTP: {otp}")
    except ValueError:
        print("Please enter a valid integer for length.")


def random_menu():
    
    while True:
        print("\nRandom Data Generation:")
        print("1. Generate Random Number")
        print("2. Generate Random List")
        print("3. Create Random Password")
        print("4. Generate Random OTP")
        print("5. Back to Main Menu")
        choice = input("Enter your choice: ").strip()

        if choice == "1":
            generate_random_number()
        elif choice == "2":
            generate_random_list()
        elif choice == "3":
            generate_random_password()
        elif choice == "4":
            generate_random_otp()
        elif choice == "5":
            print("=" * 30)
            break
        else:
            print("Invalid choice! Please try again.")
            continue
        print("=" * 30)


if __name__ == "__main__":
    random_menu()
