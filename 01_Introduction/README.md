
This section introduces the basics of Processing. You can download it [here](https://processing.org/). We will learn how to code basic shapes and forms.

**Tips**
* Spelling matters
* Case matters but spaces do not.
* End function calls with a ```;```
* Use the Processing IDE to help you identify errors in your code


### Shapes
We can create basic shapes using prewritten functions.

```rect (0, 0, 100, 200);``` produces a rectangle with its upper left corner at (0, 0) with a width of 100 and a height of 200

```ellipse (0, 0, 100, 100);``` produces an ellipse (in this case a circle) with a center of (0, 0) and a width and height of 100

### Color
Color can be specified with multiple values. 

```fill (0);```
produces a black fill

```fill (255);```
produces a white fill

```fill (255, 0, 0);```
produces a red fill—when three values are used for color, the numbers correspond to red, blue, green values

Strokes and fills can be turned off with the following:

```noStroke();```

```noFill();```

### Assignment
As practice, try to recreate a painting by Josef Albers or Piet Mondrian

![albers](https://arthur.io/img/art/0000017344a1ecd26/josef-albers/homage-to-the-square-soft-spoken/large-2x/josef-albers--homage-to-the-square-soft-spoken.jpg)
![mondrian](https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Piet_Mondriaan%2C_1921_-_Composition_en_rouge%2C_jaune%2C_bleu_et_noir.jpg/481px-Piet_Mondriaan%2C_1921_-_Composition_en_rouge%2C_jaune%2C_bleu_et_noir.jpg)
