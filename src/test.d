import util.mmio, util.delay;

/**
 * Proof-of concept. Just as fast/space compact as in C
 */
extern(C) void main()
{
    DDRB.pin1 = Direction.out_;
    DDRB |= (0b1 << DDRB.shiftPin1) | ( 0b1 << DDRB.shiftPin2);
    DDRB = 0b1;
    PORTB.pin1 = Level.low;

    while(true)
    {
        delayMS!(1_000);
        PORTB.toggle!"Pin1";
    }
}


/+
    PortB.pin0 = Level.low;
    if(PortB.pin1 == Level.high)
    {
        PortB.pin2 = Level.high;
    }

    //PortB.set("pin1", Level.low,
    //          "pin2", Level.high,
    //          "pin3", Level.low);
    //PortB |= 0b1001011;
    PortB.opOpAssign!"|"(0b1001011);
    //PortB |= (1 << PortB.shiftPin1 | 1 << PortB.shiftPin2);
    PortB.opOpAssign!"|"(1 << PortB.shiftPin1 | 1 << PortB.shiftPin2);

    auto val = PortB.load();
    //val.pin1 = Level.low;
    val |= 0b1;
    PortB.store(val);
+/
