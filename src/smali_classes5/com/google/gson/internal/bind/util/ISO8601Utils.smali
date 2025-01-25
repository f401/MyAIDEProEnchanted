.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    .line 288
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

    .line 45
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 11

    const v7, 0xea60

    const/16 v6, 0x3a

    const/16 v2, 0x2d

    .line 68
    new-instance v3, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, p2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    invoke-virtual {v3, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string v0, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 73
    if-eqz p1, :cond_ec

    const-string v0, ".sss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 74
    :goto_1f
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-nez v1, :cond_ef

    const-string v1, "Z"

    :goto_27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "yyyy"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "MM"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "dd"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v0, 0x54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "hh"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_b2

    .line 89
    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "sss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_b2
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 94
    if-eqz v0, :cond_f6

    .line 95
    div-int v1, v0, v7

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 96
    div-int v3, v0, v7

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 97
    if-gez v0, :cond_f3

    move v0, v2

    :goto_cf
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, "hh"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v5, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "mm"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v5, v3, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 105
    :goto_e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_ec
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 74
    :cond_ef
    const-string v1, "+hh:mm"

    goto/16 :goto_27

    .line 97
    :cond_f3
    const/16 v0, 0x2b

    goto :goto_cf

    .line 102
    :cond_f6
    const/16 v0, 0x5a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e7
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    const/16 v1, 0x30

    if-lt v0, v1, :cond_12

    const/16 v1, 0x39

    if-le v0, v1, :cond_13

    .line 349
    :cond_12
    :goto_12
    return p1

    .line 345
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 349
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_12
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    :goto_a
    if-lez v0, :cond_14

    .line 336
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 338
    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 129
    add-int/lit8 v0, v1, 0x4

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 130
    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 135
    :cond_14
    add-int/lit8 v1, v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 136
    const/16 v0, 0x2d

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 137
    add-int/lit8 v0, v1, 0x1

    .line 141
    :goto_24
    add-int/lit8 v6, v0, 0x2

    invoke-static {p0, v0, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 143
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v2, 0x0

    .line 149
    const/16 v3, 0x54

    invoke-static {p0, v6, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_33} :catch_216
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_33} :catch_232
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_33} :catch_234

    move-result v3

    .line 151
    if-nez v3, :cond_a0

    :try_start_36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_a0

    .line 152
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v1, v8, -0x1

    invoke-direct {v0, v7, v1, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_49} :catch_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_49} :catch_236
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_49} :catch_238

    move-result-object v0

    .line 259
    :goto_4a
    return-object v0

    .line 262
    :catch_4b
    move-exception v0

    move-object v2, v0

    .line 263
    :goto_4d
    if-nez p0, :cond_21a

    const/4 v0, 0x0

    .line 270
    :goto_50
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 272
    :cond_5c
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

    .line 274
    :cond_7a
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

    .line 275
    invoke-virtual {v0, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v0

    .line 158
    :cond_a0
    if-eqz v3, :cond_240

    .line 161
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v0, v1, 0x2

    :try_start_a6
    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 162
    const/16 v1, 0x3a

    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_b4
    add-int/lit8 v1, v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 167
    const/16 v0, 0x3a

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 168
    add-int/lit8 v0, v1, 0x1

    .line 167
    :goto_c4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_23a

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 173
    const/16 v6, 0x5a

    if-eq v1, v6, :cond_23a

    const/16 v6, 0x2b

    if-eq v1, v6, :cond_23a

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_23a

    .line 174
    add-int/lit8 v6, v0, 0x2

    invoke-static {p0, v0, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v1

    .line 175
    const/16 v0, 0x3b

    if-le v1, v0, :cond_ea

    const/16 v0, 0x3f

    if-ge v1, v0, :cond_ea

    const/16 v1, 0x3b

    .line 177
    :cond_ea
    const/16 v0, 0x2e

    invoke-static {p0, v6, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 178
    add-int/lit8 v2, v6, 0x1

    .line 179
    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v6

    .line 180
    add-int/lit8 v0, v2, 0x3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 181
    invoke-static {p0, v2, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I
    :try_end_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a6 .. :try_end_103} :catch_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_103} :catch_236
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_103} :catch_238

    move-result v0

    .line 183
    sub-int v2, v5, v2

    packed-switch v2, :pswitch_data_248

    :goto_109
    move v2, v0

    move v5, v1

    .line 200
    :goto_10b
    :try_start_10b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_20a

    .line 204
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_114
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10b .. :try_end_114} :catch_216
    .catch Ljava/lang/NumberFormatException; {:try_start_10b .. :try_end_114} :catch_232
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10b .. :try_end_114} :catch_234

    move-result v0

    .line 207
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_159

    .line 208
    :try_start_119
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;
    :try_end_11b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_119 .. :try_end_11b} :catch_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_11b} :catch_236
    .catch Ljava/lang/IllegalArgumentException; {:try_start_119 .. :try_end_11b} :catch_238

    .line 209
    add-int/lit8 v1, v6, 0x1

    .line 244
    :cond_11d
    :goto_11d
    :try_start_11d
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v0, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/4 v0, 0x2

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v0, 0xb

    invoke-virtual {v6, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v0, 0xe

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_4a

    .line 185
    :pswitch_151  #0x2
    mul-int/lit8 v0, v0, 0xa

    .line 186
    goto :goto_109

    .line 188
    :pswitch_154  #0x1
    mul-int/lit8 v0, v0, 0x64

    goto :goto_109

    :cond_157
    move v5, v1

    .line 177
    goto :goto_10b

    .line 210
    :cond_159
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_161

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_184

    :cond_161
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x5

    if-lt v1, v10, :cond_1a4

    .line 216
    :goto_16c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    .line 218
    const-string v6, "+0000"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_181

    const-string v6, "+00:00"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b6

    :cond_181
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;
    :try_end_183
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11d .. :try_end_183} :catch_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_11d .. :try_end_183} :catch_206
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_183} :catch_212

    goto :goto_11d

    .line 245
    :cond_184
    :try_start_184
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_184 .. :try_end_18b} :catch_216
    .catch Ljava/lang/NumberFormatException; {:try_start_184 .. :try_end_18b} :catch_232
    .catch Ljava/lang/IllegalArgumentException; {:try_start_184 .. :try_end_18b} :catch_234

    :try_start_18b
    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :catch_1a0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_4d

    .line 214
    :cond_1a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16c

    .line 225
    :cond_1b6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11d

    .line 237
    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 238
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11d

    .line 239
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatching time zone indicator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " given, resolves to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :catch_206
    move-exception v0

    :goto_207
    move-object v2, v0

    .line 265
    goto/16 :goto_4d

    .line 201
    :cond_20a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No time zone indicator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_212
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18b .. :try_end_212} :catch_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_18b .. :try_end_212} :catch_206
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18b .. :try_end_212} :catch_212

    .line 266
    :catch_212
    move-exception v0

    :goto_213
    move-object v2, v0

    .line 267
    goto/16 :goto_4d

    .line 262
    :catch_216
    move-exception v0

    move-object v2, v0

    goto/16 :goto_4d

    .line 263
    :cond_21a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 264
    :catch_232
    move-exception v0

    goto :goto_207

    .line 266
    :catch_234
    move-exception v0

    goto :goto_213

    .line 264
    :catch_236
    move-exception v0

    goto :goto_207

    .line 266
    :catch_238
    move-exception v0

    goto :goto_213

    :cond_23a
    move v6, v0

    goto/16 :goto_10b

    :cond_23d
    move v0, v1

    goto/16 :goto_c4

    :cond_240
    move v3, v0

    move v4, v1

    goto/16 :goto_10b

    :cond_244
    move v0, v1

    goto/16 :goto_24

    .line 183
    nop

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_154  #00000001
        :pswitch_151  #00000002
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v3, 0xa

    .line 301
    if-ltz p1, :cond_66

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_66

    if-gt p1, p2, :cond_66

    .line 306
    const/4 v0, 0x0

    .line 308
    if-ge p1, p2, :cond_6c

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    if-ltz v0, :cond_2e

    .line 313
    neg-int v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 315
    :goto_1c
    if-ge v1, p2, :cond_64

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 317
    if-ltz v2, :cond_49

    .line 320
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 311
    :cond_2e
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

    .line 318
    :cond_49
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

    .line 323
    :cond_64
    neg-int v0, v0

    return v0

    .line 302
    :cond_66
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    move v1, p1

    goto :goto_1c
.end method
