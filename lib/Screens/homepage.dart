import 'dart:math';

import 'package:connect_me/widgets/table_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool willAcceptStream;

  double angle1 = 0;
  double angle2 = 0;
  double angle3 = 0;
  double angle4 = 0;
  double angle5 = 0;
  double angle6 = 0;
  double angle7 = 0;
  double angle8 = 0;
  double angle9 = 0;

  double angle1F = pi;
  double angle2F = pi / 2;
  double angle3F = pi;
  double angle4F = pi;
  double angle5F = pi * 3 / 2;
  double angle6F = 0;
  double angle7F = 0;
  double angle8F = 0;
  double angle9F = 0;

  String a1;
  String a2 = 'G21';
  String a3;
  String a4;
  String a5 = 'Y21';
  String a6;
  String a7;
  String a8;
  String a9;

  bool checkTrue() {
    if (angle1 == angle1F &&
        angle2 == angle2F &&
        angle3 == angle3F &&
        angle4 == angle4F &&
        angle5 == angle5F &&
        angle6 == angle6F &&
        angle7 == angle7F &&
        angle8 == angle8F) {
      return true;
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
          title: Text('Connect Me'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            children: <Widget>[
              GestureDetector(
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
                      child: TableItem(
                    angle: angle1,
                    url: 'items/capture1.png',
                  ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (angle2 == pi * 3 / 2) {
                        angle2 = 0;
                      } else {
                        angle2 += pi / 2;
                      }
                      if (checkTrue()) {
                        showAlertDialog(context);
                      }
                    });
                  },
                  child: GridTile(
                      child: TableItem(
                    angle: angle2,
                    url: 'items/capture0.png',
                  ))),
              _buildMyDragTarget(a1, 'a1'),
              _buildMyDragTarget(a2, 'a2'),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (angle3 == pi * 3 / 2) {
                        angle3 = 0;
                      } else {
                        angle3 += pi / 2;
                      }
                    });
                    if (checkTrue()) {
                      showAlertDialog(context);
                    }
                  },
                  child: GridTile(
                      child:
                          TableItem(angle: angle3, url: 'items/capture4.png'))),
              GridTile(child: TableItem(angle: pi, url: 'items/capture6.png')),
              _buildMyDragTarget(a3, 'a3'),
              _buildMyDragTarget(a4, 'a4'),
              GestureDetector(
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
                      child: TableItem(
                    angle: angle4,
                    url: 'items/capture1.png',
                  ))),
              _buildMyDragTarget(a5, 'a5'),
              GestureDetector(
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
                      child: TableItem(
                    angle: angle6,
                    url: 'items/capture4.png',
                  ))),
              _buildMyDragTarget(a6, 'a6'),
              _buildMyDragTarget(a7, 'a7'),
              _buildMyDragTarget(a8, 'a8'),
              GestureDetector(
                  onTap: () {
                    print(
                        'a1 $angle1 $angle1F --- a2 $angle2  $angle2F--- 13$angle3  $angle3F ----14$angle4 $angle4F--- 15$angle5 $angle5F--- 16$angle6 $angle6F--- $angle7 $angle7F--- $angle8 $angle8F');
                    setState(() {
                      if (angle8 == pi * 3 / 2) {
                        angle8 = 0;
                      } else {
                        angle8 += pi / 2;
                      }
                    });
                    if (checkTrue()) {
                      showAlertDialog(context);
                    }
                  },
                  child: GridTile(
                      child: TableItem(
                    angle: angle8,
                    url: 'items/capture1.png',
                  ))),
              _buildMyDragTarget(a9, 'a9'),
            ],
          ),
        ));
  }

  Widget _buildMyDragTarget(String aState, String s) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (aState == 'G21') {
          return Draggable(
            data: 'G21',
            child: GridTile(
                child: TableItem(angle: pi * 3 / 2, url: 'items/capture7.png')),
            feedback: GridTile(
                child: TableItem(angle: pi * 3 / 2, url: 'items/capture7.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: 0,
                    url:
                        'items/capture5.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else if (aState == 'Y21') {
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
                  if (checkTrue()) {
                    showAlertDialog(context);
                  }
                },
                child: GridTile(
                    child:
                        TableItem(angle: angle5, url: 'items/capture9.png'))),
            feedback: GridTile(
                child: TableItem(angle: angle5, url: 'items/capture9.png')),
            childWhenDragging: GridTile(
                child: TableItem(
                    angle: angle5,
                    url:
                        'items/capture5.png')), // <-- so it looks like the original view is beeing dragged
            onDraggableCanceled: (v, f) => setState(
              () {},
            ),
          );
        } else {
          return GridTile(
              child: TableItem(angle: 0, url: 'items/capture5.png'));
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
            data: 'G21',
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
                    child:
                        TableItem(angle: angle5, url: 'items/capture7.png'))),
            feedback: GridTile(
                child: TableItem(angle: angle3, url: 'items/capture5.png')),
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
          return GridTile(
              child: TableItem(angle: angle3, url: 'items/capture5.png'));
        }
      },
      onAccept: (data) {
        if (data == 'G21') {
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
