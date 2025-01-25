.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .registers 7

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 54
    const/4 v1, 0x0

    .line 57
    :goto_5
    if-ge v1, v2, :cond_4a

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x80

    if-ge v0, v3, :cond_4a

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 62
    :goto_12
    if-ge v1, v2, :cond_29

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 64
    const/16 v4, 0x800

    if-ge v3, v4, :cond_24

    .line 65
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 67
    :cond_24
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_29
    if-lt v0, v2, :cond_2c

    .line 77
    return v0

    .line 74
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move v0, v2

    goto :goto_12
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 7

    .line 81
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 82
    const/4 v1, 0x0

    move v0, p1

    .line 83
    :goto_6
    if-ge v0, v2, :cond_37

    .line 84
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 85
    const/16 v4, 0x800

    if-ge v3, v4, :cond_18

    .line 86
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    .line 83
    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_18
    add-int/lit8 v1, v1, 0x2

    .line 90
    const v4, 0xd800

    if-gt v4, v3, :cond_15

    const v4, 0xdfff

    if-gt v3, v4, :cond_15

    .line 92
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v3, :cond_2d

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 93
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_37
    return v1
.end method

.method public static isWellFormed([B)Z
    .registers 3

    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .registers 5

    .line 126
    add-int v0, p1, p2

    .line 127
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 129
    :goto_6
    if-ge p1, v0, :cond_14

    .line 130
    aget-byte v1, p0, p1

    if-gez v1, :cond_11

    .line 131
    invoke-static {p0, p1, v0}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result v0

    .line 134
    :goto_10
    return v0

    .line 129
    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 134
    :cond_14
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private static isWellFormedSlowPath([BII)Z
    .registers 11

    const/16 v7, -0x20

    const/16 v6, -0x60

    const/4 v1, 0x0

    const/16 v5, -0x41

    .line 138
    :goto_7
    if-lt p1, p2, :cond_b

    .line 145
    const/4 v0, 0x1

    .line 180
    :goto_a
    return v0

    .line 147
    :cond_b
    add-int/lit8 v2, p1, 0x1

    aget-byte v0, p0, p1

    if-gez v0, :cond_6a

    .line 149
    if-ge v0, v7, :cond_23

    .line 151
    if-ne v2, p2, :cond_17

    move v0, v1

    .line 152
    goto :goto_a

    .line 156
    :cond_17
    const/16 v3, -0x3e

    if-lt v0, v3, :cond_21

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_68

    :cond_21
    move v0, v1

    .line 157
    goto :goto_a

    .line 159
    :cond_23
    const/16 v3, -0x10

    if-ge v0, v3, :cond_45

    .line 161
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_2d

    move v0, v1

    .line 162
    goto :goto_a

    .line 164
    :cond_2d
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 165
    if-gt v2, v5, :cond_43

    if-ne v0, v7, :cond_37

    if-lt v2, v6, :cond_43

    :cond_37
    const/16 v4, -0x13

    if-ne v0, v4, :cond_3d

    if-le v6, v2, :cond_43

    :cond_3d
    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p0, v3

    if-le v2, v5, :cond_68

    :cond_43
    move v0, v1

    .line 172
    goto :goto_a

    .line 176
    :cond_45
    add-int/lit8 v3, v2, 0x2

    if-lt v3, p2, :cond_4b

    move v0, v1

    .line 177
    goto :goto_a

    .line 179
    :cond_4b
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 180
    if-gt v2, v5, :cond_66

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_66

    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p0, v3

    if-gt v0, v5, :cond_66

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_68

    :cond_66
    move v0, v1

    goto :goto_a

    :cond_68
    move p1, v0

    .line 193
    goto :goto_7

    :cond_6a
    move p1, v2

    .line 147
    goto :goto_7
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
