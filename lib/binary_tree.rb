class BinaryTree
  attr_accessor :root

  def insert_data(data)
    self.root = insert(data)
  end

  def insert(data, node = self.root)
    if node.nil?
      Node.new(data)
    else
      if data < node.data
        node.left = insert(data, node.left)
      else
        node.right = insert(data, node.right)
      end
      node
    end
  end

  def search(node = self.root)

  end

  def nodes(node = self.root, results = [])
    if node.left
      nodes(node.left, results)
    end
    results << node
    if node.right
      nodes(node.right, results)
    end
    results
  end

  def leaf_nodes(node = self.root, results = [])
    if node.left
      leaf_nodes(node.left, results)
    end

    if !node.left && !node.right
    results << node
    end

    if node.right
      leaf_nodes(node.right, results)
    end
    results
  end

  def include?(name, node = self.root)
    if node.left
      include?(name, node.left)
    end

    if node.right
      include?(name, node.right)
    end
    if node.data == name 
      return true
    end
  end

  def find(name)
  end

  def delete(name, node = self.root)
  end
end
