//
// Created by ParkJungJin on 2019-05-27.
//

#ifndef _BINARYITERATOR_HPP
#define _BINARYITERATOR_HPP


#include "BinarySearchTree.hpp"
#include "BinaryNodeType.hpp"

template<typename T>
class BNodeType;
template<typename T>
class BinarySearchTree;

/**
*	@brief	BinaryIterator class.
*	@details	This class only for observing, iterator class
*/
template <typename T>
class BinaryIterator{
private:
    friend class BinarySearchTree<T>;
    friend class BNodeType<T>;
    BNodeType<T>** m_List; // to store tree
    BNodeType<T>* m_CurPointer; //for cur pointer
    int cur_ptr; //cur_ptr index
    int length; //store tree count
public:
    /**
    *	default constructor.
    */
    BinaryIterator(BinarySearchTree<T> &bslt) : m_CurPointer(nullptr), cur_ptr(-1), length(0){
        if (bslt.GetCount()!=0) {
            this->m_List = new BNodeType<T>* [bslt.GetCount()-1];
            this->CastListRecur(bslt.GetRoot()); //make list
        } else{
            this->m_List = nullptr; //init list
        }
        //cast list recur make length
    }; ///friend with BinarySearchTree.

    /**
    *	copy constructor. (deep copy)
    */
    BinaryIterator(BinaryIterator<T> &bslt_iter) : m_CurPointer(nullptr), cur_ptr(-1), length(0){
        if (bslt_iter.length!=0) {
            this->m_List = new BNodeType<T> [bslt_iter.length-1];
            //deep copy
            for (int i = 0; i < this->bslt_iter.length; i++) {
                *this->m_List[i] = *bslt_iter.m_List[i];
            }
        } else{
            this->m_List = nullptr; //init list
        }
        this->length = bslt_iter.length;
        this->m_CurPointer = bslt_iter.m_CurPointer;
        this->cur_ptr = bslt_iter.cur_ptr;
    }; ///friend with BinarySearchTree.

    /**
     *	destructor.
     */
    virtual ~BinaryIterator() {
        if (this->length!=0) {
            delete [] this->m_List;
        }
    }

    /**
*	@brief	Check m_CurPointer is dsl_Head_Node.
*	@pre	none.
*	@post	none.
*	@return	return true if m_CurPointer is dsl_Head_Node, otherwise return false.
*/

    void CastListRecur(BNodeType<T>* Node);


    //iterator bool

    /**
  *	@brief	Check cur_ptr == -1.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if cur_ptr == -1, otherwise return false.
  */
    bool IsHead();

    /**
  *	@brief	Check cur_ptr == this->length.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if cur_ptr == this->length, otherwise return false.
  */
    bool IsTail();

    /**
  *	@brief	Check cur_ptr prev is -1.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if cur_ptr prev is -1, otherwise return false.
  */
    bool PrevIsHead();

    /**
  *	@brief	Check cur_ptr next is this->length.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if cur_ptr next is this->length, otherwise return false.
  */
    bool NextIsTail();

    // iterator movement

    /**
    *	@brief	Initialize current pointer for an iteration through the list. cur_ptr = -1 , m_CurPointer = nullptr
    *	@pre	None.
    *	@post	current pointer is prior to list. current pointer has been initialized.
    */
    void ResetToHead();

    /**
    *	@brief	Initialize current pointer for an iteration through the list.cur_ptr = this->length , m_CurPointer = nullptr
    *	@pre	None.
    *	@post	current pointer is prior to list. current pointer has been initialized.
    */
    void ResetToTail();

    /**
    *	@brief	Get First Node Data
    *	@pre	List has element.
    *	@post	get First Node Data.
    * @return return First Node Data.
    */
    T First();

    /**
    *	@brief	Get Last Node Data
    *	@pre	List has element.
    *	@post	get Last Node Data.
    * @return return Last Node Data.
    */
    T Last();

    /**
    *	@brief Move iterator prev, and Get m_CurPointer Data
    *	@pre	List has element.
    *	@post	Move iterator prev, and Get m_CurPointer Data.
    * @return return m_CurPointer Data.
    */
    T Prev();

    /**
    *	@brief Move iterator prev, and Get m_CurPointer DataPtr
    *	@pre	List has element.
    *	@post	Move iterator prev, and Get m_CurPointer DataPtr.
    * @return return m_CurPointer DataPtr.
    */
    T PrevPtr();

    /**
    *	@brief Move iterator next, and Get m_CurPointer Data
    *	@pre	List has element.
    *	@post	Move iterator next, and Get m_CurPointer Data.
    * @return return m_CurPointer Data.
    */
    T Next();

    /**
    *	@brief Move iterator next, and Get m_CurPointer DataPtr
    *	@pre	List has element.
    *	@post	Move iterator next, and Get m_CurPointer DataPtr.
    * @return return m_CurPointer DataPtr.
    */
    T* NextPtr();

    /**
    *	@brief Get m_CurPointer Data
    *	@pre	List has element.
    *	@post	Get m_CurPointer Data.
    * @return return m_CurPointer Data.
    */
    T Cur();

    /**
    *	@brief Get m_CurPointer DataPtr
    *	@pre	List has element.
    *	@post	Get m_CurPointer DataPtr.
    * @return return m_CurPointer DataPtr.
    */
    T* CurPtr();

    /**
    *	@brief Get m_CurPointer Node
    *	@pre	List has element.
    *	@post	Get m_CurPointer Node.
    * @return return m_CurPointer Node.
    */
    BNodeType<T> GetCurrentNode();


    //operator overloading

    /**
    *	@brief	Doing Deep copy by copy assignment operator.
    *	@pre	iterator set info.
    *	@post	object copy data by deep.
    *	@param	iterator that you want to be copied.
    *	@return	return self-reference if self and iterator is not same object, otherwise self that unchanged.
    */
    BinaryIterator<T>& operator= (BinaryIterator<T>& bslt_Iter);
};

template <typename T>
void BinaryIterator<T>::CastListRecur(BNodeType<T>* Node){
//    left -> cur -> right
    if (Node->IsLeaf()) { // if node is leaf , print cur node only(Base Case)
        this->m_List[this->length] = Node;
        this->length++;
        return ;
    } else { // if node has child
        //    left -> cur -> right
        if (Node->GetLeftLink()!= nullptr) {
            this->CastListRecur(Node->GetLeftLink());
        }
        this->m_List[this->length] = Node;
        this->length++;
        if (Node->GetRightLink()!= nullptr) {
            this->CastListRecur(Node->GetRightLink());
        }
    }
}


template<typename T>
bool BinaryIterator<T>::IsHead() {
    return this->cur_ptr==-1;
}

template<typename T>
bool BinaryIterator<T>::IsTail() {
    return this->cur_ptr==this->length;
}

template<typename T>
bool BinaryIterator<T>::PrevIsHead() {
    return this->cur_ptr==0;
}

template<typename T>
bool BinaryIterator<T>::NextIsTail() {
    return this->cur_ptr==this->length-1;
}

template<typename T>
void BinaryIterator<T>::ResetToHead() {
    this->m_CurPointer= nullptr;
    this->cur_ptr = -1;
}

template<typename T>
void BinaryIterator<T>::ResetToTail() {
    this->m_CurPointer= nullptr;
    this->cur_ptr = this->length;
}

template<typename T>
T BinaryIterator<T>::First() {
    return this->m_List[0]->GetData();
}

template<typename T>
T BinaryIterator<T>::Last() {
    return this->m_List[this->length-1]->GetData();
}

template<typename T>
T BinaryIterator<T>::Prev() {
    this->cur_ptr--;
    this->m_CurPointer = this->m_List[this->cur_ptr];
    return this->m_CurPointer->GetData();
}

template<typename T>
T BinaryIterator<T>::PrevPtr() {
    this->cur_ptr--;
    this->m_CurPointer = this->m_List[this->cur_ptr];
    return this->m_CurPointer->GetDataPtr();
}

template<typename T>
T BinaryIterator<T>::Next() {
    this->cur_ptr++;
    this->m_CurPointer = this->m_List[this->cur_ptr];
    return this->m_CurPointer->GetData();
}

template<typename T>
T *BinaryIterator<T>::NextPtr() {
    this->cur_ptr--;
    this->m_CurPointer = this->m_List[this->cur_ptr];
    return this->m_CurPointer->GetDataPtr();
}

template<typename T>
T BinaryIterator<T>::Cur() {
    return this->m_CurPointer->GetData();
}

template<typename T>
T *BinaryIterator<T>::CurPtr() {
    this->cur_ptr--;
    this->m_CurPointer = this->m_List[this->cur_ptr];
    return this->m_CurPointer->GetDataPtr();
}

template<typename T>
BNodeType<T> BinaryIterator<T>::GetCurrentNode() {
    return *this->m_CurPointer;
}

// Doing Deep copy by copy assignment operator.
template <typename T>
BinaryIterator<T>& BinaryIterator<T>::operator= (BinaryIterator<T>& bslt_iter){
    if (this!=&bslt_iter) {
        if (bslt_iter.length!=0) {
            if (this->length!=0) {
                delete [] this->m_List;
            }
            this->m_List = new BNodeType<T>* [bslt_iter.length];

            //deep copy
            for (int i = 0; i < this->bslt_iter.length; i++) {
                *this->m_List[i] = *bslt_iter.m_List[i];
            }
        }
        this->length = bslt_iter.length;
        this->m_CurPointer = bslt_iter.m_CurPointer;
        this->cur_ptr = bslt_iter.cur_ptr;
    }
    return *this;
}

#endif //_BINARYITERATOR_HPP
