
LeetCode

    Problems
    Mock
    Contest
    Articles
    Discuss
    •
      Store

    Premium
    New Playground
    lintsu

Auto Saved.

Type here...(Markdown is enabled)

​

605. Can Place Flowers
DescriptionHintsSubmissionsDiscussSolution

Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.

Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.

Example 1:

Input: flowerbed = [1,0,0,0,1], n = 1
Output: True

Example 2:

Input: flowerbed = [1,0,0,0,1], n = 2
Output: False

Note:

    The input array won't violate no-adjacent-flowers rule.
    The input array size is in the range of [1, 20000].
    n is a non-negative integer which won't exceed the input array size.

Seen this question in a real interview before?  

    Difficulty:Easy
    Total Accepted:12.7K
    Total Submissions:42.4K
    Contributor: fallcreek

    Subscribe to see which companies asked this question.
    Related Topics


    Similar Questions
    Teemo Attacking

1

int canFlower(int* flowerbed, int flowerbedSize, int i) {

2

    int left = i - 1, right = i + 1;

3

    return flowerbed[i] == 0 &&

4

        (left < 0 || flowerbed[left] == 0) &&

5

        (right >= flowerbedSize || flowerbed[right] == 0);

6

}

7

​

8

bool canPlaceFlowers(int* flowerbed, int flowerbedSize, int n) {

9

    if (n <= 0) {

10

        return 1;

11

    }

12

    for (int i = 0; i < flowerbedSize; ++i) {

13

        if (canFlower(flowerbed, flowerbedSize, i)) {

14

            flowerbed[i] = 1;

15

            n -= 1;

16

            if (n <= 0) {

17

                return 1;

18

            }

19

        }

20

    }

21

    

22

    return 0;

23

}

24

​

  Custom Testcase( Contribute  )
Submission Result: Accepted
Next challenges: Teemo Attacking
Share your acceptance!
AddThis Sharing Buttons
Share to FacebookShare to TwitterShare to Google+Share to Sina WeiboShare to もっと見る

Check out our solution!
Copyright © 2017 LeetCode
Contact Us  |  Frequently Asked Questions  |  Terms of Service
