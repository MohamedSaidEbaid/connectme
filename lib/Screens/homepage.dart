import 'dart:math';

import 'package:connect_me/widgets/table_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool willAcceptStream;

  double angle1 = pi / 2;
  double angle2 = 0;
  double angle3 = 0;
  double angle4 = pi;
  double angle5 = 0;
  double angle6 = pi * 3 / 2;
  double angle7 = 0;
  double angle8 = 0;
  double angle9 = 0;

  double angle1F = 0;
  double angle2F = 0;
  double angle3F = 0;
  double angle4F = 0;
  double angle5F = 0;
  double angle6F = 0;
  double angle7F = 0;
  double angle8F = 0;
  double angle9F = 0;

  String a1 = 'G7';
  String a2;
  String a3 = 'G12';
  String a4;
  String a5 = 'Y11';
  String a6;
  String a7 = 'G16';
  String a8;
  String a9;
  String a10;
  String a11;
  String a12;
  String a13;
  String a14;

  bool checkTrue() {
    if (a7 == 'G7' && a10 == 'Y11' && a11 == 'G12' && a14 == 'G16') {
      if (angle1 == angle1F &&
          angle2 == angle2F &&
          angle3 == angle3F &&
          angle4 == angle4F &&
          angle5 == angle5F &&
          angle6 == angle6F) {
        return true;
      }
    }

    return false;
  }

  @override
  void initState() {
    willAcceptStream = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Connect Me'),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('items/g7.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              children: <Widget>[
                _buildMyDragTarget(a1, 'a1'),
                _buildMyDragTarget(a2, 'a2'),
                _buildMyDragTarget(a3, 'a3'),
                _buildMyDragTarget(a4, 'a4'),
                _buildMyDragTarget(a5, 'a5'),
                _buildMyDragTarget(a6, 'a6'),
                _buildMyDragTarget(a7, 'a7'),
                GridTile(child: TableItem(angle: angle2, url: 'items/ic1.png')),
                _buildMyDragTarget(a8, 'a8'),
                _buildMyDragTarget(a9, 'a9'),
                _buildMyDragTarget(a10, 'a10'),
                _buildMyDragTarget(a11, 'a11'),
                _buildMyDragTarget(a12, 'a12'),
                _buildMyDragTarget(a13, 'a13'),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (angle5 == pi * 3 / 2) {
                          angle5 = 0;
                        } else {
                          angle5 += pi / 2;
                        }
                      });
                      if (checkTrue()) {
                        showAlertDialog(context);
                      }
                    },
                    child: GridTile(
                        child: TableItem(
                      angle: angle5,
                      url: 'items/ic5.png',
                    ))),
                _buildMyDragTarget(a14, 'a14'),
              ],
            ),
          ),
        ));
  }

  Widget _buildMyDragTarget(String aState, String s) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (aState == 'Y11') {
          return Draggable(
            data: 'Y11',
            child:
                GridTile(child: TableItem(angle: angle3, url: 'items/ic6.png')),
            feedback:
                GridTile(child: TableItem(angle: angle3, url: 'items/ic6.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: 0,
                    url:
                        'items/g7.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else if (aState == 'G7') {
          return Draggable(
            data: 'G7',
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (angle1 == pi * 3 / 2) {
                    angle1 = 0;
                  } else {
                    angle1 += pi / 2;
                  }
                });
                if (checkTrue()) {
                  showAlertDialog(context);
                }
              },
              child: GridTile(
                  child: TableItem(angle: angle1, url: 'items/ic2.png')),
            ),

            feedback:
                GridTile(child: TableItem(angle: angle1, url: 'items/ic2.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: 0,
                    url:
                        'items/g7.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else if (aState == 'G12') {
          return Draggable(
            data: 'G12',
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (angle4 == pi * 3 / 2) {
                      angle4 = 0;
                    } else {
                      angle4 += pi / 2;
                    }
                  });
                  if (checkTrue()) {
                    showAlertDialog(context);
                  }
                },
                child: GridTile(
                  child: GridTile(
                      child: TableItem(angle: angle4, url: 'items/ic4.png')),
                )),

            feedback:
                GridTile(child: TableItem(angle: angle4, url: 'items/ic4.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: 0,
                    url:
                        'items/g7.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else if (aState == 'G16') {
          return Draggable(
            data: 'G16',
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (angle6 == pi * 3 / 2) {
                    angle6 = 0;
                  } else {
                    angle6 += pi / 2;
                  }
                });
                if (checkTrue()) {
                  showAlertDialog(context);
                }
              },
              child: GridTile(
                  child: TableItem(angle: angle6, url: 'items/ic3.png')),
            ),

            feedback:
                GridTile(child: TableItem(angle: angle6, url: 'items/ic3.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: 0,
                    url:
                        'items/g7.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else {
          return GridTile(child: TableItem(angle: 0, url: 'items/g7.png'));
        }
      },
      onAccept: (data) {
        print('s  -- $s $data');
        if (s == 'a1') {
          if (a1 == null) {
            setState(() {
              a1 = data;

              if (a1 == a2) {
                a2 = null;
              } else if (a1 == a3) {
                a3 = null;
              } else if (a1 == a4) {
                a4 = null;
              } else if (a1 == a5) {
                a5 = null;
              } else if (a1 == a6) {
                a6 = null;
              } else if (a1 == a7) {
                a7 = null;
              } else if (a1 == a8) {
                a8 = null;
              } else if (a1 == a9) {
                a9 = null;
              } else if (a1 == a10) {
                a10 = null;
              } else if (a1 == a11) {
                a11 = null;
              } else if (a1 == a12) {
                a12 = null;
              } else if (a1 == a13) {
                a13 = null;
              } else if (a1 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a2') {
          if (a2 == null) {
            setState(() {
              a2 = data;
              if (a2 == a1) {
                a1 = null;
              } else if (a2 == a3) {
                a3 = null;
              } else if (a2 == a4) {
                a4 = null;
              } else if (a2 == a5) {
                a5 = null;
              } else if (a2 == a6) {
                a6 = null;
              } else if (a2 == a7) {
                a7 = null;
              } else if (a2 == a8) {
                a8 = null;
              } else if (a2 == a9) {
                a9 = null;
              } else if (a2 == a10) {
                a10 = null;
              } else if (a2 == a11) {
                a11 = null;
              } else if (a2 == a12) {
                a12 = null;
              } else if (a2 == a13) {
                a13 = null;
              } else if (a2 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a3') {
          if (a3 == null) {
            setState(() {
              a3 = data;
              if (a3 == a2) {
                a2 = null;
              } else if (a1 == a3) {
                a1 = null;
              } else if (a3 == a4) {
                a4 = null;
              } else if (a3 == a5) {
                a5 = null;
              } else if (a3 == a6) {
                a6 = null;
              } else if (a3 == a7) {
                a7 = null;
              } else if (a3 == a8) {
                a8 = null;
              } else if (a3 == a9) {
                a9 = null;
              } else if (a3 == a10) {
                a10 = null;
              } else if (a3 == a11) {
                a11 = null;
              } else if (a3 == a12) {
                a12 = null;
              } else if (a3 == a13) {
                a13 = null;
              } else if (a3 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a4') {
          if (a4 == null) {
            setState(() {
              a4 = data;
              if (a4 == a2) {
                a2 = null;
              } else if (a4 == a3) {
                a3 = null;
              } else if (a1 == a4) {
                a1 = null;
              } else if (a4 == a5) {
                a5 = null;
              } else if (a4 == a6) {
                a6 = null;
              } else if (a4 == a7) {
                a7 = null;
              } else if (a4 == a8) {
                a8 = null;
              } else if (a4 == a9) {
                a9 = null;
              } else if (a4 == a10) {
                a10 = null;
              } else if (a4 == a11) {
                a11 = null;
              } else if (a4 == a12) {
                a12 = null;
              } else if (a4 == a13) {
                a13 = null;
              } else if (a4 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a5') {
          if (a5 == null) {
            setState(() {
              a5 = data;
              if (a5 == a2) {
                a2 = null;
              } else if (a5 == a3) {
                a3 = null;
              } else if (a5 == a4) {
                a4 = null;
              } else if (a1 == a5) {
                a1 = null;
              } else if (a5 == a6) {
                a6 = null;
              } else if (a5 == a7) {
                a7 = null;
              } else if (a5 == a8) {
                a8 = null;
              } else if (a5 == a9) {
                a9 = null;
              } else if (a5 == a10) {
                a10 = null;
              } else if (a5 == a11) {
                a11 = null;
              } else if (a5 == a12) {
                a12 = null;
              } else if (a5 == a13) {
                a13 = null;
              } else if (a5 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a6') {
          if (a6 == null) {
            setState(() {
              a6 = data;
              if (a6 == a2) {
                a2 = null;
              } else if (a6 == a3) {
                a3 = null;
              } else if (a6 == a4) {
                a4 = null;
              } else if (a6 == a5) {
                a5 = null;
              } else if (a1 == a6) {
                a1 = null;
              } else if (a6 == a7) {
                a7 = null;
              } else if (a6 == a8) {
                a8 = null;
              } else if (a6 == a9) {
                a9 = null;
              } else if (a6 == a10) {
                a10 = null;
              } else if (a6 == a11) {
                a11 = null;
              } else if (a6 == a12) {
                a12 = null;
              } else if (a6 == a13) {
                a13 = null;
              } else if (a6 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a7') {
          if (a7 == null) {
            setState(() {
              a7 = data;
              if (a7 == a2) {
                a2 = null;
              } else if (a7 == a3) {
                a3 = null;
              } else if (a7 == a4) {
                a4 = null;
              } else if (a7 == a5) {
                a5 = null;
              } else if (a7 == a6) {
                a6 = null;
              } else if (a1 == a7) {
                a8 = null;
              } else if (a7 == a8) {
                a8 = null;
              } else if (a7 == a9) {
                a9 = null;
              } else if (a7 == a10) {
                a10 = null;
              } else if (a7 == a11) {
                a11 = null;
              } else if (a7 == a12) {
                a12 = null;
              } else if (a7 == a13) {
                a13 = null;
              } else if (a7 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a8') {
          if (a8 == null) {
            setState(() {
              a8 = data;
              if (a8 == a2) {
                a2 = null;
              } else if (a8 == a3) {
                a3 = null;
              } else if (a8 == a4) {
                a4 = null;
              } else if (a8 == a5) {
                a5 = null;
              } else if (a8 == a6) {
                a6 = null;
              } else if (a8 == a7) {
                a7 = null;
              } else if (a1 == a8) {
                a1 = null;
              } else if (a8 == a9) {
                a9 = null;
              } else if (a8 == a10) {
                a10 = null;
              } else if (a8 == a11) {
                a11 = null;
              } else if (a8 == a12) {
                a12 = null;
              } else if (a8 == a13) {
                a13 = null;
              } else if (a8 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a9') {
          if (a9 == null) {
            setState(() {
              a9 = data;

              if (a9 == a2) {
                a2 = null;
              } else if (a9 == a3) {
                a3 = null;
              } else if (a9 == a4) {
                a4 = null;
              } else if (a9 == a5) {
                a5 = null;
              } else if (a9 == a6) {
                a6 = null;
              } else if (a9 == a7) {
                a7 = null;
              } else if (a9 == a8) {
                a8 = null;
              } else if (a1 == a9) {
                a1 = null;
              } else if (a9 == a10) {
                a10 = null;
              } else if (a9 == a11) {
                a11 = null;
              } else if (a9 == a12) {
                a12 = null;
              } else if (a9 == a13) {
                a13 = null;
              } else if (a9 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a10') {
          if (a10 == null) {
            setState(() {
              a10 = data;

              if (a10 == a2) {
                a2 = null;
              } else if (a10 == a3) {
                a3 = null;
              } else if (a10 == a4) {
                a4 = null;
              } else if (a10 == a5) {
                a5 = null;
              } else if (a10 == a6) {
                a6 = null;
              } else if (a10 == a7) {
                a7 = null;
              } else if (a10 == a8) {
                a8 = null;
              } else if (a10 == a9) {
                a9 = null;
              } else if (a1 == a10) {
                a1 = null;
              } else if (a10 == a11) {
                a11 = null;
              } else if (a10 == a12) {
                a12 = null;
              } else if (a10 == a13) {
                a13 = null;
              } else if (a10 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a11') {
          if (a11 == null) {
            setState(() {
              a11 = data;

              if (a11 == a2) {
                a2 = null;
              } else if (a11 == a3) {
                a3 = null;
              } else if (a11 == a4) {
                a4 = null;
              } else if (a11 == a5) {
                a5 = null;
              } else if (a11 == a6) {
                a6 = null;
              } else if (a11 == a7) {
                a7 = null;
              } else if (a11 == a8) {
                a8 = null;
              } else if (a11 == a9) {
                a9 = null;
              } else if (a11 == a10) {
                a10 = null;
              } else if (a1 == a11) {
                a1 = null;
              } else if (a11 == a12) {
                a12 = null;
              } else if (a11 == a13) {
                a13 = null;
              } else if (a11 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a12') {
          if (a12 == null) {
            setState(() {
              a12 = data;

              if (a12 == a2) {
                a2 = null;
              } else if (a12 == a3) {
                a3 = null;
              } else if (a12 == a4) {
                a4 = null;
              } else if (a12 == a5) {
                a5 = null;
              } else if (a12 == a6) {
                a6 = null;
              } else if (a12 == a7) {
                a7 = null;
              } else if (a12 == a8) {
                a8 = null;
              } else if (a12 == a9) {
                a9 = null;
              } else if (a12 == a10) {
                a10 = null;
              } else if (a12 == a11) {
                a11 = null;
              } else if (a1 == a12) {
                a1 = null;
              } else if (a12 == a13) {
                a13 = null;
              } else if (a12 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a13') {
          if (a13 == null) {
            setState(() {
              a13 = data;

              if (a13 == a2) {
                a2 = null;
              } else if (a13 == a3) {
                a3 = null;
              } else if (a13 == a4) {
                a4 = null;
              } else if (a13 == a5) {
                a5 = null;
              } else if (a13 == a6) {
                a6 = null;
              } else if (a13 == a7) {
                a7 = null;
              } else if (a13 == a8) {
                a8 = null;
              } else if (a13 == a9) {
                a9 = null;
              } else if (a13 == a10) {
                a10 = null;
              } else if (a13 == a11) {
                a11 = null;
              } else if (a13 == a12) {
                a12 = null;
              } else if (a1 == a13) {
                a1 = null;
              } else if (a13 == a14) {
                a14 = null;
              }
            });
          }
        } else if (s == 'a14') {
          if (a14 == null) {
            setState(() {
              a14 = data;

              if (a14 == a2) {
                a2 = null;
              } else if (a14 == a3) {
                a3 = null;
              } else if (a14 == a4) {
                a4 = null;
              } else if (a14 == a5) {
                a5 = null;
              } else if (a14 == a6) {
                a6 = null;
              } else if (a14 == a7) {
                a7 = null;
              } else if (a14 == a8) {
                a8 = null;
              } else if (a14 == a9) {
                a9 = null;
              } else if (a14 == a10) {
                a10 = null;
              } else if (a14 == a11) {
                a11 = null;
              } else if (a14 == a12) {
                a12 = null;
              } else if (a14 == a13) {
                a13 = null;
              } else if (a1 == a14) {
                a1 = null;
              }
            });
          }
        }
        if (checkTrue()) {
          showAlertDialog(context);
        }
      },
      onLeave: (data) {},
    );
  }

  Widget _buildDragTarget(String myKey) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (willAcceptStream == true) {
          return Draggable(
            data: 'Y21',
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (angle5 == pi * 3 / 2) {
                      angle5 = 0;
                    } else {
                      angle5 += pi / 2;
                    }
                  });
                },
                child: GridTile(
                    child: TableItem(angle: angle5, url: 'items/ic6.png'))),
            feedback:
                GridTile(child: TableItem(angle: angle3, url: 'items/g7.png')),
            childWhenDragging: GestureDetector(onTap: () {
              setState(() {
                if (angle2 == pi * 3 / 2) {
                  angle2 = 0;
                } else {
                  angle2 += pi / 2;
                }
              });
            }), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {
                willAcceptStream = false;
              },
            ),
          );
        } else {
          return GridTile(child: TableItem(angle: angle3, url: 'items/g7.png'));
        }
      },
      onAccept: (data) {
        if (data == 'Y21') {
          setState(() {
            willAcceptStream = true;
          });
        }
      },
      onLeave: (data) {},
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Successful"),
      content: Text("you Connect is True"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
