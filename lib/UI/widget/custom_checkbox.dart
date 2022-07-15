import 'package:flutter/material.dart';
import '../../utils/ui_data.dart';

class CustomCheckbox extends StatefulWidget {
  final Widget? suffix;
  final bool? initialValue;
  final ValueChanged<bool> onChanged;

  final Widget? prefix;

  final bool enabled;

  final double checkboxSize;

  final Brightness brightness;

  const CustomCheckbox({
    Key? key,
    this.suffix,
    this.initialValue = false,
    required this.onChanged,
    this.prefix,
    this.enabled = true,
    required this.checkboxSize,
    this.brightness = Brightness.light,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
          right: widget.checkboxSize != null ? widget.checkboxSize : 16),
      onPressed: widget.enabled
          ? () {
              setState(() {
                _currentValue = !_currentValue!;
                if (widget.onChanged != null) widget.onChanged(_currentValue!);
              });
            }
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (widget.prefix != null) widget.prefix!,
          SizedBox(
            height: widget.checkboxSize,
            width: widget.checkboxSize,
            child: IgnorePointer(
              child: widget.brightness == Brightness.dark
                  ? Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: Checkbox(
                        checkColor: AppColors.primary,
                        activeColor: Colors.white,
                        focusColor: AppColors.primary,
                        hoverColor: AppColors.primary,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: _currentValue,
                        onChanged: widget.enabled ? (newValue) {} : null,
                      ),
                    )
                  : Checkbox(
                      checkColor: Colors.white,
                      activeColor: AppColors.primary,
                      focusColor: AppColors.primary,
                      hoverColor: AppColors.primary,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _currentValue,
                      onChanged: widget.enabled ? (newValue) {} : null,
                    ),
            ),
          ),
          if (widget.suffix != null) widget.suffix!,
        ],
      ),
    );
  }
}
