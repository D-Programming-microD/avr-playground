import util.mmio, util.delay;

/**
 * Proof-of concept. Just as fast/space compact as in C
 */
extern(C) void main()
{
    DDRB.pin1 = Direction.out_;
    PORTB.pin1 = Level.low;

    while(true)
    {
        delayMS!(1_000);
        PORTB.toggle!"Pin1";
    }
}