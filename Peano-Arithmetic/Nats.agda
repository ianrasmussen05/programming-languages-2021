module Nats where
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open Relation.Binary.PropositionalEquality using (cong; trans; sym; module ≡-Reasoning)

data Nat : Set where
  z : Nat
  s : Nat -> Nat

infixl 6 _+_

_+_ : Nat -> Nat -> Nat
z + y = y
(s x) + y = s (x + y)

one : Nat
one = s z

two : Nat
two = s one

1+1=2 : one + one ≡ two
1+1=2 = refl

add_z_left : {x : Nat} → z + x ≡ x
add_z_left = refl

add_z_right : {x : Nat} → x + z ≡ x
add_z_right {z} = refl
add_z_right {s x} = cong s (add_z_right {x})

add_s_right : {x y : Nat} → x + s y ≡ s (x + y)
add_s_right {z} = refl
add_s_right {s x} = cong s add_s_right


add_comm : {x y : Nat} → x + y ≡ y + x
add_comm {z} = trans add_z_left (sym add_z_right)
add_comm {s x} {y} = trans (cong s (add_comm {x} {y})) (sym add_s_right)