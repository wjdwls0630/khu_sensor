//
// Created by ParkJungJin on 2019-05-23.
//

#ifndef _BINARYTREE_H
#define _BINARYTREE_H

#include <iostream>
#include "BinaryNodeType.hpp"
#define ASCENDING 1
#define DESCENDING 0

/**
*	@brief	BinaryTree class.
*	@details	This class processes as connected by BNodeType left and right pointer
*/
template <typename T>
class BinaryTree {
protected:
    BNodeType<T>* Root; /// Root pointer for first inserted element.
public:
    /**
    *	default constructor.
    */
    BinaryTree():Root(nullptr){}



    /**
    *	destructor.
    */
    virtual ~BinaryTree(){
        //if not empty
        if (!this->IsEmpty()) {
            this->MakeEmpty();
        }
    }

    /**
    *	@brief	Set Root.
    *	@pre	none.
    *	@post	Set Root .
    *	@param Root to set.
    */
    void SetRoot(BNodeType<T>* Node){ this->Root = Node; }

    /**
    *	@brief	Get Root .
    *  	@pre	none.
    *	@post	none.
    *	@return	Get Root.
    */
    BNodeType<T>* GetRoot() const { return this->Root; }

    /**
    *	@brief	Check tree is empty.
    *	@pre	none.
    *	@post	none.
    *	@return	return true if tree is empty, otherwise return false.
    */
    bool IsEmpty() const;

    /**
     *	@brief	Check tree is full.
     *	@details return true when rise bad_memory allocation , it means there is no memory to allocate node
     *	@pre	none.
     *	@post	none.
     *	@return	return true if tree is full, otherwise return false.
     */
    bool IsFull() const;

    /**
     *	@brief	Initialize Tree to empty state.
     *	@details visit all nodes in tree and delete all nodes
     *	@pre	None
     *	@post	Tree is empty.
     */
    void MakeEmpty();

    /**
     *	@brief	delete tree's node.
     *	@details using in MakeEmpty(), call recursively
     *	@pre	None
     *	@post	List is empty.
     */
    void MakeEmptyNode(BNodeType<T>* Node);

    /**
     *	@brief	visit and print node data by InOrder.
     *	@details left -> cur -> right , call recursively
     *	@pre	initialize node
     *	@post	Print Node data.
     */
    void InOrder(BNodeType<T>* Node);

    /**
     *	@brief	visit and print all nodes in tree.
     *	@details left -> cur -> right
     *	@pre	none.
     *	@post	Print all Node data.
     */
    void PrintInOrder();

    /**
     *	@brief	visit and print node data by PreOrder.
     *	@details cur -> left -> right , call recursively
     *	@pre	initialize node
     *	@post	Print Node data.
     */
    void PreOrder(BNodeType<T>* Node);

    /**
     *	@brief	visit and print all nodes in tree.
     *	@details cur -> left -> right
     *	@pre	none.
     *	@post	Print all Node data.
     */
    void PrintPreOrder();

    /**
     *	@brief	visit and print node data by PostOrder.
     *	@details left -> right -> cur , call recursively
     *	@pre	initialize node
     *	@post	Print Node data.
     */
    void PostOrder(BNodeType<T>* Node);

    /**
     *	@brief	visit and print all nodes in tree.
     *	@details left -> right -> cur
     *	@pre	none.
     *	@post	Print all Node data.
     */
    void PrintPostOrder();

    /**
     *	@brief	Get a number of All Node in current tree.
     *	@pre	none.
     *	@post	none.
     *	@return	number of All Node in current tree.
     */
    int GetCount() const;

    /**
     *	@brief	Get count cur node(1) + left and right child nodes count.
     *	@details call recursively
     *	@pre	initialize node.
     *	@post	none.
     *	@return	count cur node(1) + left and right child nodes count .
     */
    int CountNode(BNodeType<T>* Node) const;

    /**
     *	@brief	Get a number of All Leaf Node in current tree.
     *	@pre	none.
     *	@post	none.
     *	@return	number of All Leaf Node in current tree.
     */
    int GetLeafNodeCount() const;

    /**
     *	@brief	Check it is leaf node, and if it is leaf, count 1 if not, visit child nodes.
     *	@details call recursively
     *	@pre	initialize node.
     *	@post	none.
     *	@return	count 1 if node is leaf .
     */
    int CountLeafNode(BNodeType<T>* Node) const;

    /**
     *	@brief	Get a Height in current tree.
     *	@pre	none.
     *	@post	none.
     *	@return	Height in current tree.
     */
    int GetHeight() const;

    /**
     *	@brief	Compare Left and Right Height , and choose big one.
     *	@details call recursively
     *	@pre	initialize node.
     *	@post	none.
     *	@return	count cur node(1) and compare left and right to choose big one .
     */
    int HeightNode(BNodeType<T>* Node) const;

    /**
     *	@brief	Display tree shape.
     *	@details call recursively
     *	@pre	initialize node.
     *	@post	Display tree.
     */
    void Display(BNodeType<T>* Node, int level);
};


// Check tree is empty
template <typename T>
bool BinaryTree<T>::IsEmpty() const{
    if (this->Root == nullptr) {
        return true;
    }
    return false;
}

// Check tree is full.
template <typename T>
bool BinaryTree<T>::IsFull() const{
    BNodeType<T>* Temp; //Temp for Check that memory can allocate new
    try {
        Temp = new BNodeType<T>;
        delete Temp;
        return false;
    } catch (std::bad_alloc exception){
        return true;
    }
}

// Initialize Tree to empty state.
template<typename T>
void BinaryTree<T>::MakeEmpty() {
    if (!this->IsEmpty()) {
        this->MakeEmptyNode(this->Root);
        this->Root = nullptr; //init root
    }
}

// delete tree's node.
template<typename T>
void BinaryTree<T>::MakeEmptyNode(BNodeType<T>* Node) {
    //if tree is empty , return nothing
    if (Node == nullptr) {
        return ;
    }
    //   delete all node
    if (Node->IsLeaf()) { // if node is leaf , (Base Case)
        delete Node; //deallocate memory
        return ;
    } else if(Node->GetLeftLink()== nullptr||Node->GetRightLink()==nullptr){
        //if node has left or right child only
        if (Node->GetLeftLink()!= nullptr) {
            //if node has left child only
            this->MakeEmptyNode(Node->GetLeftLink());
        } else {
            this->MakeEmptyNode(Node->GetRightLink());
        }
        delete Node; // then delete node
        return ;
    } else{
        //if node has both left and right child
        this->MakeEmptyNode(Node->GetLeftLink());
        this->MakeEmptyNode(Node->GetRightLink());
        delete Node; // delete node
        return ;
    }
}

// visit and print node data by InOrder.
template <typename T>
void BinaryTree<T>::InOrder(BNodeType<T>* Node){
    //if tree is empty , return nothing
    if (this->IsEmpty()) {
        return ;
    }
//    left -> cur -> right
    if (Node->IsLeaf()) { // if node is leaf , print cur node only(Base Case)
        std::cout<<Node->GetData()<<" ";
        return ;
    } else { // if node has child
        //    left -> cur -> right
        if (Node->GetLeftLink()!= nullptr) {
            this->InOrder(Node->GetLeftLink());
        }
        std::cout<<Node->GetData()<<" ";
        if (Node->GetRightLink()!= nullptr) {
            this->InOrder(Node->GetRightLink());
        }
    }

}

// visit and print all nodes in tree.
template <typename T>
void BinaryTree<T>::PrintInOrder(){
    std::cout<<"inorder : ";
    this->InOrder(this->Root);
    std::cout<<'\n';
}

// visit and print node data by PreOrder.
template <typename T>
void BinaryTree<T>::PreOrder(BNodeType<T>* Node){
    //if tree is empty , return nothing
    if (this->IsEmpty()) {
        return ;
    }
    //    cur -> left -> right
    if (Node->IsLeaf()) { // if node is leaf , print cur node only(Base Case)
        std::cout<<Node->GetData()<<" ";
        return ;
    } else { // if node has child
        //    cur -> left -> right
        std::cout<<Node->GetData()<<" ";
        if (Node->GetLeftLink()!= nullptr) {
            this->PreOrder(Node->GetLeftLink());
        }
        if (Node->GetRightLink()!= nullptr) {
            this->PreOrder(Node->GetRightLink());
        }
    }
}

// visit and print all nodes in tree.
template <typename T>
void BinaryTree<T>::PrintPreOrder(){
    std::cout<<"preorder : ";
    this->PreOrder(this->Root);
    std::cout<<'\n';
}

// visit and print node data by PostOrder.
template <typename T>
void BinaryTree<T>::PostOrder(BNodeType<T>* Node){
    //if tree is empty , return nothing
    if (this->IsEmpty()) {
        return ;
    }
    //    left -> right -> cur
    if (Node->IsLeaf()) { // if node is leaf , print cur node only(Base Case)
        std::cout<<Node->GetData()<<" ";
        return ;
    } else { // if node has child
        //    left -> right -> cur
        if (Node->GetLeftLink()!= nullptr) {
            this->PostOrder(Node->GetLeftLink());
        }
        if (Node->GetRightLink()!= nullptr) {
            this->PostOrder(Node->GetRightLink());
        }
        std::cout<<Node->GetData()<<" ";
    }
}

// visit and print all nodes in tree.
template <typename T>
void BinaryTree<T>::PrintPostOrder(){
    std::cout<<"postorder : ";
    this->PostOrder(this->Root);
    std::cout<<'\n';
}

// Get a number of All Node in current tree.
template<typename T>
int BinaryTree<T>::GetCount() const {
    if (this->IsEmpty()) { // if tree is empty, count is 0
        return 0;
    }
    //call recursively
    return this->CountNode(this->Root);
}

// Get count cur node(1) + left and right child nodes count.
template<typename T>
int BinaryTree<T>::CountNode(BNodeType<T> *Node) const{
    //Base Case of CountNode -> Node is Leaf node has no child. count 1
    if (Node->IsLeaf()) {
        return 1;
    }

    //if node is not leaf node has left or right

    if (Node->GetLeftLink()==nullptr) {
        //if has only right
        return 1+this->CountNode(Node->GetRightLink());
    } else if (Node->GetRightLink()==nullptr){
        //if has only left
        return 1+this->CountNode(Node->GetLeftLink());
    }
    //if node has both
    return 1+this->CountNode(Node->GetLeftLink())+this->CountNode(Node->GetRightLink());
}

// Get a number of All Leaf Node in current tree.
template<typename T>
int BinaryTree<T>::GetLeafNodeCount() const {
    if (this->IsEmpty()) { // if tree is empty, leaf node count is 0;
        return 0;
    }
    //call recursively
    return this->CountLeafNode(this->Root);
}

// Check it is leaf node, and if it is leaf, count 1 if not, visit child nodes.
template<typename T>
int BinaryTree<T>::CountLeafNode(BNodeType<T> *Node) const{
    //Base Case of CountLeafNode -> Node is Leaf node. count 1
    if (Node->IsLeaf()) {
        return 1;
    }

    //if node is not leaf node has left or right

    if (Node->GetLeftLink()==nullptr) {
        //if has only right
        return this->CountLeafNode(Node->GetRightLink());
    } else if (Node->GetRightLink()==nullptr){
        //if has only left
        return this->CountLeafNode(Node->GetLeftLink());
    }
    //if node has both
    return this->CountLeafNode(Node->GetLeftLink())+this->CountLeafNode(Node->GetRightLink());
}

// Get a Height in current tree.
template<typename T>
int BinaryTree<T>::GetHeight() const {
    if (this->IsEmpty()) { // if tree is empty, leaf node count is 0;
        return 0;
    }
    //call recursively
    return this->HeightNode(this->Root);
}

// Compare Left and Right Height , and choose big one.
template<typename T>
int BinaryTree<T>::HeightNode(BNodeType<T> *Node) const{
    //Base Case of HeightNode -> Node is Leaf node has not child. height 0
    if (Node->IsLeaf()) {
        return 0;
    }

    int H_Left;//Left Height to compare
    int H_Right;//Right Height to compare

    //if node is not leaf node has left or right

    if (Node->GetLeftLink()==nullptr) {
        //if has only right
        H_Right=this->HeightNode(Node->GetRightLink());
        return H_Right+1;
    } else if (Node->GetRightLink()==nullptr){
        H_Left=this->HeightNode(Node->GetLeftLink());
        return H_Left+1;
    }
    //if node has both
    H_Right=this->HeightNode(Node->GetRightLink());
    H_Left=this->HeightNode(Node->GetLeftLink());
    //return more deep side
    return (H_Left>H_Right) ? H_Left+1 : H_Right+1;
}
template <typename T>
void BinaryTree<T>::Display(BNodeType<T>* Node, int level){
    int i;
    // 현재 트리가 비어있지 않은 경우입니다.
    if(Node != nullptr){
        this->Display(Node->GetRightLink(), level + 1);
        std::cout<<'\n';

        // 현재 루트 노드인 경우입니다.
        if(Node == this->Root){
            std::cout << "Root -> ";
        }
        // i가 현레벨보다 낮고 루트가 아닌 경우일 때까지 입니다.
        for(i = 0; i < level && Node != this->Root; i++){
            std::cout << "        ";
        }
        // 자신의 위치에 데이터를 출력합니다.
        std::cout << Node->GetData();
        // 왼쪽 노드도 출력해줍니다.
        this->Display(Node->GetLeftLink(), level + 1);
    }
}


#endif //_BINARYTREE_H
