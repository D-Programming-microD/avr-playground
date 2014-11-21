module util.delay;

import gcc.builtins, gcc.attribute;

enum ulong F_CPU = 1_000_000UL;
/**
 * Should of course use Duration
 */
@attribute("inlineonly") void delayMS(double ms)()
{
    //truncate
    enum double tmp = ((F_CPU) / 1e3) * ms;
    enum uint ticks = cast(uint)tmp;
    
    __builtin_avr_delay_cycles(ticks);
}