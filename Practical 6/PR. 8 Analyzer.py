import numpy as np


class NumPyAnalyzer:
    """
    NumPy Analyzer
    Demonstrates NumPy operations and Object-Oriented Programming (OOP).
    """

    def __init__(self, array=None):
        self.array = np.asarray(array) if array is not None else None

    # -------------------- Class Method --------------------
    @classmethod
    def from_array(cls, array):
        """Create an analyzer object directly from an existing NumPy array."""
        return cls(np.asarray(array))

    # -------------------- Static Methods --------------------
    @staticmethod
    def read_numbers(count):
        """Read exactly count numeric values from the user."""
        while True:
            try:
                values = input(
                    f"Enter {count} elements for the array "
                    f"(all elements separated by space): "
                ).split()

                if len(values) != count:
                    print(f"Please enter exactly {count} values.")
                    continue

                return np.array([float(x) for x in values])

            except ValueError:
                print("Invalid input. Please enter numbers only.")

    @staticmethod
    def format_array(array):
        """Format arrays without unnecessary decimal .0 values."""
        arr = np.asarray(array)

        if np.all(np.isfinite(arr)) and np.all(arr == np.floor(arr)):
            return np.asarray(arr, dtype=int)

        return arr

    @staticmethod
    def print_array(title, array):
        print(f"\n{title}:")
        print(NumPyAnalyzer.format_array(array))

    @staticmethod
    def create_array_from_input():
        """Create a 1D, 2D or 3D NumPy array."""
        print("\nSelect the type of array to create:")
        print("1. 1D Array")
        print("2. 2D Array")
        print("3. 3D Array")

        while True:
            choice = input("Enter your choice: ").strip()

            if choice == "1":
                while True:
                    try:
                        n = int(input("\nEnter the number of elements: "))
                        if n <= 0:
                            print("Number of elements must be greater than 0.")
                            continue
                        break
                    except ValueError:
                        print("Please enter a valid integer.")

                values = NumPyAnalyzer.read_numbers(n)
                return NumPyAnalyzer(values)

            elif choice == "2":
                while True:
                    try:
                        rows = int(input("\nEnter the number of rows: "))
                        cols = int(input("Enter the number of columns: "))

                        if rows <= 0 or cols <= 0:
                            print("Rows and columns must be greater than 0.")
                            continue
                        break
                    except ValueError:
                        print("Please enter valid integers.")

                values = NumPyAnalyzer.read_numbers(rows * cols)
                return NumPyAnalyzer(values.reshape(rows, cols))

            elif choice == "3":
                while True:
                    try:
                        layers = int(input("\nEnter the number of layers: "))
                        rows = int(input("Enter the number of rows: "))
                        cols = int(input("Enter the number of columns: "))

                        if layers <= 0 or rows <= 0 or cols <= 0:
                            print("All dimensions must be greater than 0.")
                            continue
                        break
                    except ValueError:
                        print("Please enter valid integers.")

                values = NumPyAnalyzer.read_numbers(layers * rows * cols)
                return NumPyAnalyzer(values.reshape(layers, rows, cols))

            else:
                print("Invalid choice. Please select 1, 2, or 3.")

    # -------------------- Array Management --------------------
    def array_management(self):
        """Indexing, slicing and shape operations."""
        if self.array is None:
            print("Please create an array first.")
            return

        while True:
            print("\nChoose an operation:")
            print("1. Indexing")
            print("2. Slicing")
            print("3. Go Back")

            choice = input("Enter your choice: ").strip()

            if choice == "1":
                self.index_array()

            elif choice == "2":
                self.slice_array()

            elif choice == "3":
                break

            else:
                print("Invalid choice.")

    def index_array(self):
        """Access elements using NumPy indexing."""
        arr = self.array

        try:
            if arr.ndim == 1:
                index = int(input("Enter the index: "))
                print(f"\nElement at index {index}: {self.format_array(arr[index])}")

            elif arr.ndim == 2:
                row = int(input("Enter row index: "))
                col = int(input("Enter column index: "))
                print(
                    f"\nElement at [{row}, {col}]: "
                    f"{self.format_array(arr[row, col])}"
                )

            else:
                layer = int(input("Enter layer index: "))
                row = int(input("Enter row index: "))
                col = int(input("Enter column index: "))
                print(
                    f"\nElement at [{layer}, {row}, {col}]: "
                    f"{self.format_array(arr[layer, row, col])}"
                )

        except (ValueError, IndexError):
            print("Invalid index.")

    def slice_array(self):
        """Slice 1D, 2D or 3D arrays."""
        arr = self.array

        try:
            if arr.ndim == 1:
                start = input("Enter start index (start): ").strip()
                end = input("Enter end index (end): ").strip()

                start = int(start) if start else None
                end = int(end) if end else None

                result = arr[start:end]

            elif arr.ndim == 2:
                print("\nFor example, start=0 and end=2 selects rows 0 and 1.")
                row_start = input("Enter the row range (start:end): ").strip()
                col_start = input("Enter the column range (start:end): ").strip()

                r1, r2 = self.parse_range(row_start)
                c1, c2 = self.parse_range(col_start)

                result = arr[r1:r2, c1:c2]

            else:
                layer_range = input("Enter layer range (start:end): ").strip()
                row_range = input("Enter row range (start:end): ").strip()
                col_range = input("Enter column range (start:end): ").strip()

                l1, l2 = self.parse_range(layer_range)
                r1, r2 = self.parse_range(row_range)
                c1, c2 = self.parse_range(col_range)

                result = arr[l1:l2, r1:r2, c1:c2]

            self.print_array("Sliced Array", result)

        except (ValueError, IndexError):
            print("Invalid slicing range.")

    @staticmethod
    def parse_range(value):
        parts = value.split(":")

        if len(parts) != 2:
            raise ValueError

        start = int(parts[0].strip()) if parts[0].strip() else None
        end = int(parts[1].strip()) if parts[1].strip() else None

        return start, end

    # -------------------- Mathematical Operations --------------------
    def mathematical_operations(self):
        if self.array is None:
            print("Please create an array first.")
            return

        print("\nChoose a mathematical operation:")
        print("1. Addition")
        print("2. Subtraction")
        print("3. Multiplication")
        print("4. Division")

        choice = input("Enter your choice: ").strip()

        if choice not in {"1", "2", "3", "4"}:
            print("Invalid choice.")
            return

        size = self.array.size
        second_values = self.read_numbers(size)
        second_array = second_values.reshape(self.array.shape)

        self.print_array("Original Array", self.array)
        self.print_array("Second Array", second_array)

        try:
            if choice == "1":
                result = self.array + second_array
                operation = "Addition"

            elif choice == "2":
                result = self.array - second_array
                operation = "Subtraction"

            elif choice == "3":
                result = self.array * second_array
                operation = "Multiplication"

            else:
                if np.any(second_array == 0):
                    print("\nDivision by zero is not allowed.")
                    return

                result = self.array / second_array
                operation = "Division"

            self.print_array(f"Result of {operation}", result)

        except Exception as e:
            print(f"Operation failed: {e}")

    # -------------------- Combine / Split --------------------
    def combine_or_split(self):
        if self.array is None:
            print("Please create an array first.")
            return

        print("\nChoose an operation:")
        print("1. Combine Arrays")
        print("2. Split Array")

        choice = input("Enter your choice: ").strip()

        if choice == "1":
            self.combine_arrays()

        elif choice == "2":
            self.split_array()

        else:
            print("Invalid choice.")

    def combine_arrays(self):
        size = self.array.size
        values = self.read_numbers(size)
        second = values.reshape(self.array.shape)

        self.print_array("Original Array", self.array)
        self.print_array("Second Array", second)

        try:
            if self.array.ndim == 1:
                result = np.concatenate((self.array, second))
                method = "Concatenate"

            elif self.array.ndim == 2:
                print("\nChoose combine direction:")
                print("1. Vertical Stack")
                print("2. Horizontal Stack")

                direction = input("Enter your choice: ").strip()

                if direction == "1":
                    result = np.vstack((self.array, second))
                    method = "Vertical Stack"
                elif direction == "2":
                    result = np.hstack((self.array, second))
                    method = "Horizontal Stack"
                else:
                    print("Invalid choice.")
                    return

            else:
                print("\nChoose combine direction:")
                print("1. Axis 0")
                print("2. Axis 1")
                print("3. Axis 2")

                axis = int(input("Enter your choice: ")) - 1

                if axis not in {0, 1, 2}:
                    print("Invalid axis.")
                    return

                result = np.concatenate((self.array, second), axis=axis)
                method = f"Concatenate on axis {axis}"

            self.print_array(f"Combined Array ({method})", result)

        except ValueError as e:
            print(f"Arrays cannot be combined: {e}")

    def split_array(self):
        arr = self.array

        try:
            if arr.ndim == 1:
                sections = int(input("Enter number of equal sections: "))
                result = np.array_split(arr, sections)

            elif arr.ndim == 2:
                print("\nChoose split direction:")
                print("1. Split rows")
                print("2. Split columns")

                direction = input("Enter your choice: ").strip()
                sections = int(input("Enter number of sections: "))

                axis = 0 if direction == "1" else 1

                if direction not in {"1", "2"}:
                    print("Invalid choice.")
                    return

                result = np.array_split(arr, sections, axis=axis)

            else:
                print("\nChoose split axis:")
                print("1. Axis 0")
                print("2. Axis 1")
                print("3. Axis 2")

                axis = int(input("Enter your choice: ")) - 1
                sections = int(input("Enter number of sections: "))

                if axis not in {0, 1, 2}:
                    print("Invalid axis.")
                    return

                result = np.array_split(arr, sections, axis=axis)

            print("\nSplit Arrays:")
            for i, part in enumerate(result, start=1):
                print(f"\nPart {i}:")
                print(self.format_array(part))

        except (ValueError, IndexError):
            print("Invalid split operation.")

    # -------------------- Search, Sort, Filter --------------------
    def search_sort_filter(self):
        if self.array is None:
            print("Please create an array first.")
            return

        print("\nChoose an operation:")
        print("1. Search a value")
        print("2. Sort the array")
        print("3. Filter values")

        choice = input("Enter your choice: ").strip()

        if choice == "1":
            self.search_value()

        elif choice == "2":
            self.sort_array()

        elif choice == "3":
            self.filter_values()

        else:
            print("Invalid choice.")

    def search_value(self):
        try:
            value = float(input("Enter value to search: "))
            positions = np.argwhere(self.array == value)

            if positions.size == 0:
                print(f"\nValue {self.format_array(np.array(value))} not found.")
            else:
                print(f"\nValue {self.format_array(np.array(value))} found at:")
                print(positions)

        except ValueError:
            print("Invalid value.")

    def sort_array(self):
        print("\nOriginal Array:")
        print(self.format_array(self.array))

        if self.array.ndim == 1:
            result = np.sort(self.array)

        else:
            print("\nChoose sorting direction:")
            print("1. Ascending")
            print("2. Descending")

            direction = input("Enter your choice: ").strip()

            if direction == "1":
                result = np.sort(self.array, axis=-1)
            elif direction == "2":
                result = np.sort(self.array, axis=-1)[:, ::-1] if self.array.ndim == 2 else np.sort(self.array, axis=-1)[..., ::-1]
            else:
                print("Invalid choice.")
                return

        self.print_array("Sorted Array", result)

        if self.array.ndim >= 2:
            print("\n(Sortie applied row-wise.)")

    def filter_values(self):
        try:
            print("\nFilter condition:")
            print("1. Greater than")
            print("2. Less than")
            print("3. Equal to")
            print("4. Greater than or equal to")
            print("5. Less than or equal to")

            condition = input("Enter your choice: ").strip()
            value = float(input("Enter filter value: "))

            if condition == "1":
                result = self.array[self.array > value]
            elif condition == "2":
                result = self.array[self.array < value]
            elif condition == "3":
                result = self.array[self.array == value]
            elif condition == "4":
                result = self.array[self.array >= value]
            elif condition == "5":
                result = self.array[self.array <= value]
            else:
                print("Invalid choice.")
                return

            self.print_array("Filtered Values", result)

        except ValueError:
            print("Invalid value.")

    # -------------------- Aggregates and Statistics --------------------
    def aggregates_and_statistics(self):
        if self.array is None:
            print("Please create an array first.")
            return

        print("\nChoose an aggregate/statistical operation:")
        print("1. Sum")
        print("2. Mean")
        print("3. Median")
        print("4. Standard Deviation")
        print("5. Variance")
        print("6. Percentiles")
        print("7. Correlation Coefficient")

        choice = input("Enter your choice: ").strip()

        arr = self.array.astype(float)

        if choice == "1":
            print(f"\nSum of Array: {np.sum(arr)}")

        elif choice == "2":
            print(f"\nMean of Array: {np.mean(arr)}")

        elif choice == "3":
            print(f"\nMedian of Array: {np.median(arr)}")

        elif choice == "4":
            print(f"\nStandard Deviation of Array: {np.std(arr)}")

        elif choice == "5":
            print(f"\nVariance of Array: {np.var(arr)}")

        elif choice == "6":
            try:
                p = float(input("Enter percentile (0-100): "))

                if not 0 <= p <= 100:
                    print("Percentile must be between 0 and 100.")
                    return

                print(f"\n{p}th Percentile: {np.percentile(arr, p)}")

            except ValueError:
                print("Invalid percentile.")

        elif choice == "7":
            self.correlation_coefficient()

        else:
            print("Invalid choice.")

    def correlation_coefficient(self):
        if self.array.size < 2:
            print("At least two values are required.")
            return

        print("\nCorrelation requires two arrays with the same number of elements.")
        values = self.read_numbers(self.array.size)
        second = values.reshape(self.array.shape)

        x = self.array.flatten().astype(float)
        y = second.flatten().astype(float)

        if np.std(x) == 0 or np.std(y) == 0:
            print("Correlation coefficient cannot be calculated for a constant array.")
            return

        coefficient = np.corrcoef(x, y)[0, 1]

        self.print_array("First Array", self.array)
        self.print_array("Second Array", second)
        print(f"\nCorrelation Coefficient: {coefficient}")

    # -------------------- Main Menu --------------------
    def run(self):
        print("\nWelcome to the NumPy Analyzer!")
        print("=" * 35)

        while True:
            print("\nChoose an option:")
            print("1. Create a NumPy Array")
            print("2. Perform Mathematical Operations")
            print("3. Combine or Split Arrays")
            print("4. Search, Sort, or Filter Arrays")
            print("5. Compute Aggregates and Statistics")
            print("6. Exit")

            choice = input("Enter your choice: ").strip()

            if choice == "1":
                analyzer = NumPyAnalyzer.create_array_from_input()
                self.array = analyzer.array

                print("\nArray created successfully:")
                print(self.format_array(self.array))

            elif choice == "2":
                self.mathematical_operations()

            elif choice == "3":
                self.combine_or_split()

            elif choice == "4":
                self.search_sort_filter()

            elif choice == "5":
                self.aggregates_and_statistics()

            elif choice == "6":
                print("\nThank you for using the NumPy Analyzer! Goodbye!")
                break

            else:
                print("Invalid choice. Please select 1-6.")



analyzer = NumPyAnalyzer()
analyzer.run()
