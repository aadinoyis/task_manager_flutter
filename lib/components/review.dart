import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TaskReview extends StatelessWidget {
  const TaskReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: barHeight * 2),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: blackColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi Adinoyi',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '7 Tasks are pending',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const NewTasks(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Monthly review',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    color: purple,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.folder,
                    color: whiteColor,
                    size: 24,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: const [
                    TaskList(
                      amount: 22,
                      title: 'Done',
                    ),
                    TaskList(
                      amount: 9,
                      title: 'In progress',
                    ),
                    TaskList(
                      amount: 11,
                      title: 'Ongoing',
                    ),
                    TaskList(
                      amount: 4,
                      title: 'Waiting for Review',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      toolbarHeight: barHeight,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Image.asset(
          'assets/images/logo.png',
          width: 20,
          height: 20,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 40),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white),
              image: const DecorationImage(
                  image: AssetImage('assets/images/user.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        )
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'File'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important), label: 'notification'),
      ],
      backgroundColor: blackColor,
      selectedItemColor: whiteColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.of(context).pop();
            break;
          default:
        }
      },
    );
  }
}

class NewTasks extends StatelessWidget {
  const NewTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: purple,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 20,
              color: blackColor.withOpacity(0.2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mobile App Design',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Mike and Anita',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/user.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/user.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'New',
                    style: TextStyle(
                        fontSize: 18, color: whiteColor.withOpacity(.5)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  final String title;
  final int amount;

  const TaskList({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount.toString(),
            style: const TextStyle(
              color: whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
