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

### Data Structure 1 - Linked List
I created a linked list in Ruby, along with five functions that can be run on it: inserts a new node at the head, finding it's size, display a node by inputing it's value, removing a node and print out a list of all nodes.

### Data Structure 3 - Stack
This structure, inherits from Structure 1 - Linked List. It allows the user to add an item to the top of the stack (head of the linked list) and pop the same off the top of the stack. It also returns a custom error message when the user tries to pop an empty stack. Stacks being LIFO, this is all that's allowed!

## Authors
* Scott Hale

## Collaborators
* Brook Riggio (Algorithm 1)
* Javier Soto, Ryan Sobol (Linked List, Stack)

