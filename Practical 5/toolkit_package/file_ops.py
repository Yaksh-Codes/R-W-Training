import os


def create_file():
    
    filename = input("Enter file name: ").strip()
    try:
        if os.path.exists(filename):
            print("File already exists!")
            return
        with open(filename, "w") as f:
            pass
        print("File created successfully!")
    except OSError as e:
        print(f"Error creating file: {e}")


def write_to_file():
   
    filename = input("Enter file name: ").strip()
    data = input("Enter data to write: ")
    try:
        with open(filename, "w") as f:
            f.write(data)
        print("Data written successfully!")
    except OSError as e:
        print(f"Error writing to file: {e}")


def read_from_file():
    
    filename = input("Enter file name: ").strip()
    try:
        with open(filename, "r") as f:
            content = f.read()
        print(f"File Content:\n{content}")
    except FileNotFoundError:
        print("File not found!")
    except OSError as e:
        print(f"Error reading file: {e}")


def append_to_file():
    
    filename = input("Enter file name: ").strip()
    data = input("Enter data to append: ")
    try:
        with open(filename, "a") as f:
            f.write(data)
        print("Data appended successfully!")
    except OSError as e:
        print(f"Error appending to file: {e}")


def file_menu():
    
    while True:
        print("\nFile Operations:")
        print("1. Create a new file")
        print("2. Write to a file")
        print("3. Read from a file")
        print("4. Append to a file")
        print("5. Back to Main Menu")
        choice = input("Enter your choice: ").strip()

        if choice == "1":
            create_file()
        elif choice == "2":
            write_to_file()
        elif choice == "3":
            read_from_file()
        elif choice == "4":
            append_to_file()
        elif choice == "5":
            print("=" * 30)
            break
        else:
            print("Invalid choice! Please try again.")
            continue
        print("=" * 30)


if __name__ == "__main__":
    file_menu()
