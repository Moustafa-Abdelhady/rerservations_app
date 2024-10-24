import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:reservations_app/features/search_screen/logic/search_cubit/search_cubit.dart';
import 'package:reservations_app/features/search_screen/logic/search_cubit/search_state.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(200.w, 150.h),
          child: const CustomAppBarWidget(
            text: 'Search about Doctors',
          ),
        ),
        body:
            BlocConsumer<SearchCubit, SearchState>(listener: (context, state) {
          if (state is SearchFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('there\'s an error'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
          } else if (state is SearchSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('SUCCESS'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
            ));
            print('Sucessssssssssssssssssssssssssssssssss');
          } else {
            print('loaaaaaaaaading state');
          }
        }, builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                SearchBar(
                  controller: _searchController,
                  onChanged: (val) {
                    // _searchController.text = val;
                    context.read<SearchCubit>().searchDoctor(val);
                    // setState(() {});
                  },
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
                verticalSpace(10),
                Expanded(
                  child: state is SearchLoading
                      ? const DoctorsShimmerLoading()
                      : state is SearchSuccess
                          ? SearchItem(doctors: state.doctors)
                          : Center(
                              child: SvgPicture.asset(
                                'assets/svgs/search-head-seo-svgrepo-com.svg',
                                fit: BoxFit.fitWidth,
                                color: ColorsManager.mainBlue.withOpacity(.5),
                              ),
                            ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    // BlocProvider.of<SearchCubit>(context).clearSearchResult();
    _searchController.clear();
    super.dispose();
  }
}
