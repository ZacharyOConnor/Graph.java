# Graph.java
In this project I'm looking to study different graph partitioning algorithms. These are algorithms designed to break up big data
graphs so that computations ca be performed on all partitions at the same time rather than processing the whole graph at once.

I have chosen a benchmark of graphs to work with that make up a combination of variables I'm going to consider when choosing
the partitoining algorithms. These variables are: the number of vertices in the graph, the average degree of a vertex in the graph,
and the clustering coefficient of the graph.

The benchmark is chosen in such a way that there are 2 graphs that can test the effect on the partitioning time for when the
variable is low or high. There are 2 variables with 2 possible values each (high and low) so there are 4 graphs in the benchmark that
make up every possible combination of these variables. For example, to measure the difference the number of vertices present in
the graph makes to the computation time, we can look at 2 graphs that have similar average degree,
but very different values for number of vertices. For example, the graph uk-2007-05@100000 has 100,000 vertices and a mean degree of 30.506, while the graph uk-2007-05@1000000 has 1,000,000 vertices and a mean degree of 41.247. Both graphs have relatively high mean degrees (The other graphs have mean degrees of 3.9 and 6.8) however one has 10 times the number of vertices of the other.
