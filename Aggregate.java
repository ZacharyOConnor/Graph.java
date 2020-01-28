import java.util.List;

import org.apache.giraph.graph.Vertex;
//package org.apache.giraph;

class Aggregate implements Aggregator
{
	int maxValue = -1000;

	public Aggregate()
	{

	}

	@Override
	public void aggregate(int value)
	{
		if (value > maxValue)
		{
			maxValue = value;
		}
	}

	@Override
	public void setAggregatedValue(int value)
	{
		maxValue = value;
	}

	@Override
	public int getAggregatedValue()
	{
		return maxValue;
	}

	@Override
	public void reset()
	{
		maxValue = -1000;
	}

	public void computeAggregator(List<Vertex> vertices, int[] messages)
	{

	}
}
