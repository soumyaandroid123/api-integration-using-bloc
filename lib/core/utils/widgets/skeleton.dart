import 'package:flutter/material.dart';
import 'package:multiple_user_bloc/core/utils/constants.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

/// Rounded Rectangle skeleton widget with shimmer effect
class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
    this.margin,
    this.durationInMilliseconds = 1500,
    this.highlightColor,
  }) : super(key: key);

  /// Circular skeleton widget with shimmer effect
  const factory Skeleton.circle({
    Key? key,
    double radius,
  }) = _SkeletonCircle;

  final double? height;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final Color? highlightColor;
  final int durationInMilliseconds;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(milliseconds: durationInMilliseconds),
      baseColor: lightShimmerBaseColor,
      highlightColor: lightShimmerHighlightColor,
      child: Container(
        height: height ?? 3.0.h,
        width: width ?? 20.0.w,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(borderRadius ?? UIConstants.baseRadius),
          color: Colors.white,
        ),
      ),
    );
  }
}

/// Circular skeleton
class _SkeletonCircle extends Skeleton {
  const _SkeletonCircle({
    Key? key,
    this.radius = 40,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: lightShimmerBaseColor,
      highlightColor: lightShimmerHighlightColor,
      child: Container(
        height: radius,
        width: radius,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
