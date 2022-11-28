import 'package:flutter/material.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/UI/venue/venue.dart';

class EntryBottomSheet extends StatefulWidget {
  const EntryBottomSheet({Key? key, required this.venue}) : super(key: key);
  final VenueResponseModel venue;

  @override
  State<EntryBottomSheet> createState() => _EntryBottomSheetState();
}

class _EntryBottomSheetState extends State<EntryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Text(
                        'Welcome to ${widget.venue.name}',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Venue(
                                  venue: widget.venue,
                                )));
                  },
                  child: const Text("Thank You"))
            ],
          ),
        ));
  }
}
