import 'package:flutter/material.dart';
import 'package:first_application/model/student.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final myKey = GlobalKey<FormState>();
  final List<Student> lstStudents = [];

  String? city;
  final items = const [
    DropdownMenuItem(value: 'Kathmandu', child: Text("Kathmandu")),
    DropdownMenuItem(value: 'Pokhara', child: Text("Pokhara")),
    DropdownMenuItem(value: 'Chitwan', child: Text("Chitwan")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student ListView")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                controller: fNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Firstname",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: lNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Lastname",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter last name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                value: city,
                icon: const Icon(Icons.arrow_downward),
                items: items,
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
                hint: const Text("Select city"),
                decoration: const InputDecoration(
                  labelText: "Select city",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return "Please select a city";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        Student student = Student(
                          fname: fNameController.text,
                          lname: lNameController.text,
                          city: city!,
                        );
                        lstStudents.add(student);
                        fNameController.clear();
                        lNameController.clear();
                        city = null;
                      });
                    }
                  },
                  child: const Text("Add student"),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: lstStudents.isNotEmpty
                    ? ListView.builder(
                        itemCount: lstStudents.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(
                              '${lstStudents[index].fname} ${lstStudents[index].lname}',
                            ),
                            subtitle: Text(lstStudents[index].city),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  lstStudents.removeAt(index);
                                });
                              },
                            ),
                          );
                        },
                      )
                    : const Center(child: Text("No data")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
