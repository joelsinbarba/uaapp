import 'dart:ui' as ui;

//import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:uaapp/scrollEffects.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class EventBackdropPhoto extends StatelessWidget {
  const EventBackdropPhoto({
    //@required this.event,
    @required this.scrollEffects,
     @required this.image,
  });

  //final Event event;
  final EventDetailsScrollEffects scrollEffects;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: [
          
          _BackdropPhoto(scrollEffects,image),
          _BlurOverlay(scrollEffects),
          _InsetShadow(),
        
        ],
      ),
    );
  }
}

class _BackdropPhoto extends StatelessWidget {
  _BackdropPhoto(/* this.event, */ this.scrollEffects, this.image);
  //final Event event;
  final EventDetailsScrollEffects scrollEffects;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(image: AssetImage(image),height: scrollEffects.backdropHeight, fit: BoxFit.cover, width: MediaQuery.of(context).size.width,),
        //_BackdropImage( scrollEffects),
      ],
    );
  }
}

/* class _BackdropImage extends StatelessWidget {
  _BackdropImage(this.event, this.scrollEffects);
  final Event event;
  final EventDetailsScrollEffects scrollEffects;

  String get photoUrl =>
      event.images.landscapeBig ?? event.images.landscapeSmall;

  @override
  Widget build(BuildContext context) {
    if (photoUrl == null) {
      return const SizedBox.shrink();
    }

    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: scrollEffects.backdropHeight,
      child: FadeInImage.assetNetwork(
        fadeInDuration: const Duration(milliseconds: 300),
        placeholder: ImageAssets.transparentImage,
        image: photoUrl,
        width: screenWidth,
        height: scrollEffects.backdropHeight,
        fit: BoxFit.cover,
      ),
    );
  }
} */

class _BlurOverlay extends StatelessWidget {
  _BlurOverlay(this.scrollEffects);
  final EventDetailsScrollEffects scrollEffects;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(
        sigmaX: scrollEffects.backdropOverlayBlur,
        sigmaY: scrollEffects.backdropOverlayBlur,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: scrollEffects.backdropHeight,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(
            scrollEffects.backdropOverlayOpacity * 0.4,
          ),
        ),
      ),
    );
  }
}

class _InsetShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: -8.0,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: SizedBox(
          width: screenWidth,
          height: 10.0,
        ),
      ),
    );
  }
}
