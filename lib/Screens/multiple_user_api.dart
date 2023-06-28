
import 'package:flutter/material.dart';



class MultipleUserData extends StatefulWidget {
  const MultipleUserData({super.key});

  @override
  State<MultipleUserData> createState() => _MultipleUserDataState();
}

class _MultipleUserDataState extends State<MultipleUserData> {
  Map<String, dynamic>? DataMAp;
  Map<String, dynamic>? DoneDataMAp;
  List< dynamic>? DoneListData;
  
  Future HitApi() async {
     setState(() {
       
     });
    
   
  }

  @override
  void initState() {
    super.initState();
    HitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Multiple User A P I '),
        centerTitle: true,
      ),
      body: DoneListData == null
          ? const CircularProgressIndicator()
          : Center(
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
        shrinkWrap: true,
                  itemCount: DoneListData?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      
                    );
                  },),
              ),
            ),
    );
  }
}
