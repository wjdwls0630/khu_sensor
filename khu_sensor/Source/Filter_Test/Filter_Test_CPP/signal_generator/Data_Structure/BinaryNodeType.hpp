#ifndef _BINARYNODETYPE_HPP
#define _BINARYNODETYPE_HPP

#include "Comparer.hpp"
#include "BinaryIterator.hpp"

/**
*	@brief	BinaryNodeType class.
*	@details	This class has data and right and left pointer.
*/
template <typename T>
class BNodeType {
private:
    T Data;	///< A data for each node.
    BNodeType<T>* RightLink;	///< A pointer to Right Child Node.
    BNodeType<T>* LeftLink;	///< A pointer to Left Child Node.

public:
    /**
    *	default constructor.
    */
    BNodeType ():RightLink(nullptr),LeftLink(nullptr){}

    /**
    *	@brief	Get Pointer to Right Node.
    *	@pre	Pointer to Right Node should be initialized.
    *	@post	Get Pointer to Right Node.
    *	@return	Pointer to Right Node.
    */
    BNodeType* GetRightLink() const { return this->RightLink; }

    /**
    *	@brief	Get Pointer to Left Node.
    *	@pre	Pointer to Left Node should be initialized.
    *	@post	Get Pointer to Left Node.
    *	@return	Pointer to Left Node.
    */
    BNodeType* GetLeftLink() const { return this->LeftLink; }

    /**
      *	@brief	Set Pointer to Right Node.
      *	@pre	none.
      *	@post	Pointer to Right Node is set.
      *	@param	right_link set RightLink.
      */
    void SetRightLink(BNodeType<T> *right_link) { this->RightLink = right_link; }

    /**
    *	@brief	Set Pointer to Left Node.
    *	@pre	none.
    *	@post	Pointer to Left Node is set.
    *	@param	left_link set RightLink.
    */
    void SetLeftLink(BNodeType<T> *left_link) { this->LeftLink = left_link; }

    /**
    *	@brief	Get Data.
    *	@pre	Data should be initialized.
    *	@post	Get Data.
    *	@return	Data.
    */
    T GetData() const { return this->Data; }
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
    void SetData(T inData) { this->Data = inData; }

    /**
     *	@brief	Check node is leaf.
     *	@pre	none.
     *	@post	none.
     *	@return	return true if tree is leaf, otherwise return false.
     */
    bool IsLeaf() {
        if (this->RightLink==nullptr && this->LeftLink== nullptr) {
            return true;
        }
        return false;
    }
};




#endif /* _BINARYNODETYPE_HPP */
