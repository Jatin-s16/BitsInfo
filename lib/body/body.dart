import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sharing_app/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:sharing_app/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

// GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();


// Home page

class HomePageHackathonBody extends StatefulWidget {
  const HomePageHackathonBody({Key? key}) : super(key : key);
  @override
  _HomePageBodyhState createState() => _HomePageBodyhState();
}

class _HomePageBodyhState extends State<HomePageHackathonBody>{
  final focusNode = FocusNode();
  final controller = TextEditingController();
  String _launchUrl = 'https://www.youtube.com/watch?v=T0qbFgbFhg0';
  Future<void> _launchInApp(String url) async{
    if(await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: LaunchMode.platformDefault,
      );
    }
    else{
      throw {'Could not launch $url'};
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFf1f3f9),
          // key: _scaffoldState,
        body: Column(
          children: <Widget>[

            //Search Bar Container

            Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 20, right: 35, left: 35, bottom: 0),
                child: TextField(
                  onTap: () {
                    controller.clear();
                    focusNode.requestFocus();
                    showSearch(
                        context: context,
                        delegate: MySearchDelegate()
                    );
                  },
                  cursorColor: Colors.black,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 15),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Color(0xFFD4DBED),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                          width: 0,
                          color: Color(0xFFd4daed)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          width: 0,
                          color: Color(0xFFd4daed)
                      ),
                    ),

                    ),
                  ),
                ),
              ),

            // Filter Container

            Container(
              margin: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xFF7E93C9),
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 0.0,
                              spreadRadius: 1.2,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(2.0, -2.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(left: 30),
                        padding: EdgeInsets.only(top: 6, bottom: 6, right: 22, left: 22),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xFF1F271B),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xFF7E93C9),
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 0.0,
                              spreadRadius: 1.2,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(2.0, -2.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 6, bottom: 6, right: 22, left: 22),
                        child: const Center(
                          child: Text(
                            'Hackathons',
                            style: TextStyle(
                              color: Color(0xFF1F271B),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xFF7E93C9),
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 0.0,
                              spreadRadius: 1.2,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(2.0, -2.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 6, bottom: 6, right: 22, left: 22),
                        child: const Center(
                          child: Text(
                            'Case Competitions',
                            style: TextStyle(
                              color: Color(0xFF1F271B),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color:Colors.black12,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0,0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 6, bottom: 6, right: 22, left: 22),
                        child: const Center(
                          child: Text(
                            'Workshops',
                            style: TextStyle(
                              color: Color(0xFF1F271B),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.0),
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xFF7E93C9),
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 0,
                              spreadRadius: 1.2,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0,0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 6, bottom: 6, right: 22, left: 22),
                        child: const Center(
                          child: Text(
                            'Internships',
                            style: TextStyle(
                              color: Color(0xFF1F271B),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),


            //Main Body

            Container(
              margin: const EdgeInsets.only(top: 35.0, left: 20, right: 20,),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: HomeContentCard('Hack 3', 'eiucebwcihjbewcjkwh', '9 days remaining'),
                      onTap: () async {
                        _launchInApp(_launchUrl);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
            ),
        ),
      );
  }
}


// Home Content

class HomeContentCard extends StatelessWidget{
  final String title;
  final String body;
  final String time;
  HomeContentCard(this.title, this.body, this.time);
  // Future<void> _launched = () {};

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:Colors.black12,
            offset: const Offset(
              0.0,
              0.0,
            ),
            blurRadius: 4.0,
            spreadRadius: 1.5,
          ),
          BoxShadow(
            color: Color(0xFFdbebfb),
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(6.0),
        // border: const Border(
        //   left: BorderSide(
        //     color: Color(0xFF3c5490),
        //     width: 1,
        //   ),
        //   right: BorderSide(
        //     color: Color(0xFF3c5490),
        //     width: 1,
        //   ),
        //   bottom: BorderSide(
        //     color: Color(0xFF3c5490),
        //     width: 1,
        //   ),
        //   top: BorderSide(
        //     color: Color(0xFF3c5490),
        //     width: 1,
        //   ),
        // ),
      ),
      height: 120,
      width: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text('Hack3',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('X days remaining',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.api_rounded,
                  size: 25,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// MySearchDelegate class

class MySearchDelegate extends SearchDelegate{
  List<String> searchResults = [
    'a',
    'b',
    'c',
  ];

  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: (){
          close(context, null);
        },
      );
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        if(query.isEmpty){
          close(context, null);
        }
        else
          {query = '';}
      },
    ),
  ];
  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64,),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;

              showResults(context);
            },
          );
        }
    );
  }

}


// Home page case

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key : key);
  @override
  _HomePageBodycState createState() => _HomePageBodycState();
}

class _HomePageBodycState extends State<HomePageBody>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlue.shade100.withOpacity(0.5),
          // key: _scaffoldState,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue.shade500.withOpacity(1.0),
            title: const Text('Search'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){
                  showSearch(
                    context: context,
                    delegate: MySearchDelegate(),
                  );
                },
              )
            ],
          ),
          // drawer: NavigationDrawer(),
          body: const SingleChildScrollView(
            child: Center(child: Text('b'),)
          ),
        ),
    );
  }
}



// Add Page


class AddPageBody extends StatelessWidget {
  const AddPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
      body: Center(
        child: Text('Add Query'),
      ),
    ),
    );
  }
}


// Notification

class NotifBody extends StatelessWidget{
  const NotifBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('euiwb'),
        ),
      ),
    );
  }
}

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return SafeArea(
      child: Scaffold(
        // key: _scaffoldState,
        drawer: const NavigationDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightBlue.shade100.withOpacity(0.5),
              ),
            // padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(15),
              height: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(Icons.menu,
                      color: Colors.black,
                      size: 25
                        ),
                      ),
                      onPressed: (){
                      // _scaffoldState.currentState?.openDrawer();
                      },
                    ),
                  ),
                  // SizedBox(
                  //   width: 195,
                  // ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,7,15,0),
                      child: TextButton(
                      // child: Padding(
                      //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: const Text('Logout', style: TextStyle(color: Colors.black),),

                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                          provider.logout();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
                const SizedBox(height: 10),
                Text(
                  'Name: ' + user.displayName!,
                  style: const TextStyle(color: Colors.black54, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


