import uuid


def generate_uuid():
   
    new_id = uuid.uuid4()
    print(f"\nGenerated UUID: {new_id}")
    return new_id


def uuid_menu():
    
    print("\nGenerate Unique Identifiers:")
    generate_uuid()
    print("=" * 26)


if __name__ == "__main__":
    uuid_menu()
