TestCase subclass: TripleTest [
    | a b |

    setUp [
        a := Triple newWithX: 1 y: 2 z: 3.
        b := Triple newWithX: 4 y: 5 z: 6.
    ]

    TestAdd [
        | c |
        c := a + b.
        self assert: (c x) = 5.
        self assert: (c y) = 7.
        self assert: (c z) = 9.
    ]

    TestMultiply [
        | c |
        c := a * b.
        self assert: (c x) = 4.
        self assert: (c y) = 10.
        self assert: (c z) = 18.
    ]

    TestSubtract [
        | c |
        c := a - b.
        self assert: (c x) = -3.
        self assert: (c y) = -3.
        self assert: (c z) = -3.
    ]

    TestDivide [
        | c |
        c := a / b.
        self assert: (c x) = (1/4).
        self assert: (c y) = (2/5).
        self assert: (c z) = (1/2).
    ]
]
