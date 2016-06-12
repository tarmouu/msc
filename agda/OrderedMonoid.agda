{-# OPTIONS --type-in-type #-}

module OrderedMonoid where

open import Relation.Binary.Core using (_≡_ ; refl)

record OrderedMonoid : Set where
  field
    M : Set
    
    _⊑_ : M → M → Set -- \sqsubseteq ⊑
    reflM : {m : M} → m ⊑ m
    transM : {m n o : M} → m ⊑ n → n ⊑ o → m ⊑ o

    i : M 
    _·_ : M → M → M
    lu : { m : M } → i · m ≡ m
    ru : { m : M } → m · i ≡ m
    ass : { m n o : M} → (m · n) · o ≡ m · (n · o)
