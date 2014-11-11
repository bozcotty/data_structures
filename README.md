# Data Structures and Algorithms
This is a repository of sample code exploring a number of classic data structures implemented in Ruby.

## Description
### Algorithm 1 - Insertion Sort
My approach to the insertion sort algorithm initially began with me wanting to create a second 'sorted' array, separate from initial unsorted array. It seemed I would get about half way through my logic before getting stuck on iterating back through the array to compare all smaller numbers to the pointer. Eventually, I ended up whiteboarding a solution with Brook, that involved just sorting within the original array. I cleaned it up a bit and ended up with insert_sort.rb.

- #### Benchmark Tests on Insertion Sort (1..5000)
- Best case: .0063 s
- Worst case: 3.5112 s
- Random case: 1.8242 s


### Algorithm 2 - Merge Sort
Merge sort involved two functions inside the class Array. One I called merge_sort, which calls itself recursively. The second function is called merging, which is also called inside the merge_sort function to return the final sorted array. Merge_sort breaks up the original unsorted array into smaller arrays, while the merging function is responsible for finding the lower number in the arrays being compared and shifting it into the new sorted array.

- #### Benchmark Tests on Merge Sort (1..5000)
- Best case: .0068 s
- Worst case: 3.5069 s
- Random case: 1.7759 s

### Algorithm 4 - Radix Sort
Radix sort is a non-comparative sort. The items in the array don't consider each other and switch positions. Rather they are sorted a bunch of times, each time iterating through the place values of the numbers in the array. Ten buckets are created on each sort, one for each of the base 10 digits. During each sort, the numbers in the array are placed in one of the 10 buckets, in the order they got into the bucket. By the time the last iteration of the sort is complete, all the numbers are sorted in the final array

- #### Benchmark Tests on Radix Sort (1..5000)
- Best case: .0075 s
- Worst case: .0074 s
- Random case: .0077 s

### Data Structure 1 - Linked List
I created a linked list in Ruby, along with five functions that can be run on it: inserts a new node at the head, finding it's size, display a node by inputing it's value, removing a node and print out a list of all nodes.

### Data Structure 2 - Stack
This structure, inherits from Structure 1 - Linked List. It allows the user to add an item to the top of the stack (head of the linked list) and pop the same off the top of the stack. It also returns a custom error message when the user tries to pop an empty stack. Stacks being LIFO, this is all that's allowed!

### Data Structure 3 - Queue
The Queue also inherits from linked_list.rb. It defines enqueue and dequeue methods as well as a size methhod, in terms of methods inherited from the SLL class of linked_list.rb.

### Data Structure 4 - Binary Tree
The binary tree defined here takes a look at Apple's management team and restructures it so that no person in top management oversees more than two other people. It uses a binary tree's three different methods of traversal of the Depth-first variety: pre-order, in-order, and post-order.

## Authors
* Scott Hale

## Collaborators
* Brook Riggio (Algorithm 1)
* Javier Soto, Ryan Sobol (Linked List, Stack)
<<<<<<< HEAD
* Nick Manos (Radix)
=======
* Nick Manos (Binary Tree)

## Sources
- http://www.och.cc/blog/index.php?entry=entry070511-152543  (Binary Tree)
>>>>>>> binary

