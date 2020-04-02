#ifndef _DOUBLENODETYPE_HPP
#define _DOUBLENODETYPE_HPP

/**
*	@brief	DoublyNodeType class.
*	@details	This class has data and next and prev pointer.
*/
template <typename T>
class DNodeType {
private:
  T Data;	///< A data for each node.
  DNodeType<T>* nLink;	///< A pointer to Next Node.
  DNodeType<T>* pLink;	///< A pointer to Prev Node.

public:
  /**
  *	default constructor.
  */
  DNodeType ():nLink(nullptr),pLink(nullptr){}

  /**
  *	@brief	Get Pointer to Next Node.
  *	@pre	Pointer to Next Node should be initialized.
  *	@post	Get Pointer to Next Node.
  *	@return	Pointer to Next Node.
  */
  DNodeType* GetnLink() const { return this->nLink; }

  /**
  *	@brief	Get Pointer to Prev Node.
  *	@pre	Pointer to Prev Node should be initialized.
  *	@post	Get Pointer to Prev Node.
  *	@return	Pointer to Prev Node.
  */
  DNodeType* GetpLink() const { return this->pLink; }

  /**
	*	@brief	Set Pointer to Next Node.
	*	@pre	none.
	*	@post	Pointer to Next Node is set.
	*	@param	next_link set nLink.
	*/
  void SetnLink(DNodeType<T> *next_link) { this->nLink = next_link; }

  /**
  *	@brief	Set Pointer to Prev Node.
  *	@pre	none.
  *	@post	Pointer to Prev Node is set.
  *	@param	prev_link set nLink.
  */
  void SetpLink(DNodeType<T> *prev_link) { this->pLink = prev_link; }

  /**
  *	@brief	Get Data.
  *	@pre	Data should be initialized.
  *	@post	Get Data.
  *	@return	Data.
  */
  T GetData() { return this->Data; }
  /**
  *	@brief	Get Data pointer.
  *	@pre	Data should be initialized.
  *	@post	Get Data pointer.
  *	@return	Data pointer.
  */
  T* GetDataPtr() { return &this->Data; }

  /**
	*	@brief	Set Data
	*	@pre	none.
	*	@post	Data is set.
	*	@param	inData set Data.
	*/
  void SetData(T inData) { this->Data=inData; }


};

#endif /* _DOUBLENODETYPE_HPP */
