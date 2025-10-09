# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The only difference between a half adder and a half subtractor is the boolean equation for the carry and borrow.
for the half adder it is A and B, for the half subtractor it is !A and B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It creates issues with the carry around leading to a lower bit representation of a higher bit number.
For example, in the test, adding two 4 bit numbers 1010 + 0111, which should equal 10001, however using
 1's complement addition the answer we get is 0010.

### 3 - What is the edge case and problem with Two’s Complement number representation?
In 2s complement the number of positive and negative integers represented is uneven. For example a 4 bit binary
number has 16 possible combinations. 7 of which are positive, 8 of which are negative, and 0.
