TestCase subclass: TripleTest [
    | a b |

    setUp [
        a := Triple newWithX: 1 y: 2 z: 3.
        b := Triple newWithX: 4 y: 5 z: 6.
    ]

    TestAdd [
        | c |
        c := a + b.
        self assert: (c x) equals: 5.
        self assert: (c y) equals: 7.
        self assert: (c z) equals: 9.
    ]

    TestMultiply [
        | c |
        c := a * b.
        self assert: (c x) equals: 4.
        self assert: (c y) equals: 10.
        self assert: (c z) equals: 18.
    ]

    TestSubtract [
        | c |
        c := a - b.
        self assert: (c x) equals: -3.
        self assert: (c y) equals: -3.
        self assert: (c z) equals: -3.
    ]

    TestDivide [
        | c |
        c := a / b.
        self assert: (c x) equals: (1/4).
        self assert: (c y) equals: (2/5).
        self assert: (c z) equals: (1/2).
    ]
]
