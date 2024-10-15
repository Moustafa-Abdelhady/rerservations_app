import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/routing/app_router.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:reservations_app/features/search_screen/logic/search_cubit/search_cubit.dart';
import 'package:reservations_app/features/search_screen/ui/widgets/search_screen_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Doctors>? doctors;
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var debounce = context.read<SearchCubit>().debounce;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const CustomAppBarWidget(
              text: 'Search about Doctors',
            ),
            verticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchBar(
                // controller: ,
                onChanged: (val) {},
                trailing: const [
                  Icon(
                    Icons.search,
                    color: ColorsManager.mainBlue,
                    size: 35,
                  ),
                ],
                hintText: 'Search about Doctor you need ',
                backgroundColor: WidgetStateColor.resolveWith(
                    (states) => ColorsManager.lightBlue),
              ),
            ),
            verticalSpace(30),
            SearchItem(
              doctors: doctors!,
            )
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    BlocProvider.of<SearchCubit>(context).clearSearchResult();
    super.dispose();
  }
}
