import math


def calculate_factorial():
    
    try:
        num = int(input("Enter a number: "))
        if num < 0:
            print("Factorial is not defined for negative numbers.")
        else:
            print(f"Factorial: {math.factorial(num)}")
    except ValueError:
        print("Please enter a valid integer.")


def solve_compound_interest():
    
    try:
        principal = float(input("Enter principal amount: "))
        rate = float(input("Enter rate of interest (in %): "))
        time_years = float(input("Enter time (in years): "))

        amount = principal * (1 + rate / 100) ** time_years
        compound_interest = amount - principal
        print(f"Compound Interest: {compound_interest:.2f}")
    except ValueError:
        print("Please enter valid numeric values.")


def trigonometric_calculations():
    
    try:
        angle_deg = float(input("Enter angle in degrees: "))
        angle_rad = math.radians(angle_deg)
        print(f"sin({angle_deg}) = {math.sin(angle_rad):.4f}")
        print(f"cos({angle_deg}) = {math.cos(angle_rad):.4f}")
        print(f"tan({angle_deg}) = {math.tan(angle_rad):.4f}")
    except ValueError:
        print("Please enter a valid numeric angle.")


def area_of_shapes():
    
    print("\nChoose a shape:")
    print("1. Circle")
    print("2. Rectangle")
    print("3. Triangle")
    shape_choice = input("Enter your choice: ").strip()

    try:
        if shape_choice == "1":
            radius = float(input("Enter radius: "))
            area = math.pi * radius ** 2
            print(f"Area of Circle: {area:.2f}")
        elif shape_choice == "2":
            length = float(input("Enter length: "))
            width = float(input("Enter width: "))
            area = length * width
            print(f"Area of Rectangle: {area:.2f}")
        elif shape_choice == "3":
            base = float(input("Enter base: "))
            height = float(input("Enter height: "))
            area = 0.5 * base * height
            print(f"Area of Triangle: {area:.2f}")
        else:
            print("Invalid shape choice!")
    except ValueError:
        print("Please enter valid numeric dimensions.")


def math_menu():
    
    while True:
        print("\nMathematical Operations:")
        print("1. Calculate Factorial")
        print("2. Solve Compound Interest")
        print("3. Trigonometric Calculations")
        print("4. Area of Geometric Shapes")
        print("5. Back to Main Menu")
        choice = input("Enter your choice: ").strip()

        if choice == "1":
            calculate_factorial()
        elif choice == "2":
            solve_compound_interest()
        elif choice == "3":
            trigonometric_calculations()
        elif choice == "4":
            area_of_shapes()
        elif choice == "5":
            print("=" * 30)
            break
        else:
            print("Invalid choice! Please try again.")
            continue
        print("=" * 30)


if __name__ == "__main__":
    math_menu()
