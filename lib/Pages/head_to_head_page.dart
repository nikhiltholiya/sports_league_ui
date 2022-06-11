import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/head_to_head_details.dart';
import '../Pages/no_internet_page.dart';
import '../components/head_to_head_list_tile.dart';
import '../providers/internet_provider.dart';
import '../utils/Internet.dart';

//Updated on 20220307
class HeadtoHeadpage extends StatefulWidget {
  static const String path = 'headToHeadPage';

  const HeadtoHeadpage({Key? key}) : super(key: key);

  @override
  _HeadtoHeadpageState createState() => _HeadtoHeadpageState();
}

class _HeadtoHeadpageState extends State<HeadtoHeadpage> with isInternetConnection {
  @override
  void initState() {
    initInternet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbarHeight: kToolbarHeight,
            onBackClick: () => Navigator.pop(context),
            appbar: Text(
              'Head to Head',
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            body: ListView(
              children: [
                Text(
                  "Played with 10 Players",
                  style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                ),
                for (int i = 0; i < 10; i++)
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HeadToHeadDetails.path);
                      },
                      //Added on 20220304
                      child: HeadToHeadListTile(
                        title: 'CBS Arena, Los Angeles, CA',
                        onProfileClick: () {},
                        onTileClick: () {
                          Navigator.pushNamed(context, HeadToHeadDetails.path);
                        },
                        profileImg: 'default.png',
                        date: 'Dec 31st 2021',
                        rating: '4.5',
                        userName: 'kalpesh',
                      ),
                    ),
                  )
              ],
            ),
          );
        } else {
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    disposeInternet();
    super.dispose();
  }
}
