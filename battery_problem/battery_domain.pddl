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
            :duration (= ?duration 191)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 220))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 220))
            ))

            
(:durative-action move-p2-p4
            :parameters (?r - robot)
            :duration (= ?duration 214)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 247))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 247))
            ))

            
(:durative-action move-p2-p5
            :parameters (?r - robot)
            :duration (= ?duration 153)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 176))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 176))
            ))

            
(:durative-action move-p2-p6
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 212))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 212))
            ))

            
(:durative-action move-p2-p7
            :parameters (?r - robot)
            :duration (= ?duration 73)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 84))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 84))
            ))

            
(:durative-action move-p2-p8
            :parameters (?r - robot)
            :duration (= ?duration 107)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 123))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 123))
            ))

            
(:durative-action move-p2-p9
            :parameters (?r - robot)
            :duration (= ?duration 102)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 117))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 117))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 174)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 201))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 201))
            ))

            
(:durative-action move-p3-p2
            :parameters (?r - robot)
            :duration (= ?duration 191)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 220))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 220))
            ))

            
(:durative-action move-p3-p4
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p3-p5
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 48))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 48))
            ))

            
(:durative-action move-p3-p6
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 58))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 58))
            ))

            
(:durative-action move-p3-p7
            :parameters (?r - robot)
            :duration (= ?duration 158)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 182))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 182))
            ))

            
(:durative-action move-p3-p8
            :parameters (?r - robot)
            :duration (= ?duration 235)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 271))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 271))
            ))

            
(:durative-action move-p3-p9
            :parameters (?r - robot)
            :duration (= ?duration 126)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 145))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 145))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 71)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 82))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 82))
            ))

            
(:durative-action move-p4-p2
            :parameters (?r - robot)
            :duration (= ?duration 214)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 246))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 246))
            ))

            
(:durative-action move-p4-p3
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p4-p5
            :parameters (?r - robot)
            :duration (= ?duration 28)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 33))
            ))

            
(:durative-action move-p4-p6
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 49))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 49))
            ))

            
(:durative-action move-p4-p7
            :parameters (?r - robot)
            :duration (= ?duration 181)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 208))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 208))
            ))

            
(:durative-action move-p4-p8
            :parameters (?r - robot)
            :duration (= ?duration 235)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 271))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 271))
            ))

            
(:durative-action move-p4-p9
            :parameters (?r - robot)
            :duration (= ?duration 126)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 145))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 145))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 64)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 74))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 74))
            ))

            
(:durative-action move-p5-p2
            :parameters (?r - robot)
            :duration (= ?duration 197)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 227))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 227))
            ))

            
(:durative-action move-p5-p3
            :parameters (?r - robot)
            :duration (= ?duration 42)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 48))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 48))
            ))

            
(:durative-action move-p5-p4
            :parameters (?r - robot)
            :duration (= ?duration 29)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 33))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 33))
            ))

            
(:durative-action move-p5-p6
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 17))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 17))
            ))

            
(:durative-action move-p5-p7
            :parameters (?r - robot)
            :duration (= ?duration 195)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 225))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 225))
            ))

            
(:durative-action move-p5-p8
            :parameters (?r - robot)
            :duration (= ?duration 207)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 238))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 238))
            ))

            
(:durative-action move-p5-p9
            :parameters (?r - robot)
            :duration (= ?duration 98)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 113))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 113))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p6-p2
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 212))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 212))
            ))

            
(:durative-action move-p6-p3
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 58))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 58))
            ))

            
(:durative-action move-p6-p4
            :parameters (?r - robot)
            :duration (= ?duration 43)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 49))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 49))
            ))

            
(:durative-action move-p6-p5
            :parameters (?r - robot)
            :duration (= ?duration 14)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 17))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 17))
            ))

            
(:durative-action move-p6-p7
            :parameters (?r - robot)
            :duration (= ?duration 206)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 237))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 237))
            ))

            
(:durative-action move-p6-p8
            :parameters (?r - robot)
            :duration (= ?duration 194)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 223))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 223))
            ))

            
(:durative-action move-p6-p9
            :parameters (?r - robot)
            :duration (= ?duration 71)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 82))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 82))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 23)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 26))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 26))
            ))

            
(:durative-action move-p7-p2
            :parameters (?r - robot)
            :duration (= ?duration 73)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 84))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 84))
            ))

            
(:durative-action move-p7-p3
            :parameters (?r - robot)
            :duration (= ?duration 158)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 182))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 182))
            ))

            
(:durative-action move-p7-p4
            :parameters (?r - robot)
            :duration (= ?duration 181)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 208))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 208))
            ))

            
(:durative-action move-p7-p5
            :parameters (?r - robot)
            :duration (= ?duration 195)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 225))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 225))
            ))

            
(:durative-action move-p7-p6
            :parameters (?r - robot)
            :duration (= ?duration 174)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 200))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 200))
            ))

            
(:durative-action move-p7-p8
            :parameters (?r - robot)
            :duration (= ?duration 145)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 166))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 166))
            ))

            
(:durative-action move-p7-p9
            :parameters (?r - robot)
            :duration (= ?duration 139)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 160))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 160))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 212)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 244))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 244))
            ))

            
(:durative-action move-p8-p2
            :parameters (?r - robot)
            :duration (= ?duration 107)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 123))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 123))
            ))

            
(:durative-action move-p8-p3
            :parameters (?r - robot)
            :duration (= ?duration 236)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 271))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 271))
            ))

            
(:durative-action move-p8-p4
            :parameters (?r - robot)
            :duration (= ?duration 235)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 270))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 270))
            ))

            
(:durative-action move-p8-p5
            :parameters (?r - robot)
            :duration (= ?duration 207)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 238))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 238))
            ))

            
(:durative-action move-p8-p6
            :parameters (?r - robot)
            :duration (= ?duration 194)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 223))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 223))
            ))

            
(:durative-action move-p8-p7
            :parameters (?r - robot)
            :duration (= ?duration 145)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 167))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 167))
            ))

            
(:durative-action move-p8-p9
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 128))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 128))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 211))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 211))
            ))

            
(:durative-action move-p9-p2
            :parameters (?r - robot)
            :duration (= ?duration 102)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 117))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 117))
            ))

            
(:durative-action move-p9-p3
            :parameters (?r - robot)
            :duration (= ?duration 127)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 146))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 146))
            ))

            
(:durative-action move-p9-p4
            :parameters (?r - robot)
            :duration (= ?duration 126)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 145))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 145))
            ))

            
(:durative-action move-p9-p5
            :parameters (?r - robot)
            :duration (= ?duration 98)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 113))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 113))
            ))

            
(:durative-action move-p9-p6
            :parameters (?r - robot)
            :duration (= ?duration 85)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 98))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 98))
            ))

            
(:durative-action move-p9-p7
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 161))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 161))
            ))

            
(:durative-action move-p9-p8
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 128))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 128))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 75)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 87))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 87))
            ))

            
(:durative-action move-p10-p2
            :parameters (?r - robot)
            :duration (= ?duration 174)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 200))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 200))
            ))

            
(:durative-action move-p10-p3
            :parameters (?r - robot)
            :duration (= ?duration 71)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 82))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 82))
            ))

            
(:durative-action move-p10-p4
            :parameters (?r - robot)
            :duration (= ?duration 64)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 74))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 74))
            ))

            
(:durative-action move-p10-p5
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p10-p6
            :parameters (?r - robot)
            :duration (= ?duration 23)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 26))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 26))
            ))

            
(:durative-action move-p10-p7
            :parameters (?r - robot)
            :duration (= ?duration 212)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 244))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 244))
            ))

            
(:durative-action move-p10-p8
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 211))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 211))
            ))

            
(:durative-action move-p10-p9
            :parameters (?r - robot)
            :duration (= ?duration 75)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 86))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 86))
            ))

            
(:durative-action move-p1-p2
            :parameters (?r - robot)
            :duration (= ?duration 130)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 150))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 150))
            ))

            
(:durative-action move-p1-p3
            :parameters (?r - robot)
            :duration (= ?duration 95)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 109))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 109))
            ))

            
(:durative-action move-p1-p4
            :parameters (?r - robot)
            :duration (= ?duration 95)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 109))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 109))
            ))

            
(:durative-action move-p1-p5
            :parameters (?r - robot)
            :duration (= ?duration 67)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 77))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 77))
            ))

            
(:durative-action move-p1-p6
            :parameters (?r - robot)
            :duration (= ?duration 53)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 61))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 61))
            ))

            
(:durative-action move-p1-p7
            :parameters (?r - robot)
            :duration (= ?duration 168)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 194))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 194))
            ))

            
(:durative-action move-p1-p8
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 162))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 162))
            ))

            
(:durative-action move-p1-p9
            :parameters (?r - robot)
            :duration (= ?duration 31)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 36))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 36))
            ))

            
(:durative-action move-p1-p10
            :parameters (?r - robot)
            :duration (= ?duration 44)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 50))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 50))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 174)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 201))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 201))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 71)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 82))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 82))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 64)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 74))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 74))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 36)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 42))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 42))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 23)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 26))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 26))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 212)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 244))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 244))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 212))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 212))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 75)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 87))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 87))
            ))

            

        (:durative-action charge
            :parameters (?r - robot ?p - position)
            :duration (= ?duration 1)
            :condition (and (at start (at ?r ?p))
            (at start (has-station ?p))
            ) 
            :effect 
                (at end  (increase (battery-level ?r) 5) )
        )
        
    )

    