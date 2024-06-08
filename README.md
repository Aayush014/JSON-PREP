# Dart JSON Data Handling

This project demonstrates JSON data handling in Dart using factory constructors. It includes a console application that prompts the user to input a project ID and then displays the details of the project members associated with that ID.

JSON stands for **JavaScript Object Notation**, a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate.

## Project Overview

This project showcases how to efficiently work with JSON data in Dart applications. By providing a user-friendly interface via the console, users can easily retrieve information about project members based on their project ID. The project aims to demonstrate best practices for deserializing JSON data into Dart objects and serializing Dart objects back into JSON format.

## Files Included

- `main.dart`: Contains the main Dart script that interacts with the user and displays project member details.
- `factory_modal.dart`: Defines the `CarSparePart` class with factory constructors for JSON serialization/deserialization.
- `json_data_bank.dart`: Contains sample JSON data representing project members.

## JSON Data Description

The `data_bank.dart` file contains sample JSON data representing project members. Each member object includes attributes such as name, role, phone, email, joining date, and project ID.

## Project Structure

- The `ProjectMember` class encapsulates the details of a project member, allowing for easy manipulation and serialization/deserialization of member data.
- The `fromJson` factory constructor in the `ProjectMember` class is used to deserialize JSON data into `ProjectMember` objects.
- The `toJson` method in the `ProjectMember` class serializes `ProjectMember` objects into JSON format.
- The `dataBank` list in `data_bank.dart` contains sample JSON data representing project members.
- The `main.dart` file contains the main logic for interacting with the user and displaying project member details based on the input project ID.

## Sample Usage

### main.dart

```dart
void main() {
  for (int i = 0; i < sparePartList.length; i++) {
    CarSparePart sparePart = CarSparePart.fromJson(sparePartList[i]);

    print("${sparePart.partId} Spare Part Details\n");
    print("Part ID: ${sparePart.partId}");
    print("Manufacturer ID: ${sparePart.manufacturerId}");
    print("Name: ${sparePart.name}");
    print("Category: ${sparePart.category}");
    print("Description: ${sparePart.description}\n\n");
  }
}
```


### factory_modal.dart
```dart
class CarSparePart {
  int? partId;
  int? manufacturerId;
  String? name;
  String? category;
  String? description;

  CarSparePart({this.partId, this.manufacturerId, this.name, this.category, this.description});

  factory CarSparePart.fromJson(Map json) {
    return CarSparePart(
      partId: json['partId'],
      manufacturerId: json['manufacturerId'],
      name: json['name'],
      category: json['category'],
      description: json['description'],
    );
  }
}

```

### json_data_bank.dart

```dart
List sparePartList = [
  {
    "partId": 123,
    "manufacturerId": 456,
    "name": "Brake Pad",
    "category": "Braking System",
    "description": "High-quality brake pads for smooth braking."
  },
  {
    "partId": 456,
    "manufacturerId": 789,
    "name": "Oil Filter",
    "category": "Engine Parts",
    "description": "High-quality oil filter for efficient engine performance and protection."
  }
];
```

## Contributing

If you would like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/YourFeature).
3. Commit your changes (git commit -am 'Add some feature').
4. Push to the branch (git push origin feature/YourFeature).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions, feel free to open an issue or contact me at [aayushpatel01411@gmail.com].

---

Happy coding!
