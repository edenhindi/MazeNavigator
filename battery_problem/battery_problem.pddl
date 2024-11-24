
    (define (problem task)
    (:domain maze-navigation)
    (:objects
        robot1 - robot
    )
    (:init
        (at robot1 p1)

        (has-station p2)
	(has-station p3)
	(has-station p4)
	(has-station p5)
	(has-station p6)
	(has-station p7)
	(has-station p8)
	(has-station p9)
	(has-station p10)

        (= (battery-level robot1) 100.0)

    )
    (:goal (and
        (at robot1 p10)
        (>=  (battery-level robot1) 30)
    ))
    )
    