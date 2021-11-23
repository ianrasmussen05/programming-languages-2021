theory Nats
  imports Main
begin

datatype nat = z | s nat
print_theorems


definition "one = s z"
definition "two = s one"

fun add :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
 "add z y = y"
|"add (s x) y = s (add x y)"

lemma "add one one = two"
  unfolding one_def two_def

  apply (subst add.simps(2))
  apply (subst add.simps(1))
  by simp

lemma "add x y = add y x"
proof (induct x)
case z
  show ?case
    apply simp
  proof (induct y)
    case z
    then show ?case by simp
  next
    case (s y)
    then show ?case by simp
  qed
next
  case (s x)
  have "add (s x) y = s (add x y)" by simp
  also have "\<dots> = s (add y x)" using s by simp
  also have "\<dots> = add y (s x)" by (induct y, simp_all)
  finally show ?case .
qed

end