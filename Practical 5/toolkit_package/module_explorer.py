import importlib

def explore_module():
    
    module_name = input("Enter module name to explore: ").strip()
    try:
        module = importlib.import_module(module_name)
        attributes = dir(module)
        print(f"Available Attributes in {module_name} module:")

        
        preview = attributes[:8]
        remainder = "..." if len(attributes) > 8 else ""
        formatted = ", ".join(f"'{attr}'" for attr in preview)
        if remainder:
            print(f"[{formatted}, {remainder}]")
        else:
            print(f"[{formatted}]")

        show_all = input("Show full list? (y/n): ").strip().lower()
        if show_all == "y":
            print(attributes)
    except ImportError:
        print(f"Module '{module_name}' not found!")


def explorer_menu():
    
    print("\nExplore Module Attributes:")
    explore_module()
    print("=" * 30)


if __name__ == "__main__":
    explorer_menu()
