.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DateUtils$DateIterator;,
        Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    new-array v0, v6, [I

    fill-array-data v0, :array_48

    const/16 v1, 0x8

    new-array v1, v1, [[I

    new-array v2, v5, [I

    const/16 v3, 0xe

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const/16 v3, 0xd

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v5, [I

    const/16 v3, 0xc

    aput v3, v2, v4

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    const/4 v0, 0x4

    new-array v2, v7, [I

    fill-array-data v2, :array_50

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_5a

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v5, [I

    aput v5, v2, v4

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v5, [I

    aput v4, v2, v4

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_48
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_50
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 4

    .line 515
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 518
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 519
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 444
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 458
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 500
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 472
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 416
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 486
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 430
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 402
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4

    .line 915
    if-eqz p0, :cond_e

    .line 918
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 919
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 920
    return-object v0

    .line 916
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    .line 941
    if-eqz p0, :cond_37

    .line 944
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 945
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 947
    :goto_c
    return-object v0

    .line 946
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 947
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    .line 949
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find ceiling of for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_37
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4

    .line 891
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 892
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 893
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 894
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 895
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .registers 8

    const-wide/16 v0, 0x0

    .line 1669
    if-eqz p0, :cond_86

    .line 1675
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v2, :cond_2b

    const/4 v2, 0x0

    .line 1678
    :goto_9
    packed-switch p1, :pswitch_data_8c

    .line 1681
    :goto_c
    packed-switch p1, :pswitch_data_94

    .line 1709
    :pswitch_f  #0x3, 0x4, 0x7, 0x8, 0x9, 0xa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1675
    :cond_2b
    const/4 v2, 0x1

    goto :goto_9

    .line 1683
    :pswitch_2d  #0x2
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, v3, v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1684
    goto :goto_c

    .line 1680
    :pswitch_3d  #0x1
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, v3, v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_c

    .line 1697
    :pswitch_4d  #0x1, 0x2, 0x5, 0x6
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1700
    :pswitch_5b  #0xb
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1703
    :pswitch_69  #0xc
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1706
    :pswitch_77  #0xd
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1707
    :pswitch_85  #0xe
    return-wide v0

    .line 1670
    :cond_86
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1678
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_2d  #00000002
    .end packed-switch

    .line 1681
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_4d  #00000002
        :pswitch_f  #00000003
        :pswitch_f  #00000004
        :pswitch_4d  #00000005
        :pswitch_4d  #00000006
        :pswitch_f  #00000007
        :pswitch_f  #00000008
        :pswitch_f  #00000009
        :pswitch_f  #0000000a
        :pswitch_5b  #0000000b
        :pswitch_69  #0000000c
        :pswitch_77  #0000000d
        :pswitch_85  #0000000e
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1651
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1652
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1654
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 4

    .line 1636
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 4

    .line 1445
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 4

    .line 1596
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 4

    .line 1407
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 4

    .line 1483
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 4

    .line 1293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 4

    .line 1558
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 4

    .line 1369
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 4

    .line 1520
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 4

    .line 1331
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    .line 194
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 195
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 196
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 194
    :goto_25
    return v0

    .line 192
    :cond_26
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2b
    move v0, v1

    goto :goto_25
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4

    .line 167
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0

    .line 168
    :cond_17
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    .line 230
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    .line 233
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19

    .line 231
    :cond_1c
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6

    .line 212
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 215
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 213
    :cond_14
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 9

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    if-eqz p0, :cond_66

    if-eqz p1, :cond_66

    .line 253
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 254
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 255
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 256
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 257
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 258
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 259
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_64

    .line 253
    :goto_63
    return v0

    :cond_64
    move v0, v1

    .line 260
    goto :goto_63

    .line 251
    :cond_66
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .line 1249
    if-eqz p0, :cond_2f

    .line 1252
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 1253
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    .line 1255
    :goto_c
    return-object v0

    .line 1254
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_18

    .line 1255
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    .line 1257
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not iterate based on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1250
    :cond_2f
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v2, 0x2

    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 1159
    if-eqz p0, :cond_92

    .line 1166
    packed-switch p1, :pswitch_data_a2

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The range style "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not valid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :pswitch_26  #0x5, 0x6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v6

    .line 1172
    invoke-virtual {v6}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1173
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1174
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1176
    const/4 v1, 0x6

    if-ne p1, v1, :cond_9d

    move-object v3, v0

    move v1, v4

    .line 1211
    :goto_3b
    if-ge v2, v4, :cond_9b

    .line 1212
    add-int/lit8 v0, v2, 0x7

    .line 1214
    :goto_3f
    if-le v0, v5, :cond_99

    .line 1215
    add-int/lit8 v0, v0, -0x7

    move v2, v0

    .line 1217
    :goto_44
    if-ge v1, v4, :cond_97

    .line 1218
    add-int/lit8 v0, v1, 0x7

    .line 1220
    :goto_48
    if-le v0, v5, :cond_4c

    .line 1221
    add-int/lit8 v0, v0, -0x7

    .line 1223
    :cond_4c
    :goto_4c
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_82

    .line 1224
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4c

    .line 1186
    :pswitch_56  #0x1, 0x2, 0x3, 0x4
    invoke-static {p0, v7}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v6

    .line 1187
    invoke-static {p0, v7}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1188
    packed-switch p1, :pswitch_data_b2

    move-object v3, v0

    move v1, v5

    move v2, v4

    .line 1205
    goto :goto_3b

    .line 1201
    :pswitch_65  #0x4
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x3

    .line 1202
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    move-object v3, v0

    .line 1203
    goto :goto_3b

    .line 1197
    :pswitch_73  #0x3
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1198
    add-int/lit8 v1, v2, -0x1

    move-object v3, v0

    .line 1199
    goto :goto_3b

    :pswitch_7b  #0x2
    move-object v3, v0

    move v1, v4

    .line 1195
    goto :goto_3b

    :pswitch_7e  #0x1
    move-object v3, v0

    move v1, v5

    move v2, v4

    .line 1191
    goto :goto_3b

    .line 1226
    :cond_82
    :goto_82
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v0, :cond_8c

    .line 1227
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_82

    .line 1229
    :cond_8c
    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0

    .line 1160
    :cond_92
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_97
    move v0, v1

    goto :goto_48

    :cond_99
    move v2, v0

    goto :goto_44

    :cond_9b
    move v0, v2

    goto :goto_3f

    :cond_9d
    move-object v3, v0

    move v1, v5

    move v2, v4

    goto :goto_3b

    .line 1166
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_56  #00000002
        :pswitch_56  #00000003
        :pswitch_56  #00000004
        :pswitch_26  #00000005
        :pswitch_26  #00000006
    .end packed-switch

    .line 1188
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7e  #00000001
        :pswitch_7b  #00000002
        :pswitch_73  #00000003
        :pswitch_65  #00000004
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 1128
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1130
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1131
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V
    .registers 16

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 963
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v3, 0x10b07600

    if-gt v0, v3, :cond_148

    .line 967
    const/16 v0, 0xe

    if-ne p1, v0, :cond_15

    .line 1046
    :cond_14
    :goto_14
    return-void

    .line 977
    :cond_15
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 978
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 982
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 983
    sget-object v6, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v6, p2, :cond_2b

    const/16 v6, 0x1f4

    if-ge v0, v6, :cond_2d

    .line 984
    :cond_2b
    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 986
    :cond_2d
    const/16 v0, 0xd

    if-ne p1, v0, :cond_154

    move v0, v1

    .line 991
    :goto_32
    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 992
    if-nez v0, :cond_47

    sget-object v7, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v7, p2, :cond_42

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_47

    .line 993
    :cond_42
    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 995
    :cond_47
    if-ne p1, v12, :cond_4a

    move v0, v1

    .line 1000
    :cond_4a
    invoke-virtual {p0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1001
    if-nez v0, :cond_5e

    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v0, p2, :cond_58

    const/16 v0, 0x1e

    if-ge v6, v0, :cond_5e

    .line 1002
    :cond_58
    int-to-long v6, v6

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 1006
    :cond_5e
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_6c

    .line 1007
    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 1008
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1013
    :cond_6c
    sget-object v6, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    array-length v7, v6

    move v5, v2

    move v0, v2

    :goto_71
    if-ge v5, v7, :cond_12c

    aget-object v8, v6, v5

    .line 1014
    array-length v4, v8

    move v3, v2

    :goto_77
    if-ge v3, v4, :cond_c6

    aget v9, v8, v3

    .line 1015
    if-ne v9, p1, :cond_c3

    .line 1017
    sget-object v3, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq p2, v3, :cond_87

    sget-object v3, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-ne p2, v3, :cond_14

    if-eqz v0, :cond_14

    .line 1018
    :cond_87
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_a3

    .line 1022
    invoke-virtual {p0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_98

    .line 1023
    const/16 v0, 0xf

    invoke-virtual {p0, v10, v0}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_14

    .line 1025
    :cond_98
    const/16 v0, -0xf

    invoke-virtual {p0, v10, v0}, Ljava/util/Calendar;->add(II)V

    .line 1026
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_14

    .line 1029
    :cond_a3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_bc

    .line 1033
    invoke-virtual {p0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_b2

    .line 1034
    invoke-virtual {p0, v11, v12}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_14

    .line 1036
    :cond_b2
    const/16 v0, -0xc

    invoke-virtual {p0, v11, v0}, Ljava/util/Calendar;->add(II)V

    .line 1037
    invoke-virtual {p0, v10, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_14

    .line 1043
    :cond_bc
    aget v0, v8, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_14

    .line 1014
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 1053
    :cond_c6
    sparse-switch p1, :sswitch_data_158

    move v4, v2

    move v3, v2

    .line 1071
    :goto_cb
    if-nez v4, :cond_e7

    .line 1086
    aget v0, v8, v2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    .line 1087
    aget v3, v8, v2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 1089
    aget v3, v8, v2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1091
    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_12a

    move v0, v1

    .line 1094
    :cond_e7
    :goto_e7
    if-eqz v3, :cond_f6

    .line 1095
    aget v4, v8, v2

    aget v8, v8, v2

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int v3, v8, v3

    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1094
    :cond_f6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_71

    .line 1055
    :sswitch_fb
    aget v3, v8, v2

    if-ne v3, v10, :cond_113

    .line 1059
    invoke-virtual {p0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 1062
    const/16 v0, 0xf

    if-lt v3, v0, :cond_10b

    .line 1063
    add-int/lit8 v3, v3, -0xf

    .line 1062
    :cond_10b
    const/4 v0, 0x7

    if-le v3, v0, :cond_111

    move v0, v1

    :goto_10f
    move v4, v1

    .line 1067
    goto :goto_cb

    :cond_111
    move v0, v2

    .line 1062
    goto :goto_10f

    :cond_113
    move v4, v2

    move v3, v2

    .line 1055
    goto :goto_cb

    .line 1071
    :sswitch_116
    aget v3, v8, v2

    if-ne v3, v11, :cond_150

    .line 1074
    invoke-virtual {p0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1075
    if-lt v3, v12, :cond_122

    .line 1076
    add-int/lit8 v3, v3, -0xc

    .line 1075
    :cond_122
    const/4 v0, 0x6

    if-lt v3, v0, :cond_128

    move v0, v1

    :goto_126
    move v4, v1

    .line 1079
    goto :goto_cb

    :cond_128
    move v0, v2

    .line 1075
    goto :goto_126

    :cond_12a
    move v0, v2

    .line 1091
    goto :goto_e7

    .line 1098
    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 964
    :cond_148
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Calendar value too large for accurate calculations"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_150
    move v4, v2

    move v3, v2

    goto/16 :goto_cb

    :cond_154
    move v0, v2

    goto/16 :goto_32

    .line 1053
    nop

    :sswitch_data_158
    .sparse-switch
        0x9 -> :sswitch_116
        0x3e9 -> :sswitch_fb
    .end sparse-switch
.end method

.method private static nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 366
    if-eqz p0, :cond_5b

    if-eqz p2, :cond_5b

    .line 370
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 371
    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 372
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 373
    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 374
    invoke-virtual {v5, p3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 376
    array-length v6, p2

    move v0, v1

    :goto_1b
    if-ge v0, v6, :cond_43

    aget-object v7, p2, v0

    .line 377
    new-instance v8, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v8, v7, v2, v3}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 378
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 380
    :try_start_27
    invoke-virtual {v8, p0, v4, v5}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_3d

    .line 381
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_3a} :catch_3c

    move-result-object v0

    return-object v0

    .line 383
    :catch_3c
    move-exception v7

    .line 386
    :cond_3d
    invoke-virtual {v4, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 388
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse the date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 367
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date and Patterns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4

    .line 743
    if-eqz p0, :cond_e

    .line 746
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 747
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 748
    return-object v0

    .line 744
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    .line 784
    if-eqz p0, :cond_33

    .line 787
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 788
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 790
    :goto_c
    return-object v0

    .line 789
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 790
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    .line 792
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not round "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_33
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4

    .line 708
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 710
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 711
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 712
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5

    .line 642
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 646
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 647
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 648
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 564
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 580
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 625
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 595
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 549
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 610
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 534
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2

    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 662
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 663
    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 3

    .line 675
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 677
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4

    .line 836
    if-eqz p0, :cond_e

    .line 839
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 840
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 841
    return-object v0

    .line 837
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    .line 861
    if-eqz p0, :cond_33

    .line 864
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 865
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 867
    :goto_c
    return-object v0

    .line 866
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 867
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    .line 869
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not truncate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_33
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4

    .line 813
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 814
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 816
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 817
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .registers 5

    .line 1763
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1764
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1765
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .registers 5

    .line 1783
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1784
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1785
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .registers 4

    .line 1728
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .registers 4

    .line 1745
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static validateDateNotNull(Ljava/util/Date;)V
    .registers 3

    .line 1789
    const-string v0, "date"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    return-void
.end method
