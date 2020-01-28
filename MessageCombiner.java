package org.apache.giraph;

class MessageCombiner
{// returns the largest value. May need to be changed if message type is a
	// string

	int combine(int id, int message1, int message2)
	{
		if (message1 > message2)
		{
			return message1;
		}
		return message2;
	}

}
