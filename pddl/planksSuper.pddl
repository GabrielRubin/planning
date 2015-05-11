; --------------------
; Domain file
; --------------------

(define (domain planks)
  (:requirements :strips)

  (:predicates

    (AGENT ?x)

    (PLANK ?x)

    (SUPER_PLANK ?x)

    (ISLAND ?x)

    (Carry ?agent ?plank)

    (Free ?agent)

    (Connected ?island1 ?island2)

    (Adjacent ?island1 ?island2)

    (OnIsland ?object ?island)

    (IslandFree ?island)
  )

  (:action cross
    :parameters (?agent ?plank ?island1 ?island2)
    :precondition
      (and
        (AGENT ?agent) (PLANK ?plank) (ISLAND ?island1) (ISLAND ?island2)

        (OnIsland ?agent ?island1)

        (IslandFree ?island2)

        (OnIsland ?plank ?island1)
        (OnIsland ?plank ?island2)

        (Connected ?island1 ?island2)
        (Connected ?island2 ?island1)
      )
    :effect
      (and
        (not (OnIsland ?agent ?island1))
        (OnIsland ?agent ?island2)

        (IslandFree ?island1)
        (not (IslandFree ?island2) )
      )
  )

  (:action pick
    :parameters (?agent ?plank ?island1 ?island2)
    :precondition
      (and
        (AGENT ?agent) (PLANK ?plank) (ISLAND ?island1) (ISLAND ?island2)

        (OnIsland ?agent ?island1)

        (OnIsland ?plank ?island1)
        (OnIsland ?plank ?island2)

        (Free ?agent)

        (Connected ?island1 ?island2)
        (Connected ?island2 ?island1)
      )
    :effect
      (and
        (not (Connected ?island1 ?island2) )
        (not (Connected ?island2 ?island1) )

        (not (OnIsland ?plank ?island1))
        (not (OnIsland ?plank ?island2))

        (not (Free ?agent))

        (Carry ?agent ?plank)
      )
  )

  (:action lay
    :parameters (?agent ?plank ?island1 ?island2)
    :precondition
      (and
        (AGENT ?agent) (PLANK ?plank) (ISLAND ?island1) (ISLAND ?island2)

        (OnIsland ?agent ?island1)

        (not (Connected ?island1 ?island2) )
        (not (Connected ?island2 ?island1) )

        (Adjacent ?island1 ?island2)
        (Adjacent ?island2 ?island1)

        (Carry ?agent ?plank)
      )
    :effect
      (and
        (Connected ?island1 ?island2)
        (Connected ?island2 ?island1)

        (OnIsland ?plank ?island1)
        (OnIsland ?plank ?island2)

        (Free ?agent)

        (not (Carry ?agent ?plank))
      )
  )

  (:action pick
    :parameters (?agent ?plank ?island1 ?island2)
    :precondition
      (and
        (AGENT ?agent) (PLANK ?plank) (ISLAND ?island1) (ISLAND ?island2)

        (OnIsland ?agent ?island1)

        (OnIsland ?plank ?island1)
        (OnIsland ?plank ?island2)

        (Free ?agent)

        (Connected ?island1 ?island2)
        (Connected ?island2 ?island1)
      )
    :effect
      (and
        (not (Connected ?island1 ?island2) )
        (not (Connected ?island2 ?island1) )

        (not (OnIsland ?plank ?island1))
        (not (OnIsland ?plank ?island2))

        (not (Free ?agent))

        (Carry ?agent ?plank)
      )
  )

)