//
// Created by ParkJungJin on 2019-05-26.
//

#ifndef _AVLTREE_HPP
#define _AVLTREE_HPP

#include "BinarySearchTree.hpp"

template <typename T>
class AVLTree : public BinarySearchTree<T>{
public:
    /**
     *	default constructor.
     */
    AVLTree():BinarySearchTree<T>(ASCENDING){}

    /**
     *	dsl_Direction constructor.
     */
    AVLTree(const int &inDirection) : BinarySearchTree<T>(inDirection){}

    // ASCENDING(1): ascending order(Left is small Right is big)
    // DESCENDING(0): descending order(Left is big Right is small)

    /**
     *	copy constructor. (deep copy)
     */
    AVLTree(const AVLTree &avlt) :BinarySearchTree<T>(avlt.bt_Direction){
        //copy all nodes
        this->CopyNodeRecur(avlt.GetRoot());
    }

    /**
     *	destructor.
     */
    virtual ~AVLTree() {}

    //Get && Set

    /**
     *	@brief	Set Direction.
     *	@details call this func reset the tree by direction order
     *	@pre	none.
     *	@post	Set Direction.
     *	@param Direction to set.
     */
     void SetDirection(int inDirection=ASCENDING) override {
        //re-make tree
        //first deep copy original
        AVLTree<T> *temp  = new AVLTree<T>;
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


    // For ReBalance tree

    /**
     *	@brief	Get a BalanceFactor of Node.
     *	@details call HeigthNode() and calculate left and right height difference(left - right)
     *	@pre	Node is initialize.
     *	@post	none.
     *	@param Node to get balance factor
     *	@return	return BalanceFactor of Node.
     */
    int GetBalanceFactor(BNodeType<T>* Node);

    /**
     *	@brief	Right Rotate.
     *	@details use when Parent Node bf<-1, Parent's right child bf < 0 (right right insert)
     *	@pre	Parent_Node is initialize.
     *	@post	Parent Node is rotated right.
     *	@param Parent_Node to rotate
     *	@return	return Top level of Node.(Child Node is going to be top level)
     */
    BNodeType<T>* RotationRR(BNodeType<T>* Parent_Node);

    /**
     *	@brief	Left Rotate.
     *	@details use when Parent Node bf>1, Parent's left child bf > 0 (left left insert)
     *	@pre	Parent_Node is initialize.
     *	@post	Parent Node is rotated left.
     *	@param Parent_Node to rotate
     *	@return	return Top level of Node.(Child Node is going to be top level
     */
    BNodeType<T>* RotationLL(BNodeType<T>* Parent_Node);

    /**
     *	@brief	Right and Left Rotate. Rotate Twice
     *	@details use when Parent Node bf<-1, Parent's right child bf > 0 (right left insert)
     *	@pre	Parent_Node is initialize.
     *	@post	Parent Node is rotated right and left.
     *	@param Parent_Node to rotate
     *	@return	return Top level of Node.(Child Node is going to be top level)
     */
    BNodeType<T>* RotationRL(BNodeType<T>* Parent_Node);
    /**
     *	@brief	Left and Right Rotate. Rotate Twice
     *	@details use when Parent Node bf > 1, Parent's left child bf < 0 (left right insert)
     *	@pre	Parent_Node is initialize.
     *	@post	Parent Node is rotated left and right.
     *	@param Parent_Node to rotate
     *	@return	return Top level of Node.(Child Node is going to be top level)
     */
    BNodeType<T>* RotationLR(BNodeType<T>* Parent_Node);
    /**
     *	@brief	Check the BalanceFactor and Rebalance Node and its child
     *	@pre	Parent_Node is initialize.
     *	@post	Parent Node is rebalanced.
     *	@param Parent_Node to rebalance
     *	@return	return Top level of Node.(Top level Node after rotation)
     */
    BNodeType<T>* ReBalance(BNodeType<T>* Parent_Node);


    // data management

    /**
     *	@brief	Add item into appropriate spot of tree.
     *	@details data must not be overlaped
     *	@pre	tree is not full. item is not in list.
     *	@post	Item is inserted in this tree.
     *	@return	1 if this function works well, otherwise 0.
     */
    int Add(T data) override ;

    /**
     *	@brief	Add item into appropriate spot of tree.
     *	@details call recursive to search appropiate spot
     *	@pre	tree is not full. item is not in list.
     *	@post	Item is inserted in this tree.
     *	@return	1 if this function works well, otherwise 0.
     */
    BNodeType<T>* AddAVLRecur(BNodeType<T>* Parent_Node, T& data);

    /**
     *	@brief	Delete item from this tree.
     *	@details call recursively and find (binary search) and when it is find, call DeleteNode for de-allocation and rebalance node
     *	@pre	Parent_Node and Node should be initialized. the item exists in tree.
     *	@post	Item is deleted from this tree.
     *	@param Parent_Node to set new link when it is delete, Node for moving, data to find item that want to delete
     *	@return	1 if this function works well, otherwise 0.
     */
    int DeleteRecur(BNodeType<T>* Parent_Node, BNodeType<T>* Node, T& data) override ;

    /**
     *	@brief	Sort item from this tree. (it is not really mean sort, it works when criteria is changed on outer side)
     *	@pre	criteria is changed and tree is not empty. the item exists in tree.
     *	@post	tree is sorted.
     *  @param Compare criteria.
     *	@return	1 if this function works well, otherwise 0.
     */
    int Sort() override;

    /**
     *	@brief	Doing Deep copy by copy assignment operator.
     *	@pre	List set info.
     *	@post	object copy data by deep.
     *	@param	List that you want to be copied.
     *	@return	return self-reference if self and List is not same object, otherwise self that unchanged.
     */
    AVLTree<T>& operator= (AVLTree<T>& avlt);


};

// Get a BalanceFactor of Node.
template<typename T>
int AVLTree<T>::GetBalanceFactor(BNodeType<T> *Node) {
    int H_Left;
    int H_Right;
    if (Node == nullptr) {
        return 0;
    }
    if (Node->IsLeaf()) {
        //no difference height
        return 0;
    } else if (Node->GetLeftLink()==nullptr||Node->GetRightLink()==nullptr) {
        //if empty node has, calculate it -1
        if (Node->GetLeftLink()!=nullptr) {
            //has only left child
            H_Left = this->HeightNode(Node->GetLeftLink());
            return H_Left + 1;
        } else {
            //has only right child
            H_Right = this->HeightNode(Node->GetRightLink());
            return -1 - H_Right;
        }
    } else {
        //if node has both child
        H_Left = this->HeightNode(Node->GetLeftLink());
        H_Right = this->HeightNode(Node->GetRightLink());
        return H_Left - H_Right;
    }
}

// Right Rotate.
template<typename T>
BNodeType<T> *AVLTree<T>::RotationRR(BNodeType<T> *Parent_Node) {
    if (Parent_Node==nullptr) { //if empty node return null
        return nullptr;
    } else if (Parent_Node->IsLeaf()||Parent_Node->GetRightLink()== nullptr){
        //if node is leaf or has no right child return self
        return Parent_Node;
    } else {
        /*
 * p
 *   \
 *     c
 *    /
 *   c1*/
        BNodeType<T>* Child = Parent_Node->GetRightLink();
        /*
         * p
         * |
         * |    c
         *  \  /
         *   c1
        */
        Parent_Node->SetRightLink(Child->GetLeftLink());
        /*
     *    c
     *  /
     * p
     *  \
     *   c1
    */
        Child->SetLeftLink(Parent_Node);
        return Child;

    }
}

// Left Rotate.
template<typename T>
BNodeType<T> *AVLTree<T>::RotationLL(BNodeType<T> *Parent_Node) {
    if (Parent_Node==nullptr) { //if empty node return null
        return nullptr;
    } else if (Parent_Node->IsLeaf()||Parent_Node->GetLeftLink()== nullptr){
        //if node is leaf or node has no left child return self
        return Parent_Node;
    } else{
        /*
         *     p
         *   /
         * c
         *  \
         *   c1*/
        BNodeType<T>* Child = Parent_Node->GetLeftLink();
        /*
         *     p
         *     |
         * c   |
         *  \  |
         *   c1*/
        Parent_Node->SetLeftLink(Child->GetRightLink());
        /*
         *    c
         *     \
         *      p
         *     /
         *   c1
         */
        Child->SetRightLink(Parent_Node);
        return Child;
    }
}

// Right and Left Rotate. Rotate Twice
template<typename T>
BNodeType<T> *AVLTree<T>::RotationRL(BNodeType<T> *Parent_Node) {
    if (Parent_Node==nullptr) { //if empty node return null
        return nullptr;
    } else if (Parent_Node->IsLeaf()){
        //if node is leaf return self
        return Parent_Node;
    } else{
        BNodeType<T>* Child = Parent_Node->GetRightLink();
        Parent_Node -> SetRightLink(this->RotationLL(Child));
        return this->RotationRR(Parent_Node);
    }
}

// Left and Right Rotate. Rotate Twice
template<typename T>
BNodeType<T> *AVLTree<T>::RotationLR(BNodeType<T> *Parent_Node) {
    if (Parent_Node==nullptr) { //if empty node return null
        return nullptr;
    } else if (Parent_Node->IsLeaf()){
        //if node is leaf return self
        return Parent_Node;
    } else{
        BNodeType<T>* Child = Parent_Node->GetLeftLink();
        Parent_Node -> SetLeftLink(this->RotationRR(Child));
        return this->RotationLL(Parent_Node);
    }
}

// Check the BalanceFactor and Rebalance Node and its child
template<typename T>
BNodeType<T> *AVLTree<T>::ReBalance(BNodeType<T> *Parent_Node) {
    int bf = this->GetBalanceFactor(Parent_Node); //balance factor
    //if bf is 0 parent node is 0, there is no case that rise error that Parent Node has no link
    if (bf>1) {
        //case 1: unbalance in left
        if (this->GetBalanceFactor(Parent_Node->GetLeftLink()) > 0) {
            //problem in left child
            Parent_Node = this->RotationLL(Parent_Node);
        } else {
            //problem in right child
            Parent_Node = this->RotationLR(Parent_Node);
        }
    } else if (bf < -1) {
        //case 2: unbalance in right
        if (this->GetBalanceFactor(Parent_Node->GetRightLink()) < 0) {
            //problem in right child
            Parent_Node = this->RotationRR(Parent_Node);
        } else {
            //problem in left child
            Parent_Node = this->RotationRL(Parent_Node);
        }
    }
    return Parent_Node;
}

// Add item into appropriate spot of tree.
template<typename T>
int AVLTree<T>::Add(T data) {
    if (this->IsEmpty()) {
        BNodeType<T>* NewNode = new BNodeType<T>;
        NewNode->SetData(data);
        this->SetRoot(NewNode);
        return 1;
    }

    if (!this->Get(data)) {
        //there is no overlap data in tree
        this->SetRoot(this->AddAVLRecur(this->Root, data));
        return 1;
    }
    //if data is overlap
    return 0;
}

// Add item into appropriate spot of tree.
template<typename T>
BNodeType<T> *AVLTree<T>::AddAVLRecur(BNodeType<T> *Parent_Node, T &data) {
    //overlap data is already filtered in Add func
    if (this->bt_Comparer.Compare(data, Parent_Node->GetData())) {
        //ASCENDING(1) data < Node->GetData()
        //DESCENDING(0) data > Node->GetData()
        if (Parent_Node->GetLeftLink()!= nullptr) {
            //if node has left child
            Parent_Node->SetLeftLink(this->AddAVLRecur(Parent_Node->GetLeftLink(), data));
        } else {
            //if node has no left child
            BNodeType<T> * NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Parent_Node->SetLeftLink(NewNode);
        }
    } else if (this->bt_Comparer.Op_Compare(data, Parent_Node->GetData())){
        //ASCENDING(1) data > Node->GetData()
        //DESCENDING(0) data < Node->GetData()
        if (Parent_Node->GetRightLink()!= nullptr) {
            //if node has left child
            Parent_Node->SetRightLink(this->AddAVLRecur(Parent_Node->GetRightLink(), data));
        } else {
            //if node has no left child
            BNodeType<T> * NewNode = new BNodeType<T>;
            NewNode->SetData(data);
            Parent_Node->SetRightLink(NewNode);
        }
    }
    return this->ReBalance(Parent_Node);
}


template<typename T>
int AVLTree<T>::DeleteRecur(BNodeType<T> *Parent_Node, BNodeType<T> *Node, T &data) {
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
        this->ReBalance(Parent_Node);
        return 1;
    }
}

// Sort item from this tree.
template<typename T>
int AVLTree<T>::Sort() {
    //re-make tree - to set new criteria
    //first deep copy original
    AVLTree<T> *temp  = new AVLTree<T>;
    *temp = *this;

    //copy
    this->MakeEmpty();//reset tree
    this->CopyNodeRecur(temp->GetRoot());

    //de-allocation memory
    delete temp;

    return 1;

}

// Doing Deep copy by copy assignment operator.
template<typename T>
AVLTree<T> &AVLTree<T>::operator=(AVLTree<T> &avlt) {
    if (this!=&avlt) {
        if (this->GetCount()!=0) {
            this->MakeEmpty(); // reset tree
        }
        this->CopyNodeRecur(avlt.Root);

        //set other property
        this->bt_Direction = avlt.bt_Direction;
        this->bt_Comparer.SetDirection(this->bt_Direction);
    }
    return *this;
}




#endif //_AVLTREE_HPP
