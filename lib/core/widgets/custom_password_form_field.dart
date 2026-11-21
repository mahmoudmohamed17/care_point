import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String? label;
  final String hint;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;

  const new({
    super.key,
    required this.hint,
    this.label,
    this.controller,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.textInputAction,
    this.focusNode,
    this.onFieldSubmitted,
  });

  @override
  State<CustomPasswordFormField> createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  late final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  void _toggle() {
    _obscureText.value = !_obscureText.value;
  }

  @override
  void dispose() {
    _obscureText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.h,
      children: [
        if (widget.label != null) ...[
          Text(context.tr(widget.label!), style: textTheme.titleMedium),
        ],
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          onChanged: widget.onChanged,
          enabled: widget.enabled,
          obscureText: _obscureText.value,
          textInputAction: widget.textInputAction,
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          style: textTheme.bodyMedium,
          decoration: InputDecoration(
            hintText: context.tr(widget.hint),
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            suffixIcon: IconButton(
              onPressed: _toggle,
              icon: ValueListenableBuilder(
                valueListenable: _obscureText,
                builder: (context, value, child) {
                  return Icon(
                    value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
