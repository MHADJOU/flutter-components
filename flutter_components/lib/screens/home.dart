import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Display images width listView'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 35, 85, 126),

        leading: Builder(
          builder: ((context) => IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () => Scaffold.of(context).openDrawer(),
            )
        )
      ),
      ),
      drawer:  Drawer(
        child: ListView(

          children: [
            const SizedBox(
              height: 80.0,
              child: DrawerHeader(
              child:  Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: Text("choose to access", style: TextStyle(color: Colors.white, fontSize: 18.0), )
              ),
              decoration: BoxDecoration(
                
                color: Colors.blue),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  
                  title: const Text('Image network'),
                  onTap: () => Navigator.pushNamed(context, '/assetsImage'),
                  
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 10.0),
                 child: ListTile(
                  title: const Text('Assest images'),
                  onTap: () => Navigator.pushNamed(context, '/networkImage'),
              ),
               ),
                Padding(
                 padding: const EdgeInsets.only(left: 10.0),
                 child: ListTile(
                  title: const Text('Form field'),
                  onTap: () => Navigator.pushNamed(context, '/networkImage'),
              ),
               )
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "WELECOM to OUR test App",
          style: TextStyle(fontSize: 18.0, color: Colors.blueAccent),
          )
        ),
    );
  }
}