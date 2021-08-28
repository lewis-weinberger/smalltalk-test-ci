Object subclass: Triple [
    | x y z |

    Triple class >> newWithX: anX y: aY z: aZ [
        ^self new
            setX: anX;
            setY: aY;
            setZ: aZ
    ]

    setX: anX [
        x := anX
    ]

    setY: aY [
        y := aY
    ]

    setZ: aZ [
        z := aZ
    ]

    x [
        ^x
    ]

    y [
        ^y
    ]

    z [
        ^z
    ]

    + aTriple [
        aTriple class ~= Triple ifTrue: [
            ^self error:
                (aTriple displayString) , ' is not a Triple'
        ].

        ^Triple new
            setX: x + (aTriple x);
            setY: y + (aTriple y);
            setZ: z + (aTriple z)
    ]

    * aTriple [
        aTriple class ~= Triple ifTrue: [
            ^self error:
                (aTriple displayString) , ' is not a Triple'
        ].

        ^Triple new
            setX: x * (aTriple x);
            setY: y * (aTriple y);
            setZ: z * (aTriple z)
    ]

    - aTriple [
        aTriple class ~= Triple ifTrue: [
            ^self error:
                (aTriple displayString) , ' is not a Triple'
        ].

        ^Triple new
            setX: x - (aTriple x);
            setY: y - (aTriple y);
            setZ: z - (aTriple z)
    ]

    / aTriple [
        aTriple class ~= Triple ifTrue: [
            ^self error:
                (aTriple displayString) , ' is not a Triple'
        ].

        ^Triple new
            setX: x / (aTriple x);
            setY: y / (aTriple y);
            setZ: z / (aTriple z)
    ]
]
