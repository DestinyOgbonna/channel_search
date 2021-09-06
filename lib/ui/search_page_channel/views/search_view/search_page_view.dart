import 'package:channel_search/ui/search_page_channel/widgets/app_bar_widget.dart';
import 'package:channel_search/ui/search_page_channel/widgets/textfield_style.dart';
import 'package:channel_search/ui/search_page_channel/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'search_view_model.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  _SearchPageViewState createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60), child: appBarMain()),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //TextFIeld
                Container(
                  height: 40,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: TextFormField(
                      // style: textStyling(),
                      decoration:
                          textFormFields('Search people on #teamsocrates')),
                ),

                const SearchResults(),
                // ignore: avoid_unnecessary_containers
                const SearchResults(),
                // ignore: avoid_unnecessary_containers
                const SearchResults(),
                // ignore: avoid_unnecessary_containers
                const SearchResults(),
                // ignore: avoid_unnecessary_containers
                const SearchResults(),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SearchViewModel(),
    );
  }
}
