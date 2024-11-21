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
            :duration (= ?duration 216)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 216))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 216))
            ))

            
(:durative-action move-p2-p4
            :parameters (?r - robot)
            :duration (= ?duration 268)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 268))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 268))
            ))

            
(:durative-action move-p2-p5
            :parameters (?r - robot)
            :duration (= ?duration 233)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 233))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 233))
            ))

            
(:durative-action move-p2-p6
            :parameters (?r - robot)
            :duration (= ?duration 216)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 216))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 216))
            ))

            
(:durative-action move-p2-p7
            :parameters (?r - robot)
            :duration (= ?duration 98)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 98))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 98))
            ))

            
(:durative-action move-p2-p8
            :parameters (?r - robot)
            :duration (= ?duration 178)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 178))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 178))
            ))

            
(:durative-action move-p2-p9
            :parameters (?r - robot)
            :duration (= ?duration 50)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 50))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 50))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 200)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 200))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 200))
            ))

            
(:durative-action move-p3-p2
            :parameters (?r - robot)
            :duration (= ?duration 225)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 225))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 225))
            ))

            
(:durative-action move-p3-p4
            :parameters (?r - robot)
            :duration (= ?duration 102)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 102))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 102))
            ))

            
(:durative-action move-p3-p5
            :parameters (?r - robot)
            :duration (= ?duration 77)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 77))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 77))
            ))

            
(:durative-action move-p3-p6
            :parameters (?r - robot)
            :duration (= ?duration 74)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 74))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 74))
            ))

            
(:durative-action move-p3-p7
            :parameters (?r - robot)
            :duration (= ?duration 141)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 141))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 141))
            ))

            
(:durative-action move-p3-p8
            :parameters (?r - robot)
            :duration (= ?duration 61)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 61))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 61))
            ))

            
(:durative-action move-p3-p9
            :parameters (?r - robot)
            :duration (= ?duration 240)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 240))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 240))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 81)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p4-p2
            :parameters (?r - robot)
            :duration (= ?duration 255)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 255))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 255))
            ))

            
(:durative-action move-p4-p3
            :parameters (?r - robot)
            :duration (= ?duration 89)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 89))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 89))
            ))

            
(:durative-action move-p4-p5
            :parameters (?r - robot)
            :duration (= ?duration 92)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 92))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 92))
            ))

            
(:durative-action move-p4-p6
            :parameters (?r - robot)
            :duration (= ?duration 89)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 89))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 89))
            ))

            
(:durative-action move-p4-p7
            :parameters (?r - robot)
            :duration (= ?duration 170)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 170))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 170))
            ))

            
(:durative-action move-p4-p8
            :parameters (?r - robot)
            :duration (= ?duration 91)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 91))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 91))
            ))

            
(:durative-action move-p4-p9
            :parameters (?r - robot)
            :duration (= ?duration 271)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 271))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 271))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 97)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 97))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 97))
            ))

            
(:durative-action move-p5-p2
            :parameters (?r - robot)
            :duration (= ?duration 272)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 272))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 272))
            ))

            
(:durative-action move-p5-p3
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 112))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 112))
            ))

            
(:durative-action move-p5-p4
            :parameters (?r - robot)
            :duration (= ?duration 140)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 140))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 140))
            ))

            
(:durative-action move-p5-p6
            :parameters (?r - robot)
            :duration (= ?duration 112)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 112))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 112))
            ))

            
(:durative-action move-p5-p7
            :parameters (?r - robot)
            :duration (= ?duration 188)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 188))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 188))
            ))

            
(:durative-action move-p5-p8
            :parameters (?r - robot)
            :duration (= ?duration 108)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 108))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 108))
            ))

            
(:durative-action move-p5-p9
            :parameters (?r - robot)
            :duration (= ?duration 236)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 236))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 236))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 120)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 120))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 120))
            ))

            
(:durative-action move-p6-p2
            :parameters (?r - robot)
            :duration (= ?duration 258)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 258))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 258))
            ))

            
(:durative-action move-p6-p3
            :parameters (?r - robot)
            :duration (= ?duration 127)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 127))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 127))
            ))

            
(:durative-action move-p6-p4
            :parameters (?r - robot)
            :duration (= ?duration 155)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 155))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 155))
            ))

            
(:durative-action move-p6-p5
            :parameters (?r - robot)
            :duration (= ?duration 131)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 131))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 131))
            ))

            
(:durative-action move-p6-p7
            :parameters (?r - robot)
            :duration (= ?duration 201)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 201))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 201))
            ))

            
(:durative-action move-p6-p8
            :parameters (?r - robot)
            :duration (= ?duration 121)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 121))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 121))
            ))

            
(:durative-action move-p6-p9
            :parameters (?r - robot)
            :duration (= ?duration 219)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 219))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 219))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 135)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 135))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 135))
            ))

            
(:durative-action move-p7-p2
            :parameters (?r - robot)
            :duration (= ?duration 83)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 83))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 83))
            ))

            
(:durative-action move-p7-p3
            :parameters (?r - robot)
            :duration (= ?duration 176)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 176))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 176))
            ))

            
(:durative-action move-p7-p4
            :parameters (?r - robot)
            :duration (= ?duration 228)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 228))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 228))
            ))

            
(:durative-action move-p7-p5
            :parameters (?r - robot)
            :duration (= ?duration 193)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 193))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 193))
            ))

            
(:durative-action move-p7-p6
            :parameters (?r - robot)
            :duration (= ?duration 176)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 176))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 176))
            ))

            
(:durative-action move-p7-p8
            :parameters (?r - robot)
            :duration (= ?duration 138)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 138))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 138))
            ))

            
(:durative-action move-p7-p9
            :parameters (?r - robot)
            :duration (= ?duration 98)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 98))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 98))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 160)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 160))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 160))
            ))

            
(:durative-action move-p8-p2
            :parameters (?r - robot)
            :duration (= ?duration 127)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 127))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 127))
            ))

            
(:durative-action move-p8-p3
            :parameters (?r - robot)
            :duration (= ?duration 307)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 307))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 307))
            ))

            
(:durative-action move-p8-p4
            :parameters (?r - robot)
            :duration (= ?duration 360)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 360))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 360))
            ))

            
(:durative-action move-p8-p5
            :parameters (?r - robot)
            :duration (= ?duration 325)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 325))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 325))
            ))

            
(:durative-action move-p8-p6
            :parameters (?r - robot)
            :duration (= ?duration 307)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 307))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 307))
            ))

            
(:durative-action move-p8-p7
            :parameters (?r - robot)
            :duration (= ?duration 189)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 189))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 189))
            ))

            
(:durative-action move-p8-p9
            :parameters (?r - robot)
            :duration (= ?duration 87)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 87))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 87))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 292)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 292))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 292))
            ))

            
(:durative-action move-p9-p2
            :parameters (?r - robot)
            :duration (= ?duration 118)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 118))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 118))
            ))

            
(:durative-action move-p9-p3
            :parameters (?r - robot)
            :duration (= ?duration 265)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 265))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 265))
            ))

            
(:durative-action move-p9-p4
            :parameters (?r - robot)
            :duration (= ?duration 293)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 293))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 293))
            ))

            
(:durative-action move-p9-p5
            :parameters (?r - robot)
            :duration (= ?duration 268)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 268))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 268))
            ))

            
(:durative-action move-p9-p6
            :parameters (?r - robot)
            :duration (= ?duration 265)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 265))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 265))
            ))

            
(:durative-action move-p9-p7
            :parameters (?r - robot)
            :duration (= ?duration 181)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 181))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 181))
            ))

            
(:durative-action move-p9-p8
            :parameters (?r - robot)
            :duration (= ?duration 257)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 257))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 257))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 274)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 274))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 274))
            ))

            
(:durative-action move-p10-p2
            :parameters (?r - robot)
            :duration (= ?duration 248)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 248))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 248))
            ))

            
(:durative-action move-p10-p3
            :parameters (?r - robot)
            :duration (= ?duration 155)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 155))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 155))
            ))

            
(:durative-action move-p10-p4
            :parameters (?r - robot)
            :duration (= ?duration 183)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 183))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 183))
            ))

            
(:durative-action move-p10-p5
            :parameters (?r - robot)
            :duration (= ?duration 158)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 158))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 158))
            ))

            
(:durative-action move-p10-p6
            :parameters (?r - robot)
            :duration (= ?duration 155)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 155))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 155))
            ))

            
(:durative-action move-p10-p7
            :parameters (?r - robot)
            :duration (= ?duration 228)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 228))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 228))
            ))

            
(:durative-action move-p10-p8
            :parameters (?r - robot)
            :duration (= ?duration 148)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 148))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 148))
            ))

            
(:durative-action move-p10-p9
            :parameters (?r - robot)
            :duration (= ?duration 208)  
            :condition (and 
            (at start (at ?r p10))
            (at start (>= (battery-level ?r) 208))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p10)))
                (at end (decrease (battery-level ?r) 208))
            ))

            
(:durative-action move-p1-p2
            :parameters (?r - robot)
            :duration (= ?duration 200)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 200))
            )
            :effect (and
                (at end (at ?r p2))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 200))
            ))

            
(:durative-action move-p1-p3
            :parameters (?r - robot)
            :duration (= ?duration 186)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 186))
            )
            :effect (and
                (at end (at ?r p3))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 186))
            ))

            
(:durative-action move-p1-p4
            :parameters (?r - robot)
            :duration (= ?duration 209)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 209))
            )
            :effect (and
                (at end (at ?r p4))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 209))
            ))

            
(:durative-action move-p1-p5
            :parameters (?r - robot)
            :duration (= ?duration 184)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 184))
            )
            :effect (and
                (at end (at ?r p5))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 184))
            ))

            
(:durative-action move-p1-p6
            :parameters (?r - robot)
            :duration (= ?duration 186)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 186))
            )
            :effect (and
                (at end (at ?r p6))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 186))
            ))

            
(:durative-action move-p1-p7
            :parameters (?r - robot)
            :duration (= ?duration 253)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 253))
            )
            :effect (and
                (at end (at ?r p7))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 253))
            ))

            
(:durative-action move-p1-p8
            :parameters (?r - robot)
            :duration (= ?duration 254)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 254))
            )
            :effect (and
                (at end (at ?r p8))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 254))
            ))

            
(:durative-action move-p1-p9
            :parameters (?r - robot)
            :duration (= ?duration 160)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 160))
            )
            :effect (and
                (at end (at ?r p9))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 160))
            ))

            
(:durative-action move-p1-p10
            :parameters (?r - robot)
            :duration (= ?duration 195)  
            :condition (and 
            (at start (at ?r p1))
            (at start (>= (battery-level ?r) 195))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p1)))
                (at end (decrease (battery-level ?r) 195))
            ))

            
(:durative-action move-p2-p10
            :parameters (?r - robot)
            :duration (= ?duration 200)  
            :condition (and 
            (at start (at ?r p2))
            (at start (>= (battery-level ?r) 200))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p2)))
                (at end (decrease (battery-level ?r) 200))
            ))

            
(:durative-action move-p3-p10
            :parameters (?r - robot)
            :duration (= ?duration 81)  
            :condition (and 
            (at start (at ?r p3))
            (at start (>= (battery-level ?r) 81))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p3)))
                (at end (decrease (battery-level ?r) 81))
            ))

            
(:durative-action move-p4-p10
            :parameters (?r - robot)
            :duration (= ?duration 97)  
            :condition (and 
            (at start (at ?r p4))
            (at start (>= (battery-level ?r) 97))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p4)))
                (at end (decrease (battery-level ?r) 97))
            ))

            
(:durative-action move-p5-p10
            :parameters (?r - robot)
            :duration (= ?duration 120)  
            :condition (and 
            (at start (at ?r p5))
            (at start (>= (battery-level ?r) 120))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p5)))
                (at end (decrease (battery-level ?r) 120))
            ))

            
(:durative-action move-p6-p10
            :parameters (?r - robot)
            :duration (= ?duration 135)  
            :condition (and 
            (at start (at ?r p6))
            (at start (>= (battery-level ?r) 135))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p6)))
                (at end (decrease (battery-level ?r) 135))
            ))

            
(:durative-action move-p7-p10
            :parameters (?r - robot)
            :duration (= ?duration 160)  
            :condition (and 
            (at start (at ?r p7))
            (at start (>= (battery-level ?r) 160))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p7)))
                (at end (decrease (battery-level ?r) 160))
            ))

            
(:durative-action move-p8-p10
            :parameters (?r - robot)
            :duration (= ?duration 292)  
            :condition (and 
            (at start (at ?r p8))
            (at start (>= (battery-level ?r) 292))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p8)))
                (at end (decrease (battery-level ?r) 292))
            ))

            
(:durative-action move-p9-p10
            :parameters (?r - robot)
            :duration (= ?duration 273)  
            :condition (and 
            (at start (at ?r p9))
            (at start (>= (battery-level ?r) 273))
            )
            :effect (and
                (at end (at ?r p10))
                (at start (not (at ?r p9)))
                (at end (decrease (battery-level ?r) 273))
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

    