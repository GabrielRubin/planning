; --------------------
; Domain file
; --------------------

(define (domain planks)
  (:requirements :strips)

  (:predicates

    (AGENT ?x)

    (PLANK ?x)

    (ISLAND ?x)

    (Carry ?a ?p)

    (Free ?a)

    (Connected ?p ?i1 ?i2)

    (OnIsland ?a ?i)

    (IslandFree ?i)

  )

  (:action cross
    :parameters (?a ?p ?i1 ?i2)
    :precondition
      (and
        (OnIsland ?a ?i1)

        (IslandFree ?i2)

        (Connected ?p ?i1 ?i2)
      )
    :effect
      (and
        (not (OnIsland ?a ?i1))

        (IslandFree ?i1)

        (not (IslandFree ?i1) )

        (OnIsland ?a ?i2)
      )
  )

  (:action pick
    :parameters (?a ?p ?i1 ?i2)
    :precondition
      (and
        (or (OnIsland ?a ?i1) (OnIsland ?a ?i2) )

        (Free ?a)

        (Connected ?p ?i1 ?i2)
      )
    :effect
      (and
        (not (Connected ?p ?i1 ?i2))

        (not (Free ?a))

        (Carry ?a ?p)
      )
  )

  (:action lay
    :parameters (?a ?p ?i1 ?i2)
    :precondition
      (and
        (or (OnIsland ?a ?i1) (OnIsland ?a ?i2) )

        (Carry ?a ?p)
      )
    :effect
      (and
        (Connected ?p ?i1 ?i2)

        (Free ?a)

        (not (Carry ?a ?p))
      )
  )

)