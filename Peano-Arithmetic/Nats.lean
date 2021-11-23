inductive nat where
  | z : nat
  | s : nat → nat
deriving Repr

#print nat

open nat

def add (x : nat) (y : nat) : nat :=
  match x with
    | z => y
    | s x => s (add x y)

-- infixl:65   " + " => add  -- left-associative
instance : Add nat where
  add := add

def one := s z
def two := s one

theorem one_plus_one_is_two : one + one = two := rfl

theorem add_z_left (x : nat) : z + x = x := rfl
theorem add_s_left (x y : nat) : (s x) + y = s (x + y) := rfl

theorem add_z_right (x : nat) : x + z = x :=
  match x with
  | z => rfl
  | s x => by 
    rw[add_s_left];
    apply congr;
    apply rfl;
    apply add_z_right

theorem add_z_right_alt : ∀ x , x + z = x
  | z => rfl
  | s x => Eq.trans (add_s_left x z) (congr rfl (add_z_right_alt x))

theorem add_s_right (y : nat) : ∀ x , s (x + y) = x + s y
  | z => rfl
  | s x => by
    rw[add_s_left];
    rw[add_s_left];
    apply congr rfl;
    apply add_s_right

-- set_option pp.all true
#check congr rfl

theorem add_comm (y : nat) : ∀ x , x + y = y + x
  | z => by simp[add_z_left, add_z_right]
  | s x => by 
    rw[add_s_left];
    rw[add_comm]; 
    apply add_s_right


theorem add_assoc (a b c : nat) : a + (b + c) = (a + b) + c := 
  match a with
    | z => by simp[add_z_left]
    | s a => by
      repeat rw[add_s_left];
      apply congr rfl;
      apply add_assoc

inductive leq : nat → nat → Prop where
  | z : leq z a
  | s : leq a b → leq (s a) (s b)

instance : LE nat where
  le := leq

theorem one_leq_two : one + two ≤ one + one + two := by
  repeat apply leq.s;
  apply leq.z


theorem leq_add (n : nat) : n ≤ (add n m) := by
  induction n with
    | z => 
        apply leq.z
    | s x ih => 
        apply leq.s; 
        apply ih

theorem leq_add_k (n m k: nat) : n ≤ m → n + k ≤ m + k := fun nLeqM =>
  match k with
    | z => by
        repeat rw[add_z_right];
        apply nLeqM
    | s x => by
      repeat rw[← add_s_right]
      apply leq.s
      apply leq_add_k;
      apply nLeqM


theorem leq_add_k2 (n m k: nat) : n ≤ m → n + k ≤ m + k := by
  intros nLeqM;
  induction k with
    | z => 
        repeat rw[add_z_right];
        apply nLeqM
    | s x ih => 
      repeat rw[← add_s_right]
      apply leq.s
      apply ih


-- def mirror_add (x : nat) : nat → nat
--   | z => x
--   | s y => s (mirror_add x y)


-- theorem add_eq_mirror_add (x y : nat) : x + y = mirror_add x y :=
--   match y with
--    | z => by rw[add_z_right]; rfl
--    | s y => 
--     by 
--       simp[mirror_add]; 
--       rw [Eq.symm (s_add_eq_add_s x y)];
--       apply congr;
--       simp;
--       apply add_eq_mirror_add

inductive myEq {α : Sort u} : α → α → Sort (u+1) where
  | myRfl : myEq a a

open myEq

theorem one_myEq_one : myEq one one := myRfl


theorem myEql_symm {α : Sort u} {a b : α} : myEq a b → myEq b a := 
  fun aEqB => match aEqB with
   | myRfl => myRfl

theorem myEql_trans {α : Sort u} {a b c : α} : myEq a b → myEq b c → myEq a c :=
  fun aEqB bEqC => match aEqB, bEqC with
    | myRfl, myRfl => myRfl

theorem myEql_cong {α : Sort u} {β : Sort v} {a b : α} {f : α → β} : myEq a b → myEq (f a) (f b) :=
  fun aEqB => match aEqB with
   | myRfl => myRfl