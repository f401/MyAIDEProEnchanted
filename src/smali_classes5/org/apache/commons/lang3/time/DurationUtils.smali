.class public Lorg/apache/commons/lang3/time/DurationUtils;
.super Ljava/lang/Object;
.source "DurationUtils.java"


# static fields
.field static final LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DurationUtils;->LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/Range;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/time/Duration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/time/Duration;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 54
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/time/DurationUtils;->getNanosOfMiili(Ljava/time/Duration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :cond_17
    return-void
.end method

.method public static getNanosOfMiili(Ljava/time/Duration;)I
    .registers 3

    .line 72
    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v0

    const v1, 0xf4240

    rem-int/2addr v0, v1

    return v0
.end method

.method public static isPositive(Ljava/time/Duration;)Z
    .registers 2

    .line 82
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;
    .registers 3

    .line 93
    sget-object v1, Lorg/apache/commons/lang3/time/DurationUtils$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_30

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_1b  #0x7
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    :goto_1d
    return-object v0

    .line 105
    :pswitch_1e  #0x6
    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 103
    :pswitch_21  #0x5
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 101
    :pswitch_24  #0x4
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 99
    :pswitch_27  #0x3
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 97
    :pswitch_2a  #0x2
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 95
    :pswitch_2d  #0x1
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    goto :goto_1d

    .line 93
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_2a  #00000002
        :pswitch_27  #00000003
        :pswitch_24  #00000004
        :pswitch_21  #00000005
        :pswitch_1e  #00000006
        :pswitch_1b  #00000007
    .end packed-switch
.end method

.method public static toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;
    .registers 5

    .line 121
    invoke-static {p2}, Lorg/apache/commons/lang3/time/DurationUtils;->toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static toMillisInt(Ljava/time/Duration;)I
    .registers 5

    .line 140
    const-string v0, "duration"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/apache/commons/lang3/time/DurationUtils;->LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/Range;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/Range;->fit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 2

    .line 152
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    return-object v0
.end method
