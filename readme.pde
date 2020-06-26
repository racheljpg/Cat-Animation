/*
Name : Rachel Ryan
Student Number: 20089534
Programme Name: Software Systems Development

Brief description of the animation achieved: 
If you drag the mouse over the cat, his eyes close and a red circle appears. If not, his eyes are open.
Stars are flashing in the sky.
Pressing left, right, and center mouse keys produces text in the console.

Known bugs/problems:
Took a while to figure out the perfect order to call my methods in the draw function so they did not overlap in an unfavourable way.
Had to call stroke() and noStroke() a couple of times to ensure the starLoop() method did not make all strokes in the image flash.
If you release the mouse over the cat and move your mouse away from him, his eyes stay closed. You must click outside of him to reopen them again.

Any sources referred to during the development of the assignment (no need to reference lecture/lab materials):
For the "random" colour, I searched how to do it on the processing website. (https://processing.org/reference/random_.html)
For the boolean, I referred to a previous lab (Lab 03 Challenge 3) but also referred to true/false on processing website (https://processing.org/examples/truefalse.html)
and their description of booleans (https://processing.org/reference/boolean.html).
and finally, this youtube video on booleans helped. (https://www.youtube.com/watch?v=wsI6N9hfW7E)
*/
