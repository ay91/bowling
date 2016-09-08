You are required to write a test program in any language for a ten-pin bowling game.
This bowling game consists of ten frames with each frame having ten pins. From the first to the
ninth frame, the bowler is allowed up to two throws while the tenth frame has up to three throws.

This bowling game differs from the typical bowling game. The rules are as follows:
1. There are two kinds of marks given in a score
a. Strike (all ten down in the first ball)
b. Spare (all ten down by the second ball)
2. There will be no additional score for a spare
3. A strike earns ten points plus the points for the next two balls thrown
4. The maximum score in ten-pin bowling is 300 if a bowler gets 12 strikes in a row.

Inputs

The test program must be able to take in an array of arrays of pins knocked down in each throw as the input. Each sub-array represents one frame of a game. An example is shown below:
[[6,2],[9,1],[1,8],[10],[4,1],[5,2],[0,3],[10],[7,0],[10,7,2]]

Outputs

The test program is to output an array of integers representing the total scores at the end of each frame.
[8, 18, 27, 42, 47, 54, 57, 74, 81, 100]

Test objectives
1. How do you design classes and methods?
2. How do you write test cases?
3. How do you handle unexpected behaviour such as invalid input?
4. State any assumptions if any.
- last frame throw assumptions
