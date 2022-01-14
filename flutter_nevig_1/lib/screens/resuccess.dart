import 'package:flutter/material.dart';

class Resucess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
        ],
        title: Center(
          child: Text(
            'INR PRO',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(margin: EdgeInsets.all(10),
            width: 130,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'image/right.png',
                    ),
                    fit: BoxFit.fitHeight),
                border: Border.all(color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: new Text(
              'Trasaction Sucessful',
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Recharge Payment status: Success',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(margin: EdgeInsets.all(10),
            height: 180,
            child: Card(
              elevation: 21,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                        
                            child: Text('Ammount'),
                          ),
                        
                        Padding(
                          padding: const EdgeInsets.all(12),
                        
                              child: Text(
                            '₹100.00',
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child:
                             Text('Mobile No:'),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child:  Text('7066604568')),
                        
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text('Order No:')),
                        
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: 

                          Text('9645')
                          
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child:
                           Text('Date:'),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: 
                          Text('16 Sept 2021')
                          
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
