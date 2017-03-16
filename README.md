# Pathfinder

## Description

This is simply an implementation I wrote in Swift 3.1 for a school project of the three pathfinding algorithms: A*, Breadth First Search, and Dijkstra's. The difference between the three is in how they sort the list of "open" nodes, and can be seen in the `func insertIntoOpen(node: Node)` function in Pathfinder.swift.

The app should work on both iPhone, iPod Touch, and iPad, but in all cases will work best in landscape mode (set in settings by default).

The app works by loading in two types of text files: some with simply a maze (with the prefix board-1-...), and some with landscape where different tiles have different costs. The costs are shown below.


### Costs For the Landscape Maps

- Water: 100
- Mountains: 50
- Forests: 10
- Grasslands: 5
- Roads: 1
- Start and End: 1

As for the mazes (boards 1-x.txt), the obstacles are specially taken care of to be inpenetrable. See the `func getSuccessorNodes(node: Node) -> [Node]` function in Pathfinder.swift.


## Demo

What the path is should be pretty obvious from these screenshots. The circles are the nodes in the open list, and the crosses are the nodes in the closed list. Learn more about those here: [A* Algorithm on Wikipedia](https://en.wikipedia.org/wiki/A*_search_algorithm)

Board 1-3 using A*
![Board 1-3 using A*](http://imgur.com/3bjWUOG.png)

Board 1-3 using BFS
![Board 1-3 using BFS](http://imgur.com/jKf81NY.png)

Board 2-4 using A*
![Board 2-4 using A*](http://imgur.com/F2g5Bm8.png)

Board 2-4 using BFS
![Board 2-4 using BFS](http://imgur.com/SzFYKEN.png)

