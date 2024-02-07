import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class TabsView extends StatelessWidget {
  const TabsView({super.key});

  static const routeName = '/tabs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alphabets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              // Search bar
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                ),
              ),
              const Tabs(),
              const Expanded(
                child: TabBarView(
                  children: [
                    Alphabets(),
                    Words(),
                    Numbers(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  const Numbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/descrption');
                  },
                  title: Text(
                    "One $index",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                )),
            Positioned(
              top: 11,
              right: 35,
              child: Icon(
                Icons.bookmark,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        );
      },
    );
  }
}

class Words extends StatelessWidget {
  const Words({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/descrption');
                  },
                  title: Text(
                    "Word $index",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                )),
            Positioned(
              top: 11,
              right: 35,
              child: Icon(
                Icons.bookmark,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        );
      },
    );
  }
}

class Alphabets extends StatelessWidget {
  const Alphabets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/descrption');
                  },
                  title: Text(
                    "Ha Ho $index",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                )),
            Positioned(
              top: 11,
              right: 35,
              child: Icon(
                Icons.bookmark,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        );
      },
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonsTabBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      unselectedBackgroundColor:
          Theme.of(context).colorScheme.primary.withOpacity(0.1),
      borderColor: Theme.of(context).colorScheme.onBackground,
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        color: Theme.of(context).colorScheme.onBackground,
        fontWeight: FontWeight.bold,
      ),
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        decorationColor: Colors.white,
        color: Colors.white,
      ),
      onTap: (index) {
        // ref.read(serviceTypeProvider.notifier).update((state) {
        //   return index + 1;
        // });
      },
      borderWidth: 1,
      buttonMargin: const EdgeInsets.symmetric(horizontal: 10),
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      tabs: const [
        Tab(
          text: "Alphabets",
        ),
        Tab(
          text: "Words",
        ),
        Tab(
          text: "Numbers",
        ),
      ],
    );
  }
}
