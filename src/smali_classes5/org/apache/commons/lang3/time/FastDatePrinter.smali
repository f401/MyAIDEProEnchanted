.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;
    }
.end annotation


# static fields
.field private static final EMPTY_RULE_ARRAY:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field private static final MAX_DIGITS:I = 0xa

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->EMPTY_RULE_ARRAY:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 1307
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 157
    invoke-static {p3}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 160
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Appendable;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Appendable;II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V

    return-void
.end method

.method private static appendDigits(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 686
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 687
    return-void
.end method

.method private static appendFullDigits(Ljava/lang/Appendable;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x64

    const/16 v2, 0xa

    const/16 v3, 0x30

    .line 700
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_55

    .line 703
    const/4 v0, 0x4

    .line 704
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_16

    .line 705
    const/4 v0, 0x3

    .line 706
    if-ge p1, v4, :cond_16

    .line 707
    const/4 v0, 0x2

    .line 708
    if-ge p1, v2, :cond_16

    .line 709
    const/4 v0, 0x1

    .line 714
    :cond_16
    sub-int v1, p2, v0

    :goto_18
    if-lez v1, :cond_20

    .line 715
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 714
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 718
    :cond_20
    packed-switch v0, :pswitch_data_78

    .line 761
    :cond_23
    :goto_23
    return-void

    .line 720
    :pswitch_24  #0x4
    div-int/lit16 v0, p1, 0x3e8

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 721
    rem-int/lit16 p1, p1, 0x3e8

    .line 723
    :pswitch_2e  #0x3
    if-lt p1, v4, :cond_4d

    .line 724
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 725
    rem-int/lit8 p1, p1, 0x64

    .line 730
    :goto_3a
    :pswitch_3a  #0x2
    if-lt p1, v2, :cond_51

    .line 731
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 732
    rem-int/lit8 p1, p1, 0xa

    .line 737
    :goto_46
    :pswitch_46  #0x1
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_23

    .line 727
    :cond_4d
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3a

    .line 734
    :cond_51
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_46

    .line 743
    :cond_55
    new-array v1, v2, [C

    .line 744
    const/4 v0, 0x0

    .line 745
    :goto_58
    if-eqz p1, :cond_66

    .line 746
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 747
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 751
    :cond_66
    :goto_66
    if-ge v0, p2, :cond_6e

    .line 752
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 753
    add-int/lit8 p2, p2, -0x1

    goto :goto_66

    .line 757
    :cond_6e
    :goto_6e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    .line 758
    aget-char v2, v1, v0

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6e

    .line 718
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_3a  #00000002
        :pswitch_2e  #00000003
        :pswitch_24  #00000004
    .end packed-switch
.end method

.method private applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 576
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v2, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_e

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 577
    :try_start_8
    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_e

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 579
    :catch_e
    move-exception v0

    .line 580
    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 582
    :cond_12
    return-object p2
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 8

    .line 1319
    new-instance v2, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1320
    sget-object v3, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1321
    if-nez v0, :cond_1b

    .line 1323
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1325
    if-eqz v0, :cond_1c

    .line 1329
    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, v1

    goto :goto_1b
.end method

.method private init()V
    .registers 4

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 167
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->EMPTY_RULE_ARRAY:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 169
    const/4 v1, 0x0

    .line 170
    array-length v0, v0

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1e

    .line 171
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    .line 174
    :cond_1e
    iput v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    .line 175
    return-void
.end method

.method private newCalendar()Ljava/util/Calendar;
    .registers 3

    .line 467
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 674
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 675
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 676
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 634
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    if-nez v1, :cond_6

    .line 638
    :cond_5
    :goto_5
    return v0

    .line 637
    :cond_6
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 638
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 640
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 523
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 524
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 544
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 545
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 547
    :goto_17
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    :cond_1c
    move-object v0, p1

    goto :goto_17
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 534
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(J)Ljava/lang/String;
    .registers 4

    .line 448
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 431
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 432
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_a
    return-object v0

    .line 433
    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_16

    .line 434
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 435
    :cond_16
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 436
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 438
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_40

    const-string v0, "<null>"

    .line 439
    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 475
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 476
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 477
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5

    .line 493
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 494
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 412
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 416
    :goto_a
    return-object v0

    .line 413
    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_16

    .line 414
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    .line 415
    :cond_16
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 416
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    .line 418
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_40

    const-string v0, "<null>"

    .line 419
    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4

    .line 514
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 505
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 608
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .registers 2

    .line 621
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 592
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 600
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 650
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/text/DateFormatSymbols;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 196
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 197
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 199
    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v9, :cond_42

    .line 200
    const/4 v3, 0x0

    aput v0, v10, v3

    .line 201
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {p0, v0, v10}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 202
    const/4 v3, 0x0

    aget v11, v10, v3

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 205
    if-nez v3, :cond_43

    .line 317
    :cond_42
    return-object v4

    .line 210
    :cond_43
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 212
    sparse-switch v12, :sswitch_data_17c

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal pattern component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :sswitch_62
    const/4 v0, 0x4

    if-lt v3, v0, :cond_75

    .line 288
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v13, 0x1

    invoke-direct {v0, v3, v12, v13}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 309
    :cond_6f
    :goto_6f
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v11, 0x1

    goto :goto_2e

    .line 290
    :cond_75
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v13, 0x0

    invoke-direct {v0, v3, v12, v13}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto :goto_6f

    .line 269
    :sswitch_80
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_6f

    .line 260
    :sswitch_86
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;

    const/4 v12, 0x7

    invoke-virtual {p0, v12, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_6f

    .line 251
    :sswitch_91
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_6f

    .line 248
    :sswitch_98
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_6f

    .line 278
    :sswitch_9f
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v12, 0xb

    invoke-virtual {p0, v12, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_6f

    .line 242
    :sswitch_ab
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v12, 0xa

    invoke-virtual {p0, v12, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_6f

    .line 239
    :sswitch_b7
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_6f

    .line 275
    :sswitch_bd
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v3, 0x9

    invoke-direct {v0, v3, v8}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_6f

    .line 294
    :sswitch_c5
    const/4 v0, 0x1

    if-ne v3, v0, :cond_cb

    .line 295
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_6f

    .line 296
    :cond_cb
    const/4 v0, 0x2

    if-ne v3, v0, :cond_d1

    .line 297
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto :goto_6f

    .line 299
    :cond_d1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_6f

    .line 218
    :sswitch_d4
    const/4 v0, 0x2

    if-ne v3, v0, :cond_e6

    .line 219
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    .line 223
    :goto_d9
    const/16 v3, 0x59

    if-ne v12, v3, :cond_6f

    .line 224
    new-instance v3, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;

    check-cast v0, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    move-object v0, v3

    goto :goto_6f

    .line 221
    :cond_e6
    const/4 v0, 0x1

    const/4 v13, 0x4

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_d9

    .line 284
    :sswitch_f1
    invoke-static {v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    move-result-object v0

    goto/16 :goto_6f

    .line 272
    :sswitch_f7
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 254
    :sswitch_fe
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 228
    :sswitch_106
    const/4 v0, 0x4

    if-lt v3, v0, :cond_111

    .line 229
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 230
    :cond_111
    const/4 v0, 0x3

    if-ne v3, v0, :cond_11c

    .line 231
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 232
    :cond_11c
    const/4 v0, 0x2

    if-ne v3, v0, :cond_123

    .line 233
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    goto/16 :goto_6f

    .line 235
    :cond_123
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    goto/16 :goto_6f

    .line 281
    :sswitch_127
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 245
    :sswitch_12f
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 214
    :sswitch_137
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 266
    :sswitch_13f
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 257
    :sswitch_147
    const/4 v0, 0x4

    if-ge v3, v0, :cond_154

    move-object v0, v1

    :goto_14b
    new-instance v3, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v12, 0x7

    invoke-direct {v3, v12, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v0, v3

    .line 258
    goto/16 :goto_6f

    :cond_154
    move-object v0, v2

    .line 257
    goto :goto_14b

    .line 263
    :sswitch_156
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_6f

    .line 303
    :sswitch_15d
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_175

    .line 305
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    goto/16 :goto_6f

    .line 307
    :cond_175
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 212
    :sswitch_data_17c
    .sparse-switch
        0x27 -> :sswitch_15d
        0x44 -> :sswitch_156
        0x45 -> :sswitch_147
        0x46 -> :sswitch_13f
        0x47 -> :sswitch_137
        0x48 -> :sswitch_12f
        0x4b -> :sswitch_127
        0x4d -> :sswitch_106
        0x53 -> :sswitch_fe
        0x57 -> :sswitch_f7
        0x58 -> :sswitch_f1
        0x59 -> :sswitch_d4
        0x5a -> :sswitch_c5
        0x61 -> :sswitch_bd
        0x64 -> :sswitch_b7
        0x68 -> :sswitch_ab
        0x6b -> :sswitch_9f
        0x6d -> :sswitch_98
        0x73 -> :sswitch_91
        0x75 -> :sswitch_86
        0x77 -> :sswitch_80
        0x79 -> :sswitch_d4
        0x7a -> :sswitch_62
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 14

    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    aget v2, p2, v1

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 333
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 334
    if-lt v0, v8, :cond_1c

    if-le v0, v9, :cond_22

    :cond_1c
    if-lt v0, v10, :cond_37

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_37

    .line 337
    :cond_22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    :goto_25
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_6b

    .line 340
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 341
    if-ne v5, v0, :cond_6b

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    add-int/lit8 v2, v2, 0x1

    .line 347
    goto :goto_25

    .line 350
    :cond_37
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 354
    :goto_3b
    if-ge v2, v4, :cond_6b

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 357
    if-ne v5, v7, :cond_5d

    .line 358
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_57

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_57

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 363
    :cond_57
    if-nez v0, :cond_5b

    const/4 v0, 0x1

    goto :goto_54

    :cond_5b
    move v0, v1

    goto :goto_54

    .line 365
    :cond_5d
    if-nez v0, :cond_72

    if-lt v5, v8, :cond_63

    if-le v5, v9, :cond_69

    :cond_63
    if-lt v5, v10, :cond_72

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_72

    .line 367
    :cond_69
    add-int/lit8 v2, v2, -0x1

    .line 375
    :cond_6b
    aput v2, p2, v1

    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 370
    :cond_72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .registers 4

    .line 387
    packed-switch p2, :pswitch_data_16

    .line 393
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    :goto_8
    return-object v0

    .line 391
    :pswitch_9  #0x2
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    goto :goto_8

    .line 389
    :pswitch_f  #0x1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    goto :goto_8

    .line 387
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_9  #00000002
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
