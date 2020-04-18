import it.unimi.dsi.webgraph.ImmutableGraph;
import it.unimi.dsi.fastutil.ints.IntArrayFIFOQueue;
import it.unimi.dsi.fastutil.ints.IntArrays;
import it.unimi.dsi.webgraph.GraphClassParser;
import it.unimi.dsi.webgraph.ImmutableGraph;
import it.unimi.dsi.webgraph.LazyIntIterator;
import it.unimi.dsi.webgraph.NodeIterator;

import java.io.*;
import java.util.*;

public class GiraphHelloWorld {
  	static public void main(String arg[]) throws Exception
	{
		ImmutableGraph graph = ImmutableGraph.load(arg[0]);
		BufferedWriter firstPartition = new BufferedWriter(new FileWriter("new_enron.txt"));
		NodeIterator nodes = graph.nodeIterator();
		double vertexVal = 1;
		double edgeWeight = 2;
		boolean firstNeighbour;
		while (nodes.hasNext())
		{
			firstNeighbour = true;
			int node = nodes.next();
			firstPartition.write("[" + vertexVal + ", [");
				for (int successor : graph.successorArray(node))
				{
					long newSuccessor = successor;
					if (firstNeighbour == true) {
						firstPartition.write("[" + newSuccessor + ", " + edgeWeight + "]");
					}
					else {
					firstPartition.write(", [" + newSuccessor + ", " + edgeWeight + "]");
					}
					firstNeighbour = false;
				}
			firstPartition.write("]]");
			firstPartition.write("\n");
		}
		firstPartition.flush();
	}
}

