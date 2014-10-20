# Data Structures and Algorithms
This is a repository of sample code exploring a number of classic data structures implemented in Ruby.

## Description
### Part 1 - Insertion Sort
My approach to the insertion sort algorithm initially began with me wanting to create a second 'sorted' array, separate from initial unsorted array. It seemed I would get about half way through my logic before getting stuck on iterating back through the array to compare all smaller numbers to the pointer. Eventually, I ended up whiteboarding a solution with Brook, that involved just sorting within the original array. I cleaned it up a bit and ended up with insert_sort.rb.

- #### Benchmark Tests on Insertion Sort (1..5000)
- Best case: .0063 s
- Worst case: 3.5112 s
- Random case: 1.8242 s


### Part 2 - Merge Sort
Merge sort involved two functions inside the class Array. One I called merge_sort, which calls itself recursively. The second function is called merging, which is also called inside the merge_sort function to return the final sorted array. Merge_sort breaks up the original unsorted array into halves, while the merging function is responsible for finding the lower number in the arrays being compared and shifting it into the new sorted array.

- #### Benchmark Tests on Merge Sort (1..5000)
- Best case: .0068 s
- Worst case: 3.5069 s
- Random case: 1.7759 s

## Authors
* Scott Hale

## Collaborators and Sources
* Brook Riggio (part 1)
