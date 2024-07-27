.class public final Lorg/apache/tools/ant/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_HEADER_FORMAT:Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

.field public static final EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO8601_DATETIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final ISO8601_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final ISO8601_TIME_PATTERN:Ljava/lang/String; = "HH:mm:ss"

.field private static final LIMITS:[D

.field private static final MINUTES_FORMAT:Ljava/text/ChoiceFormat;

.field private static final MINUTES_PART:[Ljava/lang/String;

.field private static final MINUTE_SECONDS:Ljava/text/MessageFormat;

.field private static final ONE_HOUR:I = 0x3c

.field private static final ONE_MINUTE:I = 0x3c

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SECONDS_FORMAT:Ljava/text/ChoiceFormat;

.field private static final SECONDS_PART:[Ljava/lang/String;

.field private static final TEN:I = 0xa

.field private static final iso8601WithTimeZone:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso8601normalizer:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT:Ljava/text/DateFormat;

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    .line 79
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0}{1}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->MINUTE_SECONDS:Ljava/text/MessageFormat;

    .line 82
    new-array v1, v4, [D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v1, v7

    sput-object v1, Lorg/apache/tools/ant/util/DateUtils;->LIMITS:[D

    .line 84
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "1 minute "

    aput-object v3, v2, v6

    const-string v3, "{0,number,###############} minutes "

    aput-object v3, v2, v7

    sput-object v2, Lorg/apache/tools/ant/util/DateUtils;->MINUTES_PART:[Ljava/lang/String;

    .line 86
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "0 seconds"

    aput-object v4, v3, v5

    const-string v4, "1 second"

    aput-object v4, v3, v6

    const-string v4, "{1,number} seconds"

    aput-object v4, v3, v7

    sput-object v3, Lorg/apache/tools/ant/util/DateUtils;->SECONDS_PART:[Ljava/lang/String;

    .line 88
    new-instance v4, Ljava/text/ChoiceFormat;

    invoke-direct {v4, v1, v2}, Ljava/text/ChoiceFormat;-><init>([D[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/tools/ant/util/DateUtils;->MINUTES_FORMAT:Ljava/text/ChoiceFormat;

    .line 91
    new-instance v2, Ljava/text/ChoiceFormat;

    invoke-direct {v2, v1, v3}, Ljava/text/ChoiceFormat;-><init>([D[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/tools/ant/util/DateUtils;->SECONDS_FORMAT:Ljava/text/ChoiceFormat;

    .line 100
    sget-object v1, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda0;

    .line 101
    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;

    .line 109
    sget-object v1, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda1;

    .line 110
    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;

    .line 113
    invoke-virtual {v0, v5, v4}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 114
    invoke-virtual {v0, v6, v2}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 321
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda2;

    .line 322
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601WithTimeZone:Ljava/lang/ThreadLocal;

    .line 326
    const-string v0, "^(\\d{4,}-\\d{2}-\\d{2})[Tt ](\\d{2}:\\d{2}(:\\d{2}(\\.\\d{3})?)?) ?(?:Z|([+-]\\d{2})(?::?(\\d{2}))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601normalizer:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private static createDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 3

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 173
    return-object v0
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2}, Lorg/apache/tools/ant/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-static {p1}, Lorg/apache/tools/ant/util/DateUtils;->createDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .registers 12

    const-wide/16 v8, 0x3c

    .line 158
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 159
    div-long v2, v0, v8

    .line 160
    sget-object v4, Lorg/apache/tools/ant/util/DateUtils;->MINUTE_SECONDS:Ljava/text/MessageFormat;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateForHeader()Ljava/lang/String;
    .registers 9

    const/16 v8, 0xa

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 230
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 232
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 233
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 234
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 235
    const/4 v5, 0x7

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 236
    const/16 v6, 0xe

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 231
    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v1

    .line 237
    if-gez v1, :cond_2

    const-string v0, "-"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 239
    const v1, 0x36ee80

    div-int v1, v0, v1

    .line 240
    const v3, 0xea60

    div-int/2addr v0, v3

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v0, v3

    .line 241
    if-ge v1, v8, :cond_0

    .line 242
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    if-ge v0, v8, :cond_1

    .line 246
    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    sget-object v1, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 250
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 237
    :cond_2
    const-string v0, "+"

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPhaseOfMoon(Ljava/util/Calendar;)I
    .registers 5

    .line 212
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    rem-int/lit8 v0, v0, 0x13

    add-int/lit8 v2, v0, 0x1

    .line 214
    mul-int/lit8 v0, v2, 0xb

    add-int/lit8 v0, v0, 0x12

    rem-int/lit8 v0, v0, 0x1e

    .line 215
    const/16 v3, 0x19

    if-ne v0, v3, :cond_0

    const/16 v3, 0xb

    if-gt v2, v3, :cond_1

    :cond_0
    const/16 v2, 0x18

    if-ne v0, v2, :cond_2

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 218
    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v0, v0, 0xb1

    div-int/lit8 v0, v0, 0x16

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static synthetic lambda$static$0()Ljava/text/DateFormat;
    .registers 3

    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/text/DateFormat;
    .registers 3

    .line 110
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm:ss a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$static$2()Ljava/text/DateFormat;
    .registers 2

    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseDateFromHeader(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 265
    sget-object v1, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 266
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseIso8601DateTimeOrDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 315
    :try_start_0
    invoke-static {p0}, Lorg/apache/tools/ant/util/DateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-static {p0}, Lorg/apache/tools/ant/util/DateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseLenientDateTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 349
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 354
    :try_start_1
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 359
    :try_start_2
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 360
    :catch_2
    move-exception v0

    .line 363
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601normalizer:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ".000 "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "+00"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "00"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601WithTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 371
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 365
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
