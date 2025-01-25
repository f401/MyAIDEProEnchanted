.class public Lcom/sun/tools/javac/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x1

    .line 49
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    move-object v0, p0

    .line 50
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v1, :cond_31

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_25

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    .line 58
    :cond_1a
    :goto_1a
    return-object p0

    .line 52
    :cond_1b
    if-eqz v0, :cond_23

    move v0, v1

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1a

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e

    .line 55
    :cond_25
    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_1a

    .line 53
    :cond_2b
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_1a

    .line 54
    :cond_31
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_1a
.end method

.method public static format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 85
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatByte(B)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_e
    return-object v0

    .line 86
    :cond_f
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatShort(S)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 87
    :cond_1e
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2d

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->formatLong(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 88
    :cond_2d
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3c

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatFloat(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 89
    :cond_3c
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4b

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 90
    :cond_4b
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_5a

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatChar(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 91
    :cond_5a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_65

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/tools/javac/util/Constants;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 92
    :cond_65
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6d

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_72

    .line 93
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 95
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument is not a primitive type or a string; it "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-nez p0, :cond_92

    .line 97
    const-string v0, "is a null value."

    .line 99
    :goto_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80
.end method

.method public static format(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;
    .registers 5

    .line 66
    invoke-static {p0, p1}, Lcom/sun/tools/javac/util/Constants;->decode(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_53

    const/4 v2, 0x5

    if-eq v1, v2, :cond_48

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3d

    const/4 v2, 0x7

    if-eq v1, v2, :cond_32

    .line 74
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 75
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_1f
    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 71
    :cond_32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 70
    :cond_3d
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatFloat(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 69
    :cond_48
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->formatLong(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 72
    :cond_53
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatChar(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 68
    :cond_5e
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Constants;->formatByte(B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method private static formatByte(B)Ljava/lang/String;
    .registers 5

    .line 103
    const-string v0, "(byte)0x%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatChar(C)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/tools/javac/util/Convert;->quote(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDouble(D)Ljava/lang/String;
    .registers 4

    .line 124
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    const-string v0, "0.0/0.0"

    .line 129
    :goto_8
    return-object v0

    .line 126
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_18

    const-string v0, "-1.0/0.0"

    goto :goto_8

    :cond_18
    const-string v0, "1.0/0.0"

    goto :goto_8

    .line 129
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static formatFloat(F)Ljava/lang/String;
    .registers 3

    .line 115
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    const-string v0, "0.0f/0.0f"

    .line 120
    :goto_8
    return-object v0

    .line 117
    :cond_9
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 118
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    const-string v0, "-1.0f/0.0f"

    goto :goto_8

    :cond_17
    const-string v0, "1.0f/0.0f"

    goto :goto_8

    .line 120
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static formatLong(J)Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatShort(S)Ljava/lang/String;
    .registers 5

    .line 107
    const-string v0, "(short)%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x22

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/tools/javac/util/Convert;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
