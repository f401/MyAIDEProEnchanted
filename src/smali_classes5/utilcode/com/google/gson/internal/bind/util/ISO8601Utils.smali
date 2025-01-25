.class public Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    sget-object v0, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/16 v8, 0x3a

    const/16 v4, 0x2d

    const/4 v7, 0x2

    new-instance v5, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, p2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v5, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_a7

    move v0, v1

    :goto_14
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_aa

    move v2, v3

    :goto_1b
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x13

    add-int/2addr v0, v2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6, v0, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6, v0, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v0, 0x54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6, v0, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6, v0, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6, v0, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_78

    const/16 v0, 0x2e

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v6, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :cond_78
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-eqz v0, :cond_b0

    const v1, 0xea60

    div-int v1, v0, v1

    div-int/lit8 v2, v1, 0x3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez v0, :cond_ad

    move v0, v4

    :goto_96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6, v2, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6, v1, v7}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :goto_a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a7
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_aa
    const/4 v2, 0x6

    goto/16 :goto_1b

    :cond_ad
    const/16 v0, 0x2b

    goto :goto_96

    :cond_b0
    const/16 v0, 0x5a

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_12

    const/16 v1, 0x39

    if-le v0, v1, :cond_13

    :cond_12
    :goto_12
    return p1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_12
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    :goto_a
    if-lez v0, :cond_14

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v13, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/16 v12, 0x2d

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x4

    invoke-static {p0, v1, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    add-int/lit8 v1, v0, 0x2

    invoke-static {p0, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    const/16 v0, 0x2d

    invoke-static {p0, v1, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_239

    add-int/lit8 v0, v1, 0x1

    :goto_2a
    add-int/lit8 v1, v0, 0x2

    invoke-static {p0, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    const/16 v0, 0x54

    invoke-static {p0, v1, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_4d

    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v10, -0x1

    invoke-direct {v0, v9, v2, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_4c
    return-object v0

    :cond_4d
    if-eqz v0, :cond_10e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x2

    invoke-static {p0, v1, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    const/16 v1, 0x3a

    invoke-static {p0, v0, v1}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v1

    if-eqz v1, :cond_61

    add-int/lit8 v0, v0, 0x1

    :cond_61
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v0, v2}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v1

    const/16 v0, 0x3a

    invoke-static {p0, v2, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_236

    add-int/lit8 v0, v2, 0x1

    :goto_71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_108

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x5a

    if-eq v2, v5, :cond_108

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_108

    if-eq v2, v12, :cond_108

    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v0, v2}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v0, 0x3b

    if-le v7, v0, :cond_95

    const/16 v0, 0x3f

    if-ge v7, v0, :cond_95

    const/16 v7, 0x3b

    :cond_95
    const/16 v0, 0x2e

    invoke-static {p0, v2, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_104

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v3, 0x3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v5}, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    sub-int v3, v5, v3

    if-eq v3, v6, :cond_101

    if-eq v3, v8, :cond_fe

    :goto_b5
    move v5, v2

    move v6, v0

    move v8, v1

    :goto_b8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_212

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_112

    sget-object v0, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    add-int/lit8 v1, v5, 0x1

    :cond_ca
    :goto_ca
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_4c

    :cond_fe
    mul-int/lit8 v0, v0, 0xa

    goto :goto_b5

    :cond_101
    mul-int/lit8 v0, v0, 0x64

    goto :goto_b5

    :cond_104
    move v5, v2

    move v6, v3

    move v8, v1

    goto :goto_b8

    :cond_108
    move v2, v1

    :goto_109
    move v5, v0

    move v6, v3

    move v7, v3

    move v8, v2

    goto :goto_b8

    :cond_10e
    move v0, v1

    move v2, v3

    move v4, v3

    goto :goto_109

    :cond_112
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_118

    if-ne v0, v12, :cond_13a

    :cond_118
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v13, :cond_1ab

    :goto_122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const-string v2, "+0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_137

    const-string v2, "+00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1be

    :cond_137
    sget-object v0, Lutilcode/com/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    goto :goto_ca

    :cond_13a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_156
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_156} :catch_156
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_156} :catch_20e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_156} :catch_21a

    :catch_156
    move-exception v0

    move-object v2, v0

    :goto_158
    if-nez p0, :cond_21e

    const/4 v0, 0x0

    :goto_15b
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_167

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_185

    :cond_167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse date ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_1ab
    :try_start_1ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_122

    :cond_1be
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    const-string v5, ":"

    const-string v12, ""

    invoke-virtual {v3, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatching time zone indicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " given, resolves to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_20e
    move-exception v0

    move-object v2, v0

    goto/16 :goto_158

    :cond_212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No time zone indicator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1ab .. :try_end_21a} :catch_156
    .catch Ljava/lang/NumberFormatException; {:try_start_1ab .. :try_end_21a} :catch_20e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ab .. :try_end_21a} :catch_21a

    :catch_21a
    move-exception v0

    move-object v2, v0

    goto/16 :goto_158

    :cond_21e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15b

    :cond_236
    move v0, v2

    goto/16 :goto_71

    :cond_239
    move v0, v1

    goto/16 :goto_2a
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v3, 0xa

    if-ltz p1, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_68

    if-gt p1, p2, :cond_68

    if-ge p1, p2, :cond_48

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_2d

    neg-int v0, v0

    :goto_1b
    if-ge v1, p2, :cond_66

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_4b

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    const/4 v0, 0x0

    move v1, p1

    goto :goto_1b

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_66
    neg-int v0, v0

    return v0

    :cond_68
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
