import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CpuListScreen extends StatefulWidget {
  @override
  _CpuListScreenState createState() => new _CpuListScreenState();
}

class _CpuListScreenState extends State<CpuListScreen> {
  static final showGrid = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('CPU List'),
      ),
      body: Center(child: _buildCard(),),
    );
  }


  Widget _buildCard() => ListView(

    children: <Widget>[

      SizedBox(
      height: 160,
      child: 
        Card(
          child: Column(
            children: [
              _tile('Intel Core i5-9400F', '6 cores, 6 threads', Icons.border_all),
              Divider(),
              ListTile(
              title: Text('\$299', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(Icons.attach_money, color: Colors.blue[500],),
              ),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 160,
      child: 
        Card(
          child: Column(
            children: [
              _tile('AMD Ryzen 5 3600X', '6 cores, 12 threads', Icons.border_all),
              Divider(),
              ListTile(
              title: Text('\$349', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(Icons.attach_money, color: Colors.blue[500],),
              ),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 160,
      child: 
        Card(
          child: Column(
            children: [
              _tile('Intel Core i7-8700K', '6 cores, 12 threads', Icons.border_all),
              Divider(),
              ListTile(
              title: Text('\$399', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(Icons.attach_money, color: Colors.blue[500],),
              ),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 160,
      child: 
        Card(
          child: Column(
            children: [
              _tile('AMD Ryzen 5 2400G', '4 cores, 8 threads', Icons.border_all),
              Divider(),
              ListTile(
              title: Text('\$149', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(Icons.attach_money, color: Colors.blue[500],),
              ),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 160,
      child: 
        Card(
          child: Column(
            children: [
              _tile('Intel Core i9-9900K', '8 cores, 16 threads', Icons.border_all),
              Divider(),
              ListTile(
              title: Text('\$899', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(Icons.attach_money, color: Colors.blue[500],),
              ),
            ],
          ),
        ),
        
      ),

    ],

  );
  
  

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Intel Core i5-9400F', '6 cores, 6 threads', Icons.border_all),
      _tile('AMD Ryzen 5 3600X', '6 cores, 12 threads', Icons.border_all),
      _tile('Intel Core i7-8700K', '6 cores, 12 threads', Icons.border_all),
      _tile('AMD Ryzen 5 2400G', '4 cores, 8 threads', Icons.border_all),
      _tile('Intel Core i9-9900K', '8 cores, 16 threads', Icons.border_all),

    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title, 
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );



}

