## 1.1 Shameless Green
**Ease of Writing:** The task was easy to write.

**Ease of Understanding:** The content is easy to understand.

**Ease of Changing:** It will be cheap to change as the verse strings are duplicated and can be kept in sync easily if one is changed.

## 1.2 Judging Code
Applying the same metric to two different pieces of source allows you to compare that code.

**SLOC**: Source Lines of Code

**Cyclomatic Complexity**: algorithm that counts the number of unique execution paths through a body of source code

**Flog**: The most popular tool for generating ABC scores for Ruby code is Ryan Davis’s Flog. High ABC numbers indicate code that takes up a lot of mental space.

Metrics are fallible but human opinion is no more precise. Checking metrics regularly will keep you humble and improveyour code.

## 2.3 Removing Duplication

**Does the change I’m contemplating make the code harder to
understand?**

When abstractions are correct, code is easy to understand. Be suspicious of any change that muddies the waters; this suggests an insufficient understanding of the problem.

**What is the future cost of doing nothing now?**

Some changes cost the same regardless of whether you make them now or delay them until later. If it doesn’t increase your costs, delay making changes. The day may never come when you’re forced to make the change, or time may provide better information about what the change should be. Either way, waiting saves you money.

**When will the future arrive, i.e. how soon will I get more
information?**

If you’re in the middle of writing a test suite, better information is as close as the next test. Squeezing all duplication out at the end of every test is not necessary. It’s perfectly reasonable to tolerate a bit of duplication across several tests, hoping that coding up a number of slightly duplicative examples will reveal the correct abstraction. It’s better to tolerate duplication than to anticipate the wrong abstraction.

## 2.7 Exposing Responsibilities

**Testings patterns**:
1. Fake It ("Til You Make It") - each implementation passes the current test, but tests are not yet complete. The small steps of TDD act to incrementally reveal the correct implemetnation.
2. Obvious Implementation - Jumping straight to the solution. If your certainty turns out to be wrong, skipping the steps means you miss the opportunity of being set right. Best to save for very small leaps 
3. Triangulate - requires writing several tests at once, which means you’ll have multiple simultaneous broken tests. The idea is to write one bit of code which makes all of the tests pass. Triangulation is meant to force you to converge upon the correct abstraction in your code.

## 2.10 Writing Cost-Effective Tests
Tests should confirm what your code does without any knowledge of how your code does it.

