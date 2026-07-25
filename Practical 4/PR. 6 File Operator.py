from datetime import datetime
import os

FILE_NAME = "journal.txt"



# Add a New Journal Entry

def add_entry():
    print("\n----------------------------------------")
    print("Enter your journal entry:")
    entry = input()

    if entry.strip() == "":
        print("Journal entry cannot be empty.")
        return

    current_date = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    with open(FILE_NAME, "a") as file:
        file.write(f"[{current_date}]\n")
        file.write(entry + "\n\n")

    print("\nEntry added successfully!")



# View All Journal Entries

def view_entries():
    print("\n----------------------------------------")
    print("Your Journal Entries:")
    print("----------------------------------------")

    try:
        with open(FILE_NAME, "r") as file:
            content = file.read()

            if content.strip() == "":
                print("No journal entries found. Start by adding a new entry!")
            else:
                print(content)

    except FileNotFoundError:
        print("Error: The journal file does not exist. Please add a new entry first.")



# Search Journal Entries

def search_entry():
    print("\n----------------------------------------")
    keyword = input("Enter a keyword or date to search: ")

    found = False

    try:
        with open(FILE_NAME, "r") as file:
            lines = file.readlines()

        print("\nMatching Entries:")
        print("----------------------------------------")

        i = 0

        while i < len(lines):

            if lines[i].startswith("["):

                date = lines[i].strip()

                if i + 1 < len(lines):
                    entry = lines[i + 1].strip()

                    if keyword.lower() in date.lower() or keyword.lower() in entry.lower():
                        print(date)
                        print(entry)
                        print()
                        found = True

                i += 3

            else:
                i += 1

        if not found:
            print(f"No entries were found for the keyword: {keyword}.")

    except FileNotFoundError:
        print("Error: The journal file does not exist. Please add a new entry first.")



# Delete All Journal Entries

def delete_entries():

    if not os.path.exists(FILE_NAME):
        print("\nNo journal entries to delete.")
        return

    print()
    choice = input("Are you sure you want to delete all entries? (yes/no): ")

    if choice.lower() == "yes":
        open(FILE_NAME, "w").close()
        print("\nAll journal entries have been deleted.")

    else:
        print("\nDelete operation cancelled.")



# Display Menu

def display_menu():

    print("\nWelcome to Personal Journal Manager!")
    print("Please select an option:\n")

    print("1. Add a New Entry")
    print("2. View All Entries")
    print("3. Search for an Entry")
    print("4. Delete All Entries")
    print("5. Exit")



# Main Program

while True:

    display_menu()

    choice = input("\nEnter your choice: ")

    if choice == "1":
        add_entry()

    elif choice == "2":
        view_entries()

    elif choice == "3":
        search_entry()

    elif choice == "4":
        delete_entries()

    elif choice == "5":
        print("\nThank you for using Personal Journal Manager. Goodbye!")
        break

    else:
        print("\nInvalid option. Please select a valid option from the menu.")