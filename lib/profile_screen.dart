import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal.shade600,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: ClipOval(
                child: Image.asset(
                  'assets/img/pro.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(10),
                height: 230,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal.shade200,
                ),
                child: DataTable(
                  columns: <DataColumn>[
                    DataColumn(label: Text("Nama")),
                    DataColumn(label: Text("Sifa Afna Fitria")),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("TTL")),
                        DataCell(Text("Bandung, 11 Desember 2004")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Umur")),
                        DataCell(Text("17 Tahun")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Alamat")),
                        DataCell(Text("JL.Leuwidulang-Bandung")),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}