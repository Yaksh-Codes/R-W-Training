from toolkit_package import (
    datetime_ops,
    math_ops,
    random_ops,
    uuid_ops,
    file_ops,
    module_explorer,
)


def print_main_menu():
    print("=" * 40)
    print("Welcome to Multi-Utility Toolkit")
    print("=" * 40)
    print("Choose an option:")
    print("1. Datetime and Time Operations")
    print("2. Mathematical Operations")
    print("3. Random Data Generation")
    print("4. Generate Unique Identifiers (UUID)")
    print("5. File Operations (Custom Module)")
    print("6. Explore Module Attributes (dir())")
    print("7. Exit")
    print("=" * 40)


def main():
    
    while True:
        print_main_menu()
        choice = input("Enter your choice: ").strip()

        if choice == "1":
            datetime_ops.datetime_menu()
        elif choice == "2":
            math_ops.math_menu()
        elif choice == "3":
            random_ops.random_menu()
        elif choice == "4":
            uuid_ops.uuid_menu()
        elif choice == "5":
            file_ops.file_menu()
        elif choice == "6":
            module_explorer.explorer_menu()
        elif choice == "7":
            print("=" * 40)
            print("Thank you for using the Multi-Utility Toolkit!")
            print("=" * 40)
            break
        else:
            print("Invalid choice! Please try again.\n")


if __name__ == "__main__":
    main()
