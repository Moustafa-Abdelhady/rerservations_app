import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/date_and_time_widgets/date_and_time_page.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/payment_screens/payment_screen.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/phases_list_view.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/summary_screen.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/three_phase_to_book.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/make_an_appoint_btn.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class BookAppointmentBody extends StatefulWidget {
  const BookAppointmentBody({super.key, required this.doctorInfo});

  final Doctors? doctorInfo;

  @override
  State<BookAppointmentBody> createState() => _BookAppointmentBodyState();
}

class _BookAppointmentBodyState extends State<BookAppointmentBody>
    with TickerProviderStateMixin {
  late PageController pageViewController;

  final int _currentDate = 0;
  int currentPageIndex = 0;
  DateTime? selectDateTime;
  String? paymentMethod;
  String? noteThis;

  @override
  void initState() {
    super.initState();

    pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppBarWidget(text: 'Book Appointment'),
          verticalSpace(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: SizedBox(
                height: 60.h,
                child: PhasesListView(
                  currentPageIndex: currentPageIndex,
                )),
          ),
          verticalSpace(24),
          Container(
            constraints: BoxConstraints(
              minHeight: 379.h,
              maxHeight: 680.h,
              minWidth: 329.w,
              maxWidth: 329.w,
            ),
            child: PageView(
              controller: pageViewController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (val) {
                currentPageIndex = val;
                setState(() {});
              },
              children: [
                DateAndTimePage(
                  onNoteChanged: (val) {
                    setState(() {
                      noteThis = val;
                    });
                  },
                  onDateTimeConfirm: (val) {
                    setState(() {
                      selectDateTime = val;
                    });
                  },
                ),
                PaymentPage(
                  onChanged: (val) {
                    setState(() {
                      paymentMethod = val;
                    });
                  },
                ),
                SummaryPage(
                  selectedDateTime: selectDateTime,
                  note: noteThis,
                  doctor: widget.doctorInfo,
                  docImage: widget.doctorInfo?.photo,
                  paymentCost: paymentMethod,
                  rating: '4.8',
                )
              ],
            ),
          ),
          MakeAnAppointmentBtn(
            text: currentPageIndex == phasesOfAppointList.length - 1
                ? 'Book Now'
                : 'Continue',
            onPressed: () {
              if (currentPageIndex == phasesOfAppointList.length - 1) {
                // context.pushNamed(routeName)
              } else {
                pageViewController.nextPage(
                    duration: const Duration(milliseconds: 30),
                    curve: Curves.easeIn);
              }
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}
