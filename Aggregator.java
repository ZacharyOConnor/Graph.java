package org.apache.giraph;

interface Aggregator
{
	public void aggregate(int value);

	public void setAggregatedValue(int value);

	public int getAggregatedValue();

	public void reset();
}
