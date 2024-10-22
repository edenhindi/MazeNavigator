
(define (problem task)
(:domain maze-navigation)
(:objects
    robot1 - robot
)
(:init
    (at robot1 p1)

    (has-station p2)
    (has-station p3) 

    (= (battery-level robot1) 100)

)
(:goal (and
    (at robot1 p4)
    (>=  (battery-level robot1) 30)
))
)
