import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiple_user_bloc/core/utils/constants.dart';
import 'package:multiple_user_bloc/core/utils/theme/typography.dart';

/// Yoro Icon Button
class PrimaryIconButton extends StatefulWidget {
  const PrimaryIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.label,
    this.iconColor = Colors.black,
    this.labelColor,
    this.iconSize = UIConstants.baseIconSize,
    this.horizontalLayout = false,
    this.hasBackground = false,
    this.backgroundColor,
    this.padding,
    this.enabled = true,
    this.hasIconBackground = false,
    this.iconBackgroundColor,
    this.shrinkTapTarget = false,
    this.smallLabel = false,
    this.showMirror = false,
    this.iconInternalPadding,
    this.spacingInVertical = 0,
    this.labelSize,
    this.checkNetworkStatus = false,
    this.circularBackground = true,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData icon;
  final String? label;
  final Color? iconColor;
  final Color? labelColor;
  final double iconSize;
  final bool horizontalLayout;
  final bool hasBackground;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool enabled;
  final bool hasIconBackground;
  final Color? iconBackgroundColor;
  final bool shrinkTapTarget;
  final bool smallLabel;
  final bool showMirror;
  final EdgeInsetsGeometry? iconInternalPadding;
  final double spacingInVertical;
  final double? labelSize;
  final bool checkNetworkStatus;
  final bool circularBackground;

  @override
  State<PrimaryIconButton> createState() => _PrimaryIconButtonState();
}

class _PrimaryIconButtonState extends State<PrimaryIconButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: widget.padding,
        backgroundColor: widget.hasBackground ? widget.backgroundColor : null,
        shape: widget.label != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UIConstants.baseRadius,
                ),
              )
            : null,
        minimumSize: widget.shrinkTapTarget ? Size(0, 0) : null,
        tapTargetSize: widget.shrinkTapTarget
            ? MaterialTapTargetSize.shrinkWrap
            : MaterialTapTargetSize.padded,
      ),
      onPressed: widget.enabled
          ? () async {
              await HapticFeedback.lightImpact();
              widget.onPressed();
            }
          : null,
      child: widget.label == null
          ? _icon(context)
          : widget.horizontalLayout
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _icon(context),
                    UIConstants.horizontalSpaceSmall,
                    _label(context),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _icon(context),
                    if (widget.hasIconBackground)
                      SizedBox(
                        height: widget.spacingInVertical,
                      ),
                    _label(context),
                  ],
                ),
    );
  }

  Widget _icon(BuildContext context) {
    return Container(
      padding: widget.hasIconBackground
          ? widget.iconInternalPadding ??
              const EdgeInsets.all(UIConstants.baseMargin)
          : null,
      decoration: widget.hasIconBackground
          ? BoxDecoration(
              color: widget.iconBackgroundColor ?? Colors.white,
              shape: widget.circularBackground
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              borderRadius: widget.circularBackground
                  ? null
                  : UIConstants.smallBorderRadius,
            )
          : null,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(widget.showMirror ? math.pi : 0),
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: widget.enabled
              ? (widget.iconColor ?? Theme.of(context).primaryColor)
              : Colors.grey[300]?.withOpacity(0.8),
        ),
      ),
    );
  }

  Widget _label(BuildContext context) {
    return Text(
      widget.label!,
      textAlign: TextAlign.center,
      style: AppTypography.smallBodyTextStyle.copyWith(
        fontSize: widget.labelSize ?? (widget.smallLabel ? 12 : 14),
        fontWeight: FontWeight.w600,
        color: widget.labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
