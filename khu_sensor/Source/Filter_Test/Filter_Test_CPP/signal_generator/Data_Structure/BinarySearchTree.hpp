//
// Created by ParkJungJin on 2019-05-25.
//

#ifndef _BINARYSEARCHTREE_HPP
#define _BINARYSEARCHTREE_HPP

#include "BinaryTree.hpp"
#include "Comparer.hpp"

/**
 *	@brief	BinarySearchTree class.
 *	@details	This class processes as connected by BNodeType left and right pointer
 *	it has insert, delete , get(search) function
 *	Caution :: it is not perfect generic for all types, it works when type is pointer,
 *	if you want to use it when type is not pointer, fix the code data->operator=(Node->GetData()) to
 *	data = Node->GetData()
 */
template <typename T>
class BinarySearchTree : public BinaryTree<T> {
protected:
    // ASCENDING(1): ascending order(Left is small Right is big)
    // DESCENDING(0): descending order(Left is big Right is small)
    int bt_Direction; /// ASCENDING(1), DESCENDING(0)
    Comparer<T> bt_Comparer; /// set Compare (for direction)

public:
    /**
     *	default constructor.
     */
    BinarySearchTree():
    bt_Direction(ASCENDING), bt_Comparer(ASCENDING){}

    /**
     *	dsl_Direction constructor.
     */
    BinarySearchTree(const int &inDirection) :
    bt_Direction(inDirection), bt_Comparer(inDirection) {}

    // ASCENDING(1): ascending order(Left is small Right is big)
    // DESCENDING(0): descending order(Left is big Right is small)

    /**
     *	copy constructor. (deep copy)
     */
    BinarySearchTree(const BinarySearchTree &bst) :
    bt_Direction(bst.bt_Direction), bt_Comparer(bst.bt_Direction) {
        //copy all nodes

        this->CopyNodeRecur(bst.GetRoot());
    }

    /**
     *	destructor.
     */
    virtual ~BinarySearchTree() {}


    // Get & Set

    /**
     *	@brief	Get Direction.
     *	@pre	none.
     *	@post	none.
     *	@return	Get Direction of tree.
     */
    int GetDirection() const { return this->bt_Direction; }

    /**
     *	@brief	Set Direction.
     *	@pre	none.
     *	@post	Set Direction.
     *	@param Direction to set.
     */
    virtual void SetDirection(int inDirection=ASCENDING) {
        //re-make tree
        //first deep copy original
        BinarySearchTree<T> *temp  = new BinarySearchTree<T>;
        *temp = *this;

        //set direction
        this->bt_Direction = inDirection;
        this->bt_Comparer.SetDirection(inDirection);

        //copy again
        this->MakeEmpty();//reset tree
        this->CopyNodeRecur(temp->GetRoot());

        //de-allocation memory
        delete temp;
    }


    // data management
    /**
     *	@brief	Find Most biggest node from Parent Node.
     *	@details call recursively
     *	@pre	Parent Node is initialized and has child.
     *	@post	Get Predecessor node
     * @param  Starting point Parent_Node, and child node Node.
     *	@return	NodePtr of predecessor if this function works well, otherwise nullptr.
     */
    BNodeType<T>* GetPredecessorNode(BNodeType<T>* Parent_Node, BNodeType<T>* Node);

    /**
    *	@brief	get the data which has same in the tree.(Binary Search)
    *	@pre	data to search should be initialized
    *	@param	data that you want(search) to get.
    *	@return	return 1 if this function works well, otherwise 0.
    */
    int Get(T &data);


    /**
     *	@brief	get the data which has same in the tree.(Binary Search)
     *	@details check all nodes in tree by recursive
     *	@pre	data to search should be initialized
     *	@param	data that you want(search) to get.
     *	@return	return 1 if this function works well, otherwise 0.
     */
    int GetRecur(BNodeType<T>* Node, T &data);

    /**
    *	@brief	get the data which has same in the tree.(Binary Search)
    *	@pre	data to search should be initialized
    *	@param	data that you want(search) to get.
    *	@return	return if this function works well, the pointer of data in the list  otherwise null.
    */
    T* GetPtr(T &data);

    /**
     *	@brief	get the data which has same in the tree.(Binary Search)
     *	@details check all nodes in tree by recursive
     *	@pre	data to search should be initialized
     *	@param	data that you want(search) to get.
     *	@return	return if this function works well, the pointer of data in the list  otherwise null.
     */
    T* GetPtrRecur(BNodeType<T>* Node, T &data);

    /**
     *	@brief	Add item into appropriate spot of tree.
     *	@details data must not be overlapped
     *	@pre	tree is not full. item is not in list.
     *	@post	Item is inserted in this tree.
     *	@return	1 if this function works well, otherwise 0.
     */
    virtual int Add(T data);

    /**
     *	@brief	Add item into appropriate spot of tree.
     *	@details call recursive to search appropriate spot
     *	@pre	tree is not full. item is not in list.
     *	@post	Item is inserted in this tree.
     *	@param Node for moving , data to insert
     *	@return	1 if this function works well, otherwise 0.
     */
    int AddRecur(BNodeType<T>* Node, T& data);


    /**
    *	@brief	Delete item from this tree.
    *	@pre	tree is not empty. the item exists in tree.
    *	@post	Item is deleted from this tree.
    *	@return	1 if this function works well, otherwise 0.
    */
    int Delete(T data);

    /**
     *	@brief	Delete item from this tree.
     *	@details call recursively and find (binary search) and when it is find, call DeleteNode for de-allcation
     *	@pre	Parent_Node and Node should be initialized. the item exists in tree.
     *	@post	Item is deleted from this tree.
     *	@param Parent_Node to set new link when it is delete, Node for moving, data to find item that want to delete
     *	@return	1 if this function works well, otherwise 0.
     */
    virtual int DeleteRecur(BNodeType<T>* Parent_Node, BNodeType<T>* Node, T& data);

    /**
     *	@brief	Deallocation memory of node and set new link for parent node.
     *	@pre	Parent_Node and Node should be initialized..
     *	@post	Deallocation Memory of Target_Node and Parent Node is Set New Link Item .
     *	@param Parent_Node to set new link when it is delete, Node for moving and delete
     *	@return	1 if this function works well, otherwise 0.
     */
    int DeleteNode(BNodeType<T>* Parent_Node, BNodeType<T>* Target_Node);

    /**
     *	@brief	Sort item from this tree. (it is not really mean sort, it works when criteria is changed on outer side)
     *	@pre	criteria is changed and tree is not empty. the item exists in tree.
     *	@post	tree is sorted.
     *  @param Compare criteria.
     *	@return	1 if this function works well, otherwise 0.
     */
    virtual int Sort();

    /**
     *	@brief	Copy Node and Add the list.
     *	@details It only can use for copying another tree (deep copy, in this case we use this func in operator = and copy constructor)
     *	@pre	Node is initialized.
     *	@post	Copy Node and Add the list.
     *	@param Node to copy
     */

    void CopyNodeRecur(BNodeType<T>* Node);

    /**
     *	@brief	Doing Deep copy by copy assignment operator.
     *	@pre	List set info.
     *	@post	object copy data by deep.
     *	@param	List that you want to be copied.
     *	@return	return self-reference if self and List is not same object, otherwise self that unchanged.
     */
    BinarySearchTree<T>& operator= (BinarySearchTree<T>& bst);
};

template<typename T>
BNodeType<T>* BinarySearchTree<T>::GetPredecessorNode(BNodeType<T>* Parent_Node, BNodeType <T> *Node) {
    BNodeType<T>* Temp_Ptr = Node;
    if (this->bt_Direction==ASCENDING) {
        while (Temp_Ptr->GetRightLink()!= nullptr) {
            //move to right till right link is nullptr
            //set parent
            Parent_Node = Temp_Ptr;
            Temp_Ptr = Temp_Ptr->GetRightLink();
        }
    } else{
        //direction is DESCENDING
        while (Temp_Ptr->GetLeftLink()!= nullptr) {
            //move to right till right link is nullptr
            //set parent
            Parent_Node = Temp_Ptr;
            Temp_Ptr = Temp_Ptr->GetLeftLink();
        }
    }

    return Temp_Ptr;
}

// get the data which has same in the tree.(Binary Search)
template<typename T>
int BinarySearchTree<T>::Get(T &data) {
    if (this->IsEmpty()) {
        return 0;
    }
    return this->GetRecur(this->Root, data);
}

// get the data which has same in the tree.(Binary Search)
template<typename T>
int BinarySearchTree<T>::GetRecur(BNodeType<T>* Node, T &data) {
    //Base case of GetRecur , case when node is leaf
    if (Node->IsLeaf()) {
        //if arrive on leaf node
        if (this->bt_Comparer.IsEqual(data, Node->GetData())) {
            //if data and node data equal
            data = Node->GetData();
            // data -> operator=(Node->GetData());
            return 1;
        }
        // if not equal
        return 0;
    }

    // compare node and data
    if (this->bt_Comparer.Compare(data, Node->GetData())){
        //ASCENDING(1) data < Node->GetData()
        //DESCENDING(0) data > Node->GetData()
        //move to left
        if (Node->GetLeftLink()==nullptr) {
            //if node's left child is empty
            return 0;
        }
        return this->GetRecur(Node->GetLeftLink(), data);
    } else if (this->bt_Comparer.Op_Compare(data, Node->GetData())){
        //ASCENDING(1) data > Node->GetData()
        //DESCENDING(0) data < Node->GetData()
        //move to right
        if (Node->GetRightLink()==nullptr) {
            //if node's right child is empty
            return 0;
        }
        return this->GetRecur(Node->GetRightLink(), data);
    } else {
        //if data and node data equal
        // data = Node->GetData()
        // data -> operator=(Node->GetData());
        return 1;
    }
}

// get the data which has same in the tree.(Binary Search)
template<typename T>
T* BinarySearchTree<T>::GetPtr(T &data) {
    if (this->IsEmpty()) {
        return nullptr;
    }
    return this->GetPtrRecur(this->Root, data);
}

// get the data which has same in the tree.(Binary Search)
template<typename T>
T* BinarySearchTree<T>::GetPtrRecur(BNodeType<T> * Node, T &data) {
    //Base case of GetRecur , case when node is leaf
    if (Node->IsLeaf()) {
        //if arrive on leaf node
        if (this->bt_Comparer.IsEqual(data, Node->GetData())) {
            //if data and node data equal
            // data = Node->GetData()
            return Node->GetDataPtr();
        }
        // if not equal
        return nullptr;
    }

    // compare node and data
    if (this->bt_Comparer.Compare(data, Node->GetData())){
        //ASCENDING(1) data < Node->GetData()
        //DESCENDING(0) data > Node->GetData()
        //move to left
        if (Node->GetLeftLink()==nullptr) {
            //if node's left child is empty
            return nullptr;
        }
        return this->GetPtrRecur(Node->GetLeftLink(), data);
    } else if (this->bt_Comparer.Op_Compare(data, Node->GetData())){
        //ASCENDING(1) data > Node->GetData()
        //DESCENDING(0) data < Node->GetData()
        //move to right
        if (Node->GetRightLink()==nullptr) {
            //if node's right child is empty
            return nullptr;
        }
        return this->GetPtrRecur(Node->GetRightLink(), data);
    } else {
        //if data and node data equal
        // data = Node->GetData()
        return Node->GetDataPtr();
    }
}

// Add item into appropriate spot of tree.
template<typename T>
int BinarySearchTree<T>::Add(T data) {
    if (this->IsEmpty()) {
        BNodeType<T>* NewNode = new BNodeType<T>;
        NewNode->SetData(data);
        this->SetRoot(NewNode);
        return 1;
    }

    if (!this->Get(data)) {
        //there is no overlap data in tree
        return this->AddRecur(this->Root, data);
    }
    //if data is overlap
    return 0;
}

// Add item into appropriate spot of tree.
template<typename T>
int BinarySearchTree<T>::AddRecur(BNodeType<T> *Node, T &data) {
    // data is not overlaped, and check already in Add()

    BNodeType<T>* NewNode; // node to add
/*
    //if it is leaf
    if (Node->IsLeaf()) {
        if (this->bt_Comparer.Compare(data, Node->GetData())) {
            //ASCENDING(1) data < Node->GetData()
            //DESCENDING(0) data > Node->GetData()
            //add to left
            NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Node->SetLeftLink(NewNode);
            return 1;
        } else {
            //ASCENDING(1) data > Node->GetData()
            //DESCENDING(0) data < Node->GetData()
            //add to right
            NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Node->SetRightLink(NewNode);
            return 1;
        }
    }
    */

    //comparing data

    if (this->bt_Comparer.Compare(data, Node->GetData())) {
        //ASCENDING(1) data < Node->GetData()
        //DESCENDING(0) data > Node->GetData()
        //move to left
        if (Node->GetLeftLink()==nullptr) {
            //if node's left child is empty
            NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Node->SetLeftLink(NewNode);
            return 1;
        }
        return this->AddRecur(Node->GetLeftLink(), data);
    } else {
        //ASCENDING(1) data > Node->GetData()
        //DESCENDING(0) data < Node->GetData()
        //move to right
        if (Node->GetRightLink()==nullptr) {
            //if node's right child is empty
            NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Node->SetRightLink(NewNode);
            return 1;
        }
        return this->AddRecur(Node->GetRightLink(), data);
    }
}

// Delete item from this tree.
template<typename T>
int BinarySearchTree<T>::Delete(T data) {
    // if tree is empty
    if (this->IsEmpty()) {
        return 0;
    }

    if (this->Get(data)) {
        // if data is in the tree
        // root has no parent node
        return this->DeleteRecur(nullptr, this->GetRoot(), data);
    }
    //if data is not in the tree
    return 0;
}

// Delete item from this tree.
template<typename T>
int BinarySearchTree<T>::DeleteRecur(BNodeType<T>* Parent_Node, BNodeType<T> *Node, T &data) {
    if (this->bt_Comparer.Compare(data, Node->GetData())) {
        //ASCENDING(1) data < Node->GetData()
        //DESCENDING(0) data > Node->GetData()
        //move to left
        if (Node->GetLeftLink()==nullptr) {
            //if node's left child is empty
            return 0;
        }
        return this->DeleteRecur(Node, Node->GetLeftLink(), data);
    } else if (this->bt_Comparer.Op_Compare(data, Node->GetData())){
        //ASCENDING(1) data > Node->GetData()
        //DESCENDING(0) data < Node->GetData()
        //move to right
        if (Node->GetRightLink()==nullptr) {
            //if node's right child is empty
            return 0;
        }
        return this->DeleteRecur(Node, Node->GetRightLink(), data);
    } else {
        //if Node data is equal to data
        this->DeleteNode(Parent_Node, Node);
        return 1;
    }
}

// Deallocation memory of node and set new link for parent node.
template<typename T>
int BinarySearchTree<T>::DeleteNode(BNodeType<T> *Parent_Node, BNodeType<T> *Target_Node) {
    BNodeType<T>* Temp_Ptr = Target_Node; // for store Target_Node temporary

    //case 1: if Target_Node is Leaf
    if (Target_Node->IsLeaf()) {
        if (Target_Node==this->GetRoot()) {
            //if Node is Root , and has no child. it means tree will be empty
            this->SetRoot(nullptr);
        }
        //if target node to delete is leaf

        if (Parent_Node->GetLeftLink()==Target_Node) {
            //if Parent Node's left child is Target
            Parent_Node->SetLeftLink(nullptr); // make Parent Node's Left child is null
        } else{
            //if Parent Node's right child is Target
            Parent_Node->SetRightLink(nullptr); // make Parent Node's right child is null
        }
    } else if (Target_Node->GetLeftLink()==nullptr||Target_Node->GetRightLink()==nullptr){
        //case 2: if Target Node has left or right child only

        BNodeType<T>* Child; // Target_Node's child node to connect Parent_Node
        if (Target_Node->GetLeftLink()== nullptr) {
            //if Target_Node has only right child
            Child = Target_Node->GetRightLink();
        } else{
            //if Target_Node has only left child
            Child = Target_Node->GetLeftLink();
        }

        if (Target_Node==this->GetRoot()) {
            //if node is root, child should be root
            this->SetRoot(Child);
        } else {
            //if target node is not root, child should be connected with parent node
            if (Parent_Node->GetLeftLink()==Target_Node) {
                //if Parent's left child is target node
                Parent_Node->SetLeftLink(Child);
            } else{
                //if Parent's right child is target node
                Parent_Node->SetRightLink(Child);
            }
        }

    } else {
        //case 3: if Target Node has both direction childs
        // search most biggest node in Target Node's left child(small nodes)
        BNodeType<T> * Successor_Node; // Node for Taking instead of Target_Node
        BNodeType<T> * Successor_Parent_Node;
        if (this->bt_Direction==ASCENDING) {
            Successor_Node = this->GetPredecessorNode(Successor_Parent_Node, Target_Node->GetLeftLink());
        } else{
            Successor_Node = this->GetPredecessorNode(Successor_Parent_Node, Target_Node->GetRightLink());
        }

        if (Successor_Parent_Node->GetLeftLink()==Successor_Node) {
            //if Successor_Node is Succesor_Parent_Node's left child
            Successor_Parent_Node->SetLeftLink(nullptr); //make nullptr
        } else{
            //if Successor_Node is Succesor_Parent_Node's right child
            Successor_Parent_Node->SetRightLink(nullptr); //make nullptr
        }

        //copy Succesor_node to Target_Node ( it seems to delete target node)
        Target_Node->SetData(Successor_Node->GetData());

        // select node to delete(in this case Successor_Node should be deleted
        Temp_Ptr = Successor_Node;
    }

    //deallocation memory
    delete Temp_Ptr;
    return 1;
}

// Sort item from this tree. (it is not really mean sort, it works when criteria is changed on outer side)
template<typename T>
int BinarySearchTree<T>::Sort() {
    if (this->IsEmpty()) {
        return 0;
    }
    //re-make tree - to set new criteria
    //first deep copy original
    BinarySearchTree<T> *temp  = new BinarySearchTree<T>;
    *temp = *this;

    //copy
    this->MakeEmpty();
    this->CopyNodeRecur(temp->GetRoot());

    //de-allocation memory
    delete temp;
    return 1;
}

// Copy Node and Add the list.
template <typename T>
void BinarySearchTree<T>::CopyNodeRecur(BNodeType<T>* Node){
    //if tree is empty , return nothing
    if (Node == nullptr) {
        return ;
    }
    //    cur -> left -> right
    if (Node->IsLeaf()) { // if node is leaf , (Base Case)
        this->Add(Node->GetData());
        return ;
    } else if(Node->GetLeftLink()== nullptr||Node->GetRightLink()==nullptr){
        //if node has left or right child only
        this->Add(Node->GetData());
        if (Node->GetLeftLink()!= nullptr) {
            this->CopyNodeRecur(Node->GetLeftLink());
            return ;
        } else {
            //if node has both child
            this->CopyNodeRecur(Node->GetRightLink());
            return ;
        }
    } else{
        //if node has both left and right child
        this->Add(Node->GetData());
        this->CopyNodeRecur(Node->GetLeftLink());
        this->CopyNodeRecur(Node->GetRightLink());
        return ;
    }
}

// Doing Deep copy by copy assignment operator.
template<typename T>
BinarySearchTree<T> &BinarySearchTree<T>::operator=(BinarySearchTree<T> &bst) {
    if (this!=&bst) {
        if (this->GetCount()!=0) {
            this->MakeEmpty(); // reset tree
        }
        this->CopyNodeRecur(bst.Root);

        //set other property
        this->bt_Direction = bst.bt_Direction;
        this->bt_Comparer.SetDirection(this->bt_Direction);
    }
    return *this;
}


#endif //BINARYSEARCHTREE_HPP