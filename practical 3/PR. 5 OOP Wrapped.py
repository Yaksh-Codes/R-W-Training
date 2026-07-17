class Person:
    def __init__(self, name="", age=0):
        self.name = name
        self.age = age

    def display(self):
        print("Person Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        
    def __del__(self):
        # Destructor placeholder (resources cleanup)
        pass

class Employee(Person):
    
    def __init__(self, name="", age=0, employee_id="", salary=0.0):
        super().__init__(name, age)  
        self.__employee_id = employee_id  
        self.__salary = float(salary)     
        
    
    def get_employee_id(self):
        return self.__employee_id
        
    def set_employee_id(self, employee_id):
        self.__employee_id = employee_id
        
    def get_salary(self):
        return self.__salary
        
    def set_salary(self, salary):
        self.__salary = float(salary)

    def display(self):
        print("Employee Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"Employee ID: {self.__employee_id}")
        print(f"Salary: ${self.__salary}")

    def __del__(self):
        pass

class Manager(Employee):
    def __init__(self, name="", age=0, employee_id="", salary=0.0, department=""):
        super().__init__(name, age, employee_id, salary)
        self.department = department

    
    def display(self):
        print("Manager Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"Employee ID: {self.get_employee_id()}")
        print(f"Salary: ${self.get_salary()}")
        print(f"Department: {self.department}")

class Developer(Employee):
    def __init__(self, name="", age=0, employee_id="", salary=0.0, programming_language=""):
        super().__init__(name, age, employee_id, salary)
        self.programming_language = programming_language

    
    def display(self):
        print("Developer Details:")
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"Employee ID: {self.get_employee_id()}")
        print(f"Salary: ${self.get_salary()}")
        print(f"Programming Language: {self.programming_language}")

def main():
    print("--- Python OOP Project: Employee Management System ---")
    
    person = None
    employee = None
    manager = None
    
    while True:
        print("\nChoose an operation:")
        print("1. Create a Person")
        print("2. Create an Employee")
        print("3. Create a Manager")
        print("4. Show Details")
        print("5. Exit")
        
        choice = input("\nEnter your choice: ")
        
        if choice == '1':
            name = input("\nEnter Name: ")
            age = int(input("Enter Age: "))
            person = Person(name, age)
            print(f"\nPerson created with name: {name} and age: {age}.")
            print("\n--- Choose another operation ---")
            
        elif choice == '2':
            name = input("\nEnter Name: ")
            age = int(input("Enter Age: "))
            emp_id = input("Enter Employee ID: ")
            salary = float(input("Enter Salary: "))
            
            
            employee = Employee(name, age, emp_id, salary)
            
            print(f"\nEmployee created with name: {name}, age: {age}, ID: {emp_id}, and salary: ${employee.get_salary()}.")
            print("\n--- Choose another operation ---")
            
        elif choice == '3':
            name = input("\nEnter Name: ")
            age = int(input("Enter Age: "))
            emp_id = input("Enter Employee ID: ")
            salary = float(input("Enter Salary: "))
            dept = input("Enter Department: ")
            manager = Manager(name, age, emp_id, salary, dept)
            print(f"\nManager created with name: {name}, age: {age}, ID: {emp_id}, salary: ${manager.get_salary()}, and department: {dept}.")
            print("\n--- Choose another operation ---")
            
        elif choice == '4':
            print("\nChoose details to show:")
            print("1. Person")
            print("2. Employee")
            print("3. Manager")
            sub_choice = input("Enter your choice: ")
            print()
            
            if sub_choice == '1' and person:
                person.display()
            elif sub_choice == '2' and employee:
                employee.display()
            elif sub_choice == '3' and manager:
                
                if issubclass(Manager, Employee):
                    manager.display()
            else:
                print("No details available for this selection yet.")
                
            print("\n--- Choose another operation ---")
            
        elif choice == '5':
            
            if person: del person
            if employee: del employee
            if manager: del manager
            print("\nExiting the system. All resources have been freed.")
            print("\nGoodbye!")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == '__main__':
    main()
