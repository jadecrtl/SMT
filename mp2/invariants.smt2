(declare-fun Invar (Int Int) Bool)

(assert (forall ((i Int) (v Int)) ( => (and (Invar i v) (< i 3)) (Invar (+ i 1) (+ v 3)))))

(assert (Invar 0 0))

(assert (forall ((i Int) (v Int)) ( => (and (Invar i v) (>= i 3)) (= v 9))))

(check-sat-using (then qe smt))
(get-model)
(exit)