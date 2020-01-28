import java.util.List;

public class Edge
{
	int value;
	List<Vertex> edgeVertices;

	public Edge()
	{
		// TODO Auto-generated constructor stub
	}

	public List<Vertex> getVertices()
	{
		return edgeVertices;
	}

	public int getValue()
	{
		return value;
	}

	public void setValue(Edge edge, int newValue)
	{
		value = newValue;
	}
}