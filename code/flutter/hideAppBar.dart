class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollViewController;
bool _showAppbar = true; 
bool isScrollingDown = false;
@override
void initState() {
  super.initState();
  _scrollViewController = new ScrollController();
  _scrollViewController.addListener(() {
    if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
      if (!isScrollingDown) {
        isScrollingDown = true;
        _showAppbar = false;
        setState(() {});
      }
    }

    if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
      if (isScrollingDown) {
        isScrollingDown = false;
        _showAppbar = true;
        setState(() {});
      }
    }
  });
}
@override
void dispose() {
  _scrollViewController.dispose();
  _scrollViewController.removeListener(() {});
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Column(
      children: <Widget>[
        AnimatedContainer(
          height: _showAppbar ? 56.0 : 0.0,
          duration: Duration(milliseconds: 200),
            child: AppBar(
              title: Text('Scroll Demo'),
              actions: <Widget>[
                //add buttons here
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              controller: _scrollViewController,
              child: Column(
                children: <Widget>[
                  //add your screen content here
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