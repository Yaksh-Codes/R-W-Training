import time
from datetime import datetime


def display_current_datetime():
    
    now = datetime.now()
    print(f"\nCurrent Date and Time: {now.strftime('%Y-%m-%d %H:%M:%S')}")


def calculate_date_difference():
    
    try:
        first_date_str = input("Enter the first date (YYYY-MM-DD): ").strip()
        second_date_str = input("Enter the second date (YYYY-MM-DD): ").strip()

        first_date = datetime.strptime(first_date_str, "%Y-%m-%d")
        second_date = datetime.strptime(second_date_str, "%Y-%m-%d")

        difference = abs((second_date - first_date).days)
        print(f"Difference: {difference} days")
    except ValueError:
        print("Invalid date format! Please use YYYY-MM-DD.")


def format_custom_date():
    
    print("\nCommon format codes: %Y (year), %m (month), %d (day), "
          "%H (hour), %M (minute), %S (second), %A (weekday), %B (month name)")
    fmt = input("Enter your custom format (e.g., %d-%m-%Y %H:%M): ").strip()
    try:
        formatted = datetime.now().strftime(fmt)
        print(f"Formatted Date/Time: {formatted}")
    except (ValueError, TypeError):
        print("Invalid format string provided.")


def stopwatch():
    
    input("Press Enter to start the stopwatch...")
    start_time = time.time()
    print("Stopwatch started! Press Enter to stop.")
    input()
    end_time = time.time()
    elapsed = end_time - start_time
    print(f"Elapsed Time: {elapsed:.2f} seconds")


def countdown_timer():
    
    try:
        seconds = int(input("Enter countdown time (in seconds): "))
        if seconds < 0:
            print("Please enter a non-negative number.")
            return
        while seconds:
            mins, secs = divmod(seconds, 60)
            timer_display = f"{mins:02d}:{secs:02d}"
            print(timer_display, end="\r")
            time.sleep(1)
            seconds -= 1
        print("Time's up!            ")
    except ValueError:
        print("Please enter a valid integer number of seconds.")


def datetime_menu():
    
    while True:
        print("\nDatetime and Time Operations:")
        print("1. Display current date and time")
        print("2. Calculate difference between two dates/times")
        print("3. Format date into custom format")
        print("4. Stopwatch")
        print("5. Countdown Timer")
        print("6. Back to Main Menu")
        choice = input("Enter your choice: ").strip()

        if choice == "1":
            display_current_datetime()
        elif choice == "2":
            calculate_date_difference()
        elif choice == "3":
            format_custom_date()
        elif choice == "4":
            stopwatch()
        elif choice == "5":
            countdown_timer()
        elif choice == "6":
            print("=" * 30)
            break
        else:
            print("Invalid choice! Please try again.")
            continue
        print("=" * 30)


if __name__ == "__main__":
    # Allows this module to be tested/run independently.
    datetime_menu()
