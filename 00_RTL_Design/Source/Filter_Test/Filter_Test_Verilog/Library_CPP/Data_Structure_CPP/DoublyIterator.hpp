#ifndef _DOUBLYITERATOR_HPP
#define _DOUBLYITERATOR_HPP

#include "DoublyNodeType.hpp"
#include "DoublySortedLinkedList.hpp"

/**
*	Prevent template reference error
*/
template<typename T>
class DNodeType;
template<typename T>
class DSLinkedList;

/**
*	Iterator Class used in LinkedList
* This class is same with original iterator because it can not only refer data but also be possible to correct
* Not Constant
*/
template <typename T>
class DoublyIterator{
	friend class DSLinkedList<T>;
	friend class DNodeType<T>;
private:
  DSLinkedList<T> &m_List;
  DNodeType<T>* m_CurPointer;
public:
	/**
	*	default constructor.
	*/
	DoublyIterator(DSLinkedList<T> &dsl_list) : m_List(dsl_list), m_CurPointer(&this->m_List.dsl_Head_Node){}; ///friend with DSLinkedList.

	/**
	*	copy constructor. (deep copy)
	*/
	DoublyIterator(DoublyIterator<T> &dsl_iter) : m_List(dsl_iter.m_List), m_CurPointer(dsl_iter.m_CurPointer){}; ///friend with DSLinkedList.

	//void SetList(DSLinkedList<T> &dsl_list) { this->m_List=dsl_list; }

	//iterator bool

	/**
  *	@brief	Check m_CurPointer is dsl_Head_Node.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if m_CurPointer is dsl_Head_Node, otherwise return false.
  */
	bool IsHead();

	/**
  *	@brief	Check m_CurPointer is dsl_Tail_Node.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if m_CurPointer is dsl_Tail_Node, otherwise return false.
  */
  bool IsTail();

	/**
  *	@brief	Check m_CurPointer prev is dsl_Head_Node.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if m_CurPointer prev is dsl_Head_Node, otherwise return false.
  */
  bool PrevIsHead();

	/**
  *	@brief	Check m_CurPointer next is dsl_Tail_Node.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if m_CurPointer next is dsl_Tail_Node, otherwise return false.
  */
	bool NextIsTail();

	// iterator movement

	/**
	*	@brief	Initialize current pointer for an iteration through the list. (make dsl_Head_Node)
	*	@pre	None.
	*	@post	current pointer is prior to list. current pointer has been initialized.
	*/
  void ResetToHead();

	/**
	*	@brief	Initialize current pointer for an iteration through the list. (make dsl_Tail_Node)
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
  DNodeType<T> GetCurrentNode();

	//operator overloading

	/**
	*	@brief	Doing Deep copy by copy assignment operator.
	*	@pre	iterator set info.
	*	@post	object copy data by deep.
	*	@param	iterator that you want to be copied.
	*	@return	return self-reference if self and iterator is not same object, otherwise self that unchanged.
	*/
	DoublyIterator<T>& operator= (DoublyIterator<T>& dsl_Iter);
};

template <typename T>
bool DoublyIterator<T>::IsHead(){
	if(this->m_CurPointer == &this->m_List.dsl_Head_Node){
    return true;
  }
  return false;
}
template <typename T>
bool DoublyIterator<T>::IsTail(){
  if(this->m_CurPointer == &this->m_List.dsl_Tail_Node){
    return true;
  }
  return false;
}

template <typename T>
bool DoublyIterator<T>::PrevIsHead(){
	if(this->m_CurPointer->GetpLink() == &this->m_List.dsl_Head_Node){
    return true;
  }
  return false;
}
template <typename T>
bool DoublyIterator<T>::NextIsTail(){
	if(this->m_CurPointer->GetnLink() == &this->m_List.dsl_Tail_Node){
    return true;
  }
  return false;
}

template <typename T>
void DoublyIterator<T>::ResetToHead(){
	this->m_CurPointer=&this->m_List.dsl_Head_Node;
}
template <typename T>
void DoublyIterator<T>::ResetToTail(){
	this->m_CurPointer=&this->m_List.dsl_Tail_Node;
}

template <typename T>
T DoublyIterator<T>::First(){
	return this->m_List.dsl_Head_Node->GetnLink()->GetData();
}

template <typename T>
T DoublyIterator<T>::Last(){
	return this->m_List.dsl_Tail_Node->GetpLink()->GetData();
}

template <typename T>
T DoublyIterator<T>::Prev(){
	this->m_CurPointer = this->m_CurPointer->GetpLink();
	return this->m_CurPointer->GetData();
}

template <typename T>
T DoublyIterator<T>::PrevPtr(){
	this->m_CurPointer = this->m_CurPointer->GetpLink();
	return this->m_CurPointer->GetDataPtr();
}


template <typename T>
T DoublyIterator<T>::Next(){
	this->m_CurPointer = this->m_CurPointer->GetnLink();
	return this->m_CurPointer->GetData();
}

template <typename T>
T* DoublyIterator<T>::NextPtr(){
	this->m_CurPointer = this->m_CurPointer->GetnLink();
	return this->m_CurPointer->GetDataPtr();
}

template <typename T>
T DoublyIterator<T>::Cur(){
	return this->m_CurPointer->GetData();
}

template <typename T>
T* DoublyIterator<T>::CurPtr(){
	return this->m_CurPointer->GetDataPtr();
}

template <typename T>
DNodeType<T> DoublyIterator<T>::GetCurrentNode(){
	return *this->m_CurPointer;
}

// Doing Deep copy by copy assignment operator.
template <typename T>
DoublyIterator<T>& DoublyIterator<T>::operator= (DoublyIterator<T>& dsl_Iter){
	if (this!=&dsl_Iter) {
		*this->m_List=*dsl_Iter.m_List;
		*this->m_CurPointer=*dsl_Iter.m_CurPointer;
		//if using add it will be same as sl.sl_Length
	}
	return *this;
}

#endif /* _DOUBLYITERATOR_HPP */
