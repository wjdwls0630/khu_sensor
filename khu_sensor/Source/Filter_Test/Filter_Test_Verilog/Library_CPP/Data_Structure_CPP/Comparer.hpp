#ifndef _COMPARER_HPP
#define _COMPARER_HPP

/**
*	@brief	Comparer class.
*	@details	This class has operator < and > do comparing data.
*/
template<typename T>
class Comparer {
private:

  bool (*Comp)(const T &, const T &); // comparer select
  bool (*Op_Comp)(const T &, const T &);// opposite comparer selected
  bool (*Equal)(const T &, const T &);
protected:
  /**
  *	@brief	protected compare function.
  *	@pre	none.
  *	@post	none.
  *	@return	comp.
  */
  virtual bool Compare_Impl(const T &a, const T &b);
  /**
  *	@brief	protected op_compare function.
  *	@pre	none.
  *	@post	none.
  *	@return	comp.
  */
  virtual bool Op_Compare_Impl(const T &a, const T &b);

  /**
  *	@brief	protected equal function.
  *	@pre	none.
  *	@post	none.
  *	@return	comp.
  */
  virtual bool Equal_Impl(const T &a, const T &b);
public:
  /**
  *	default ructor.
  * @brief	Direction=1(Ascending), Direction=0(Descending)
  */
  Comparer( int Direction =1);

  /**
  *	@brief Set Direction of Comp. ASCENDING(1) DESCENDING(0)
  *	@pre	none.
  *	@post	none.
  *	@param inDirecetion ASCENDING(1) DESCENDING(0).
  *	@return	none.
  */
  void SetDirection( int inDirection=1) {
    if (inDirection==1) { //ASCENDING
      this->Comp=[](const T &a, const T &b)->bool{return a<b;};
      this->Op_Comp=[](const T &a, const T &b)->bool{return a>b;};
    } else { //DESCENDING
      this->Comp=[](const T &a, const T &b)->bool{return a>b;};
      this->Op_Comp=[](const T &a, const T &b)->bool{return a<b;};
    }
    this->Equal=[](const T &a, const T &b)->bool{return a==b;};
  }

  /**
  *	@brief	public compare function.
  *	@pre	none.
  *	@post	none.
  *	@return	comp.
  */
  bool Compare(const T & a, const T &b) ;

  /**
  *	@brief	public op compare function.
  *	@pre	none.
  *	@post	none.
  *	@return	op comp.
  */
  bool Op_Compare(const T & a, const  T &b) ;

  /**
  *	@brief	public equal function.
  *	@pre	none.
  *	@post	none.
  *	@return	equal.
  */
  bool IsEqual(const T & a, const T &b) ;

  /**
  *	@brief	set a = b.
  *	@pre	none.
  *	@post	set a = b.
  *	@return	none.
  */
  void SetEqual(T & a, const T &b) { a = b;}

};

// protected compare function.
template<typename T> bool Comparer<T>::Compare_Impl(const T &a,  const T &b){ return this->Comp(a,b); }

// protected op_compare function.
template<typename T> bool Comparer<T>::Op_Compare_Impl(const T &a,  const T &b){ return this->Op_Comp(a,b); }

// protected equal function.
template<typename T> bool Comparer<T>::Equal_Impl(const T &a,  const T &b){ return this->Equal(a,b); }

// Set Direction of Comp. ASCENDING(1) DESCENDING(0)
template<typename T>Comparer<T>::Comparer ( int Direction){
  if (Direction==1) { //ASCENDING
    this->Comp=[](const T &a, const T &b)->bool{return a<b;};
    this->Op_Comp=[](const T &a, const T &b)->bool{return a>b;};
  } else { //DESCENDING
    this->Comp=[](const T &a, const T &b)->bool{return a>b;};
    this->Op_Comp=[](const T &a, const T &b)->bool{return a<b;};
  }
  this->Equal=[](const T &a, const T &b)->bool{return a==b;};
}

// public compare function.
template<typename T> bool Comparer<T>::Compare(const T & a, const T &b) {
  return this->Compare_Impl(a,b);
}

// public op compare function.
template<typename T> bool Comparer<T>::Op_Compare(const T & a, const T &b) {
  return this->Op_Compare_Impl(a,b);
}

// public equal function.
template<typename T> bool Comparer<T>::IsEqual(const T & a, const T &b) {
  return this->Equal_Impl(a,b);
}


/**
*	@brief	Pointer Comparer class.
*	@details	This class has operator < and > do comparing data.
*/
template <typename T>
class Comparer<T*>{
private:
    bool (*Comp)(const T* , const T* ); // comparer select
    bool (*Op_Comp)(const T* , const T* );// opposite comparer selected
    bool (*Equal)(const T* , const T* );

protected:
    /**
    *	@brief	protected compare function.
    *	@pre	none.
    *	@post	none.
    *	@return	comp.
    */
    virtual bool Compare_Impl(const T* a, const T* b){ return this->Comp(a,b); }
    /**
    *	@brief	protected op_compare function.
    *	@pre	none.
    *	@post	none.
    *	@return	comp.
    */
    virtual bool Op_Compare_Impl(const T* a, const T* b){ return this->Op_Comp(a,b); }

    /**
    *	@brief	protected equal function.
    *	@pre	none.
    *	@post	none.
    *	@return	comp.
    */
    virtual bool Equal_Impl(const T* a, const T* b){ return this->Equal(a,b); }
public:
    /**
     *	default ructor.
     * @brief	Direction=1(Ascending), Direction=0(Descending)
     */
    Comparer (int Direction= 1){
        if (Direction==1) { //ASCENDING
            this->Comp=[](const T* a, const T* b)->bool{return a->operator<(b);};
            this->Op_Comp=[](const T* a, const T* b)->bool{return a->operator>(b);};
        } else { //DESCENDING
            this->Comp=[](const T* a, const T* b)->bool{return a->operator>(b);};
            this->Op_Comp=[](const T* a, const T* b)->bool{return a->operator<(b);};
        }
        this->Equal=[](const T* a, const T* b)->bool{return a->operator==(b);};
    }
    /**
     *	@brief Set Direction of Comp. ASCENDING(1) DESCENDING(0)
     *	@pre	none.
     *	@post	none.
     *	@param inDirecetion ASCENDING(1) DESCENDING(0).
     *	@return	none.
     */
    void SetDirection( int inDirection=1) {
        if (inDirection==1) { //ASCENDING
            this->Comp=[](const T* a, const T* b)->bool{return a->operator<(b);};
            this->Op_Comp=[](const T* a, const T* b)->bool{return a->operator>(b);};
        } else { //DESCENDING
            this->Comp=[](const T* a, const T* b)->bool{return a->operator>(b);};
            this->Op_Comp=[](const T* a, const T* b)->bool{return a->operator<(b);};
        }
        this->Equal=[](const T* a, const T* b)->bool{return a->operator==(b);};
    }

    /**
*	@brief	public compare function.
*	@pre	none.
*	@post	none.
*	@return	comp.
*/
    bool Compare(const T*  a, const  T* b) { return this->Compare_Impl(a, b); }

    /**
    *	@brief	public op compare function.
    *	@pre	none.
    *	@post	none.
    *	@return	op comp.
    */
    bool Op_Compare(const T*  a, const  T* b) { return this->Op_Compare_Impl(a, b); }

    /**
    *	@brief	public equal function.
    *	@pre	none.
    *	@post	none.
    *	@return	equal.
    */
    bool IsEqual(const T*  a, const  T* b) { return this->Equal_Impl(a, b); }

    /**
     *	@brief	set a = b.
     *	@pre	none.
     *	@post	set a = b.
     *	@return	none.
     */
    void SetEqual(T* & a, const T* &b) { a->operator=(b); }

  };


#endif /* _COMPARER_HPP */
