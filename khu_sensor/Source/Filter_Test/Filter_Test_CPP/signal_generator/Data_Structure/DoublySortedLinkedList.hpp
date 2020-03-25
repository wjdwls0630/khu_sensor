#ifndef _SORTEDLINKEDLIST_HPP
#define _SORTEDLINKEDLIST_HPP

#include "DoublyNodeType.hpp"
#include "DoublyIterator.hpp"
#include "Comparer.hpp"
#define ASCENDING 1
#define DESCENDING 0


template<typename T>
class DoublyIterator;

/**
*	@brief	DoublySortedLinkedList class.
*	@details	This class processes as connected by DNodeType prev and next pointer, only can access by sequential
*/
template <typename T>
class DSLinkedList {
  friend class DoublyIterator<T>; ///< friend with DoublyIterator
private:

  DNodeType<T> dsl_Head_Node; /// Head node for programming list more easy. It has not data, only has real head pointer
  DNodeType<T> dsl_Tail_Node; /// Tail node for programming list more easy. It has not data, only has real tail pointer
  DNodeType<T>* dsl_MidPointer; ///< Node pointer for pointing Mid node to use more fast search.
  int dsl_Length;	///< Number of node in the list.
  int dsl_Direction; /// ASCENDING(1), DESCENDING(0)
  Comparer<T> dsl_Comparer; /// set Compare (for direction)

  //For Sort No fix and do not use alone

  // Sorts the linked list by changing next pointers (not data)

  /**
  *	@brief	sorted by merge sort
  * @detail split the list until length is one, and compare and last merge
  *	@pre	list should be initialized.
  *	@param	first element of list.
  *	@return	sorting list.
  */
  DNodeType<T>* MergeSort(DNodeType<T>* Head){

    // left is head
    DNodeType<T>* Left = Head;

    // in start check head first
    if (Head==nullptr||Head->GetnLink()==nullptr) {
      return Head;
    }
    //split the list by two (left, right)
    DNodeType<T>* Right=SplitList(Left);

    //recursively sort left and right
    Left=MergeSort(Left);
    Right=MergeSort(Right);

    //merge list set sorted list
    return MergeList(Left, Right);
  }

   // Split the list

  /**
  *	@brief	split the list
  * @detail using slow(one node move), fast(two node move), fast will be last and dslow will be middle
  *	@pre	left Right will be initialized.
  *	@param	list to split.
  *	@return	Rigth part of list.
  */
  DNodeType<T>* SplitList(DNodeType<T>* Left){
    DNodeType<T>* slow = Left; // for one node move
    DNodeType<T>* fast  = Left; // for two node move
    while (fast->GetnLink()!=nullptr&&fast->GetnLink()->GetnLink()!=nullptr) {
      fast=fast->GetnLink()->GetnLink(); //fast move twice
      slow=slow->GetnLink(); //slow move once
    }

    // slow is now on middle , fast is end of list

    //setting
    DNodeType<T>* Right =slow->GetnLink();
    //split left end
    slow->SetnLink(nullptr);
    return Right; //Right will be middle node to last node
  }


  /**
  *	@brief	merge the list
  * @detail compare left and right , using comparer set direction
  *	@pre	left Right will be initialized.
  *	@param	Left and Rigth to get the list merged.
  *	@return	newNode that be merged.
  */
  DNodeType<T>* MergeList(DNodeType<T>* Left,DNodeType<T>* Right){
    //merging two sorted List

    //Base case of Merge List Recursive
    if (Left==nullptr) { //if left node is null
      return Right; //return right
    }
    if (Right==nullptr) { //if right node is null
      return Left; //return left
    }

    //recursively merge
    if (this->dsl_Comparer.Compare(Left->GetData(),Right->GetData())) {
      //ASCENDING left(first node)->GetData()< Rigth(first node) ->GetData()
      //DESCENDING left(first node)->GetData()> Rigth(first node) ->GetData()
      Left->SetnLink(MergeList(Left->GetnLink(), Right)); //call recursively compare and merge
      Left->GetnLink()->SetpLink(Left);
      Left->SetpLink(nullptr);
      return Left;
    } else{
      Right->SetnLink(MergeList(Left, Right->GetnLink())); //call recursively compare and merge
      Right->GetnLink()->SetpLink(Right);
      Right->SetpLink(nullptr);
      return Right;
    }
  }
public:
  /**
  *	default constructor.
  */
  DSLinkedList () :dsl_MidPointer(nullptr),dsl_Length(0),dsl_Direction(ASCENDING),dsl_Comparer(ASCENDING){
    this->dsl_Head_Node.SetnLink(&this->dsl_Tail_Node);
    this->dsl_Tail_Node.SetpLink(&this->dsl_Head_Node);
  }

  /**
  *	dsl_Direction constructor.
  */
  DSLinkedList(const int &Direction)
  :dsl_MidPointer(nullptr),dsl_Length(0),dsl_Direction(Direction),dsl_Comparer(Direction){
    this->dsl_Head_Node.SetnLink(&this->dsl_Tail_Node);
    this->dsl_Tail_Node.SetpLink(&this->dsl_Head_Node);
  }
  // ASCENDING(1): ascending order,  DESCENDING(0): descending order

  /**
  *	copy constructor. (deep copy)
  */
  DSLinkedList(const DSLinkedList& dsl)
  :dsl_Direction(dsl.dsl_Direction),dsl_Comparer(dsl.dsl_Comparer){
    DoublyIterator<T> iter_copy(dsl); //iter for copy
    //reset initial value
    this->dsl_Head_Node.SetnLink(&this->dsl_Tail_Node);
    this->dsl_Tail_Node.SetpLink(&this->dsl_Head_Node);
    if (dsl.dsl_Length!=0) {
      //iter move to tail direction
      //move iter till arrive Tail
      while (!iter_copy.NextIsTail()) {
        this->Add(iter_copy.Next());
      }
    }
    //if using add it will be same as dsl.dsl_Length
    //this->dsl_MidPointer=dsl.dsl_MidPointer;

  }

  /**
  *	destructor.
  */
  ~DSLinkedList (){
    if (!this->IsEmpty()) {
      this->MakeEmpty();
    }
  }

  /**
  *	@brief	Initialize list to empty state.
  *	@pre	None
  *	@post	List is empty.
  */
  void MakeEmpty(){
    DoublyIterator<T> iter(*this);
    DNodeType<T>* Temp_Ptr;
    //iter point first element of list
    iter.Next();
    while (!iter.IsTail()) {
      Temp_Ptr=iter.m_CurPointer; //temp ptr point head pointer
      iter.Next();
      delete Temp_Ptr;
    }
    //reset initial value;
    this->dsl_Head_Node.SetnLink(&this->dsl_Tail_Node);
    this->dsl_Tail_Node.SetpLink(&this->dsl_Head_Node);
    this->dsl_MidPointer=nullptr;
    this->dsl_Length=0;
  }

  // Get Set , other property management

  /**
  *	@brief	Get Direction.
  *	@pre	none.
  *	@post	none.
  *	@return	Get Direction of list.
  */
  int GetDirection() const { return this->dsl_Direction; }

  /**
  *	@brief	Set Direction.
  *	@pre	none.
  *	@post	Set Direction.
  *	@param Direction to set.
  */
  void SetDirection(int inDirection=ASCENDING) { this->dsl_Direction=inDirection; this->dsl_Comparer.SetDirection(inDirection); }

  /**
  *	@brief	Get Head pointer Head node has.
  *	@pre	none.
  *	@post	none.
  *	@return	Get Head pointer same as head node nLink.
  */
  DNodeType<T>* GetHead() const { return this->dsl_Head_Node.GetnLink(); }

  /**
  *	@brief	Set Head pointer Head node has.
  *	@pre	none.
  *	@post	Set Head pointer same as head node nLink.
  *	@param Head pointer to set.
  */
  void SetHead(DNodeType<T>* inHead_Ptr) { this->dsl_Head_Node.SetnLink(inHead_Ptr); }

  /**
  *	@brief	Get Tail pointer Tail node has.
  *	@pre	none.
  *	@post	none.
  *	@return	Get Tail pointer same as head node nLink.
  */
  DNodeType<T>* GetTail() const { return this->dsl_Tail_Node.GetpLink(); }

  /**
  *	@brief	Set Tail pointer Tail node has.
  *	@pre	none.
  *	@post	Set Tail pointer same as head node nLink.
  *	@param Tail pointer to set.
  */
  void SetTail(DNodeType<T>* inTail_Ptr) { this->dsl_Tail_Node.SetpLink(inTail_Ptr); }

  /**
	*	@brief	Get a number of Node in current list.
	*	@pre	none.
	*	@post	none.
	*	@return	number of Node in current list.
	*/
  int GetLength() const { return this->dsl_Length; }

  /**
  *	@brief	Check list is empty.
  *	@pre	none.
  *	@post	none.
  *	@return	return true if list is empty, otherwise return false.
  */
  bool IsEmpty() const { return this->GetHead()==&this->dsl_Tail_Node; }

  // data management

  /**
  *	@brief	get the data which has same in the list.(Bi-directional Search)
  *	@pre	list should be initialized.
  *	@param	data that you want(search) to get.
  *	@return	return 1 if this function works well, otherwise 0.
  */
  int Get(T &data);

  /**
  *	@brief	get the data which has same in the list.(Bi-directional Search)
  *	@pre	list should be initialized.
  *	@param	data that you want(search) to get.
  *	@return	return if this function works well, the pointer of data in the list  otherwise null.
  */
  T* GetPtr(T &data);

  /**
  *	@brief	Add item into appropriate spot of this list.
  *	@pre	List is not full. item is not in list.
  *	@post	Item is inserted in this list.
  *	@return	1 if this function works well, otherwise 0.
  */
  int Add(T data);

  /**
  *	@brief	Delete item from this list.
  *	@pre	List is not empty. the item exists in list.
  *	@post	Item is deleted from this list.
  *	@return	1 if this function works well, otherwise 0.
  */
  int Delete(T data);

  /**
  *	@brief	Sort item from this list.
  *	@pre	List is not empty. the item exists in list.
  *	@post	List is sorted.
  * @param Compare criteria.
  *	@return	1 if this function works well, otherwise 0.
  */
  void Sort();

  //operator overloading

  /**
  *	@brief	Doing Deep copy by copy assignment operator.
  *	@pre	List set info.
  *	@post	object copy data by deep.
  *	@param	List that you want to be copied.
  *	@return	return self-reference if self and List is not same object, otherwise self that unchanged.
  */
  DSLinkedList<T>& operator= (DSLinkedList<T>& dslist);
};

// get the data which has same in the list.(Bi-directional Search)
template <typename T>
int DSLinkedList<T>::Get(T &data){
  if (this->dsl_Length==0) { //if has no data
    return 0;
  }
  DoublyIterator<T> iter(*this);
  if (this->dsl_Comparer.Compare(data,this->dsl_MidPointer->GetData())) {
    //ASCENDING data<this->dsl_MidPointer->GetData() DESCENDING data>this->dsl_MidPointer->GetData()
    while (iter.Next()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        data=iter.m_CurPointer->GetData();
        return 1;
      }
    }
  } else if (data==this->dsl_MidPointer->GetData()){ // if data and midPointer are same
    data=this->dsl_MidPointer->GetData();
    return 1;
  } else{
    iter.ResetToTail();
    while (iter.Prev()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        data=iter.m_CurPointer->GetData();
        return 1;
      }

    }
  }
  return 0; // if not found
}

// get the data which has same in the list.(Bi-directional Search)
template <typename T>
T* DSLinkedList<T>::GetPtr(T &data){
  if (this->dsl_Length==0) { //if has no data
    return 0;
  }

  DoublyIterator<T> iter(*this);
  if (this->dsl_Comparer.Compare(data,this->dsl_MidPointer->GetData())) {
    while (iter.Next()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        return iter.m_CurPointer->GetDataPtr();
      }
    }
  } else if (data==this->dsl_MidPointer->GetData()){ // if data and midPointer are same
    return this->dsl_MidPointer->GetDataPtr();
  } else{
    iter.ResetToTail();
    while (iter.Prev()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        return iter.m_CurPointer->GetDataPtr();
      }
    }
  }
  return nullptr; // if not found
}

// Add item into appropriate spot of this list.
template <typename T>
int DSLinkedList<T>::Add(T data){
  DNodeType<T>* NewNode;
  NewNode=new DNodeType<T>;
  NewNode->SetData(data); //initialize new node
  if (this->dsl_Length==0) { // if no node in list
    //pointing each Node
    this->SetHead(NewNode);
    this->SetTail(NewNode);
    NewNode->SetpLink(&this->dsl_Head_Node);
    NewNode->SetnLink(&this->dsl_Tail_Node);
    this->dsl_MidPointer=NewNode;// set mid pointer
    this->dsl_Length++;
    return 1;
  }
  DoublyIterator<T> iter(*this);
  iter.ResetToTail();
  iter.Prev();
  iter.m_CurPointer->SetnLink(NewNode);
  NewNode->SetpLink(iter.m_CurPointer); // and new node point to cur node
  this->SetTail(NewNode);
  NewNode->SetnLink(&this->dsl_Tail_Node);



  // input is sorted automatically
  /*
  DoublyIterator<T> iter(*this);
  if (this->dsl_Comparer.Compare(data,this->dsl_MidPointer->GetData())) { //if data is smaller than midPointer
    while (iter.Next()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (this->dsl_Comparer.Compare(data,iter.m_CurPointer->GetData())) { //compare list data and data to input
        if (iter.m_CurPointer->GetpLink()==&this->dsl_Head_Node) {
          this->SetHead(NewNode);
          NewNode->SetpLink(&this->dsl_Head_Node);
        } else{
          iter.m_CurPointer->GetpLink()->SetnLink(NewNode);
          NewNode->SetpLink(iter.m_CurPointer->GetpLink());
        }
        iter.m_CurPointer->SetpLink(NewNode);
        NewNode->SetnLink(iter.m_CurPointer); // and new node point to cur node
        break;
      }
    }

    //if arrive middle
    if (iter.m_CurPointer==this->dsl_MidPointer) {
      //iter.m_CurPointer=this->dsl_MidPointer; //set cur to mid
      if (iter.m_CurPointer->GetpLink()==&this->dsl_Head_Node) {
        this->SetHead(NewNode);
        NewNode->SetpLink(&this->dsl_Head_Node);
      } else{
        iter.m_CurPointer->GetpLink()->SetnLink(NewNode);
        NewNode->SetpLink(iter.m_CurPointer->GetpLink());
      }
      iter.m_CurPointer->SetpLink(NewNode);
      NewNode->SetnLink(iter.m_CurPointer); // and new node point to cur node
    }
  } else {
    // ASCENDING : data >= this->dsl_MidPointer->GetData()
    // DESCENDING : data <= this->dsl_MidPointer->GetData()
    iter.ResetToTail();
    while (iter.Prev()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (this->dsl_Comparer.Op_Compare(data,iter.m_CurPointer->GetData())) { //compare list data and data to input
        if (iter.m_CurPointer->GetnLink()==&this->dsl_Tail_Node) {
          this->SetTail(NewNode);
          NewNode->SetnLink(&this->dsl_Tail_Node);
        } else{
          iter.m_CurPointer->GetnLink()->SetpLink(NewNode);
          NewNode->SetnLink(iter.m_CurPointer->GetnLink());
        }
        iter.m_CurPointer->SetnLink(NewNode);
        NewNode->SetpLink(iter.m_CurPointer); // and new node point to cur node
        break;
      }
    }

    //if arrive middle

    if (iter.m_CurPointer==this->dsl_MidPointer) {
      //iter.m_CurPointer=this->dsl_MidPointer; //set cur to mid
      if (iter.m_CurPointer->GetnLink()==&this->dsl_Tail_Node) {
        this->SetTail(NewNode);
        NewNode->SetnLink(&this->dsl_Tail_Node);
      } else{
        iter.m_CurPointer->GetnLink()->SetpLink(NewNode);
        NewNode->SetnLink(iter.m_CurPointer->GetnLink());
      }
      iter.m_CurPointer->SetnLink(NewNode);
      NewNode->SetpLink(iter.m_CurPointer); // and new node point to cur node
    }
  }

  //set midPointer
  if (this->dsl_Length%2==0) {// if dsl_Length is even
    this->dsl_MidPointer=this->dsl_MidPointer->GetnLink();
  }
  */
  this->dsl_Length++;
  return 1;
}

// Delete item from this list.
template <typename T>
int DSLinkedList<T>::Delete(T data){
  if (this->dsl_Length==0) { //if list is empty no search
    return 0;
  }

  DoublyIterator<T> iter(*this);
  if (this->dsl_Comparer.Compare(data,this->dsl_MidPointer->GetData())) {
    while (iter.Next()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        iter.m_CurPointer->GetpLink()->SetnLink(iter.m_CurPointer->GetnLink());
        iter.m_CurPointer->GetnLink()->SetpLink(iter.m_CurPointer->GetpLink());
        delete iter.m_CurPointer;
      }
    }
  } else if (data==this->dsl_MidPointer->GetData()) {
    iter.m_CurPointer=this->dsl_MidPointer;
    iter.m_CurPointer->GetpLink()->SetnLink(iter.m_CurPointer->GetnLink());
    iter.m_CurPointer->GetnLink()->SetpLink(iter.m_CurPointer->GetpLink());
    delete iter.m_CurPointer;
  } else{
    iter.ResetToTail();
    while (iter.Prev()!=this->dsl_MidPointer->GetData()) { //start to head and end in middle
      //compare data and Node data
      if (iter.m_CurPointer->GetData()==data) { //compare list data and data to input
        iter.m_CurPointer->GetnLink()->SetpLink(iter.m_CurPointer->GetpLink());
        iter.m_CurPointer->GetpLink()->SetnLink(iter.m_CurPointer->GetnLink());
        delete iter.m_CurPointer;
      }
    }
  }
  if (this->dsl_Length%2!=0) {// if dsl_Length is odd
    this->dsl_MidPointer=this->dsl_MidPointer->GetpLink();
  }
  this->dsl_Length--;
  return 1;
}

// Sort item from this list.
template <typename T>
void DSLinkedList<T>::Sort(){ //using merge sort

  DNodeType<T>* Temp_HeadPointer = this->GetHead();
  // disconnect tail end is null ptr
  this->dsl_Tail_Node.GetpLink()->SetnLink(nullptr);
  // setting new sorted list
  this->SetHead(this->MergeSort(Temp_HeadPointer));

  // move Temp_Pointer to end
  DNodeType<T>* Temp_Pointer = this->GetHead();
  while (Temp_Pointer->GetnLink()!=nullptr) {
    Temp_Pointer=Temp_Pointer->GetnLink();
  }
  //set tail
  Temp_Pointer->SetnLink(&this->dsl_Tail_Node);
  this->SetTail(Temp_Pointer);
}


// Doing Deep copy by copy assignment operator.
template <typename T>
DSLinkedList<T>& DSLinkedList<T>::operator= (DSLinkedList<T>& dslist){
	if (this!=&dslist) {
    this->MakeEmpty();
    DoublyIterator<T> iter_copy(dslist); //iter for copy
    //reset initial value
    this->dsl_Head_Node.SetnLink(&this->dsl_Tail_Node);
    this->dsl_Tail_Node.SetpLink(&this->dsl_Head_Node);
    if (dslist.dsl_Length!=0) {
      //iter move to tail direction
      //move iter till arrive Tail
      while (!iter_copy.NextIsTail()) {
        this->Add(iter_copy.Next());
      }
    }
		//if using add it will be same as dslist.dsl_Length
    this->dsl_Direction=dslist.dsl_Direction;
    this->dsl_Comparer=dslist.dsl_Comparer;
	}
	return *this;
}
#endif /* _SORTEDLINKEDLIST_HPP */
