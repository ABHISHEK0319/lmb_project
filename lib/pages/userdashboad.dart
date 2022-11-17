import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.white,
              height: 200,
              child: Stack(
                //fit: StackFit.expand,
                children: const <Widget>[
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 20, right: 20),
                      child: GridProduct(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 0.78,
            //color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Card(
                elevation: 50,
                shadowColor: WebColors.bgcolor2,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.height * 0.68,
                  child: const MyTableProductWidget(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyTableProductWidget extends StatelessWidget {
  const MyTableProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // tableRow One (TITLE)
    TableRow titleRow = const TableRow(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Title 1',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Title 2',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Title 3',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    ]);

    TableRow titleRow2 = const TableRow(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'data',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'data',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'data',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    ]);

    return Table(
      border: TableBorder.all(),
      defaultColumnWidth: const FixedColumnWidth(90),
      children: <TableRow>[
        titleRow,
        titleRow2,
        titleRow2,
        titleRow2,
        titleRow2,
      ],
    );
  }
}

class GridProduct extends StatefulWidget {
  const GridProduct({super.key});

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20.0,
        childAspectRatio: 1.0,
        mainAxisSpacing: 15.0,
        mainAxisExtent: 140,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                WebColors.bgcolor1,
                Colors.black26,
              ],
            ),
          ),
        );
      },
    );
  }
}
