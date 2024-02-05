import 'package:flutter/material.dart';

class AvailableDoctor {
  final String? name, sector, patients, image;
  final int? experience;

  AvailableDoctor({
    this.name,
    this.sector,
    this.experience,
    this.patients,
    this.image,
  });
}

class ConsultantList extends StatefulWidget {
  const ConsultantList({Key? key}) : super(key: key);

  @override
  _ConsultantListState createState() => _ConsultantListState();
}

class _ConsultantListState extends State<ConsultantList> {
  List<AvailableDoctor> demoAvailableDoctors = [
    AvailableDoctor(
      name: "Dr. Serena Gome",
      sector: "Medicine Specialist",
      experience: 8,
      patients: '1.08K',
      image: "assets/images/one.jpeg",
    ),
    AvailableDoctor(
      name: "Dr. Asma Khan",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/two.jpeg",
    ),
    AvailableDoctor(
      name: "Dr. Kiran Shakia",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/three.jpeg",
    ),
    AvailableDoctor(
      name: "Dr. Masuda Khan",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/four.jpeg",
    ),
  ];

  List<AvailableDoctor> filteredDoctors = [];

  @override
  void initState() {
    filteredDoctors = demoAvailableDoctors;
    super.initState();
  }

  void _filterDoctors(String query) {
    setState(() {
      filteredDoctors = demoAvailableDoctors
          .where((doctor) =>
              doctor.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Doctors'),
        actions: [
          Expanded(
            // Wrap Container with Expanded widget
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                onChanged: _filterDoctors,
                decoration: InputDecoration(
                  hintText: 'Search Consultant...',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filteredDoctors.length,
              itemBuilder: (context, index) {
                AvailableDoctor doctor = filteredDoctors[index];
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(doctor.image!),
                        ),
                      ),
                    ),
                    title: Text(doctor.name!),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${doctor.experience} years experience'),
                        Text('Sector: ${doctor.sector}'),
                        Text('Patients: ${doctor.patients}'),
                      ],
                    ),
                    onTap: () {
                      print('Selected Doctor: ${doctor.name}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
