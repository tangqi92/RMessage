## RMessage Custom Design File Properties

* **backgroundColor**: Background color for the RMessage. String: [#000000, #FFFFFF].
* **backgroundColorAlpha**: Apply a transparency to the background color. Must be less than 1.0 but not 0 for blurring to work
  when blurBackground key is set to enabled. Numeric: [0, 1.0].
* **opacity**: Opacity of the RMessage. Numeric: [0, 1.0].
* **leftViewImage**: Filename of image (in app bundle) to use as an image for the left view of the message. String.
* **leftViewRelativeCornerRadius**: Relative corner radius percentage to apply to left view of the message. For example 0.5 (use 50% of view width as corner radius) would mask the view to always be a circle. Numeric: [0, 1.0].
* **leftViewContentMode**: Content mode to apply to the left view. String: ["scaleToFill", "scaleAspectFill", "scaleAspectFit", "redraw", "center", "top", "bottom", "left", "right", "topLeft", "topRight", "bottomLeft", "bottomRight"].
* **rightViewImage**: Filename of image (in app bundle) to use as an image for the right view of the message. String.
* **rightViewRelativeCornerRadius**: Relative corner radius percentage to apply to right view of the message. For example 0.5 (use 50% of view width as corner radius) would mask the view to always be a circle. Numeric: [0, 1.0].
* **rightViewContentMode**: Content mode to apply to the right view. String: ["scaleToFill", "scaleAspectFill", "scaleAspectFit", "redraw", "center", "top", "bottom", "left", "right", "topLeft", "topRight", "bottomLeft", "bottomRight"].
* **backgroundViewImage**: Filename of image (in app bundle) to use as an image for the background view. If specified do not specify a backgroundViewResizeableImage property. String.
* **backgroundViewResizeableImage**: Filename of image to use as a resizable image for the background view. If specified do not specify a backgroundViewImage property. String.
* **backgroundViewContentMode**: Content mode to apply to the background view. String: ["scaleToFill", "scaleAspectFill", "scaleAspectFit", "redraw", "center", "top", "bottom", "left", "right", "topLeft", "topRight", "bottomLeft", "bottomRight"].
* **titleFontName**: Name of font to use for title text. String.
* **titleFontSize**: Size of the title font. Numeric: [0, Max depending on font used]
* **titleTextAlignment**: Alignment to apply to title label. String: {"left", "right", "center", "justified", "normal"}.
* **titleTextColor**: Color of the title text. String: [#000000, #FFFFFF].
* **titleShadowColor**: Color of the title shadow. String: [#000000, #FFFFFF].
* **titleShadowOffsetX**: Amount of pt to offset in x direction title shadow from title text. Numeric.
* **titleShadowOffsetY**: Amount of pt to offset in y direction title shadow from title text. Numeric.
* **subtitleFontName**: Name of font to use for subtitle text. String.
* **subtitleFontSize**: Size of the subtitle font. Numeric: [0, Max depending on font used].
* **subtitleTextAlignment**: Alignment to apply to subtitle label. String: {"left", "right", "center", "justified", "normal"}.
* **subtitleTextColor**: Color of the subtitle shadow. String: [#000000, #FFFFFF].
* **subtitleShadowColor**: Color of the subtitle shadow. String: [#000000, #FFFFFF].
* **subtitleShadowOffsetX**: Amount of pt to offset in x direction subtitle shadow from subtitle text. Numeric.
* **subtitleShadowOffsetY**: Amount of pt to offset in y direction subtitle shadow from subtitle text. Numeric.
* **blurBackground**: Enable/disable blurring of the background behind the RMessage. Use in conjunction with
  backgroundColorAlpha. Numeric boolean [0, 1].

Property keys are always strings, values can be string or numeric. If specifying a numeric value don't encapsulate the numeric value in a string.
[x,y] Signifies the range of values x to y that are allowed for the field.

For example:

```
"backgroundColor": "#FFFFFF",
"opacity": 1.0
```
