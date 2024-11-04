(define (domain maze-navigation)
        (:requirements :strips :typing :fluents :durative-actions)
        (:types
            robot position - object
        )

        (:constants
            p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - position
        )
        (:predicates
            (at ?r - robot ?p - position)
            (has-station ?p - position)
        )

        
        (:functions
            (battery-level ?r - robot) 
        )
        
        (:durative-action move-p2-p3
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p2-p4
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p2-p5
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p2-p6
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p2-p7
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p2-p8
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p2-p9
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p3-p2
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p3-p4
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p3-p5
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p3-p6
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p3-p7
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p3-p8
            :parameters (?r - robot)
            :duration (= ?duration 27)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 54))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 54))
            ))

            
(:durative-action move-p3-p9
            :parameters (?r - robot)
            :duration (= ?duration 59)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 118))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 118))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p4-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p4-p3
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p4-p5
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p4-p6
            :parameters (?r - robot)
            :duration (= ?duration 27)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 54))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 54))
            ))

            
(:durative-action move-p4-p7
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p4-p8
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p4-p9
            :parameters (?r - robot)
            :duration (= ?duration 63)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 127))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 127))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p5-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p5-p3
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p5-p4
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p5-p6
            :parameters (?r - robot)
            :duration (= ?duration 9)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 18))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 18))
            ))

            
(:durative-action move-p5-p7
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p5-p8
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p5-p9
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p6-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p6-p3
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p6-p4
            :parameters (?r - robot)
            :duration (= ?duration 27)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 54))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 54))
            ))

            
(:durative-action move-p6-p5
            :parameters (?r - robot)
            :duration (= ?duration 9)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 18))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 18))
            ))

            
(:durative-action move-p6-p7
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p6-p8
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p6-p9
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p7-p2
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p7-p3
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p7-p4
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p7-p5
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p7-p6
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p7-p8
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p7-p9
            :parameters (?r - robot)
            :duration (= ?duration 54)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 109))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 109))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 100))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 100))
            ))

            
(:durative-action move-p8-p2
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p8-p3
            :parameters (?r - robot)
            :duration (= ?duration 27)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 54))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 54))
            ))

            
(:durative-action move-p8-p4
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p8-p5
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p8-p6
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p8-p7
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p8-p9
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p9-p2
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p9-p3
            :parameters (?r - robot)
            :duration (= ?duration 59)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 118))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 118))
            ))

            
(:durative-action move-p9-p4
            :parameters (?r - robot)
            :duration (= ?duration 63)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 127))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 127))
            ))

            
(:durative-action move-p9-p5
            :parameters (?r - robot)
            :duration (= ?duration 45)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 90))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 90))
            ))

            
(:durative-action move-p9-p6
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p9-p7
            :parameters (?r - robot)
            :duration (= ?duration 54)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 109))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 109))
            ))

            
(:durative-action move-p9-p8
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 63))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 63))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p10-p2
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p10-p3
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p10-p4
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p10-p5
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p10-p6
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p10-p7
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 100))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 100))
            ))

            
(:durative-action move-p10-p8
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p10-p9
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p1-p2
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p1-p3
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p1-p4
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p1-p5
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p1-p6
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p1-p7
            :parameters (?r - robot)
            :duration (= ?duration 4)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 9))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 9))
            ))

            
(:durative-action move-p1-p8
            :parameters (?r - robot)
            :duration (= ?duration 27)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 54))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 54))
            ))

            
(:durative-action move-p1-p9
            :parameters (?r - robot)
            :duration (= ?duration 59)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 118))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 118))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 72))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 72))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 40)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 13)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 27))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 27))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 100))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 100))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 18)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 22)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 45))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 45))
            ))

            
(:durative-action move-p10-p10
            :parameters (?r - robot)
            :duration (= ?duration 0)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 0))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 0))
            ))

            

        (:durative-action charge
            :parameters (?r - robot ?p - position)
            :duration (= ?duration 0.1)
            :condition (and (at start (at ?r ?p))
            (at start (has-station ?p))
            ) 
            :effect 
                (at end  (increase (battery-level ?r) 0.5) )
        )
        
    )

    