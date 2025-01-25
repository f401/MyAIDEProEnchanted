.class public Lorg/apache/commons/lang3/time/FastTimeZone;
.super Ljava/lang/Object;
.source "FastTimeZone.java"


# static fields
.field private static final GMT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GREENWICH:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 30
    const-string v0, "^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    new-instance v0, Lorg/apache/commons/lang3/time/GmtTimeZone;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getGmtTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 39
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 6

    .line 50
    const-string v0, "Z"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 51
    :cond_10
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    .line 63
    :goto_12
    return-object v0

    .line 54
    :cond_13
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 56
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 58
    if-nez v2, :cond_38

    if-nez v3, :cond_38

    .line 59
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    goto :goto_12

    .line 61
    :cond_38
    new-instance v0, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseSign(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    goto :goto_12

    .line 63
    :cond_47
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 2

    .line 76
    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_7

    .line 80
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_6
.end method

.method private static parseInt(Ljava/lang/String;)I
    .registers 2

    .line 84
    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static parseSign(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method
