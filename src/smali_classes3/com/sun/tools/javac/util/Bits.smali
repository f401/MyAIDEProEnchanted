.class public Lcom/sun/tools/javac/util/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# static fields
.field private static final wordlen:I = 0x20

.field private static final wordmask:I = 0x1f

.field private static final wordshift:I = 0x5


# instance fields
.field private bits:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;-><init>([I)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 59
    invoke-direct {p0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 61
    return-void
.end method

.method public constructor <init>([I)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    .line 54
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10

    const/16 v8, 0x7d

    const/4 v0, 0x0

    .line 213
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 214
    new-instance v3, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    move v1, v0

    .line 215
    :goto_0
    if-ge v1, v8, :cond_1

    .line 219
    :cond_0
    const/16 v4, 0xfa

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 220
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_2

    .line 226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 225
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v1

    goto :goto_1

    .line 229
    :cond_2
    if-ne v0, v8, :cond_3

    .line 230
    return-void

    .line 229
    :cond_3
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method private sizeTo(I)V
    .registers 6

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 65
    new-array v1, p1, [I

    .line 66
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object v1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    .line 69
    :cond_0
    return-void
.end method

.method private static trailingZeroBits(I)I
    .registers 4

    const/4 v0, 0x1

    .line 172
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 173
    if-nez p0, :cond_0

    const/16 v0, 0x20

    .line 179
    :goto_0
    return v0

    .line 175
    :cond_0
    const v1, 0xffff

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    const/16 v0, 0x11

    ushr-int/lit8 v1, p0, 0x10

    .line 176
    :goto_1
    and-int/lit16 v2, v1, 0xff

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v1, 0x8

    .line 177
    :cond_1
    and-int/lit8 v2, v1, 0xf

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v1, v1, 0x4

    .line 178
    :cond_2
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v1, v1, 0x2

    .line 179
    :cond_3
    and-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    move v1, p0

    goto :goto_1
.end method


# virtual methods
.method public andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;
    .registers 6

    .line 133
    iget-object v0, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 134
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    aget v3, v2, v0

    aget v1, v1, v0

    and-int/2addr v1, v3

    aput v1, v2, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object p0
.end method

.method public clear()V
    .registers 5

    const/4 v1, 0x0

    .line 74
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public diffSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;
    .registers 6

    .line 151
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 152
    iget-object v2, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 153
    aget v3, v1, v0

    aget v2, v2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    return-object p0
.end method

.method public dup()Lcom/sun/tools/javac/util/Bits;
    .registers 5

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 81
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Bits;-><init>([I)V

    return-object v0
.end method

.method public excl(I)V
    .registers 6

    const/4 v1, 0x1

    .line 116
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 117
    ushr-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 118
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v3, p1, 0x5

    aget v3, v0, v3

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 120
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludeFrom(I)V
    .registers 4

    .line 107
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 111
    return-void
.end method

.method public incl(I)V
    .registers 6

    const/4 v1, 0x1

    .line 88
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 89
    ushr-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 90
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v1, v3

    ushr-int/lit8 v3, p1, 0x5

    aget v3, v0, v3

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 92
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inclRange(II)V
    .registers 8

    .line 98
    ushr-int/lit8 v0, p2, 0x5

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 99
    :goto_0
    if-ge p1, p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    ushr-int/lit8 v1, p1, 0x5

    ushr-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 99
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public isMember(I)Z
    .registers 5

    const/4 v0, 0x1

    .line 125
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x5

    if-ge p1, v2, :cond_0

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBit(I)I
    .registers 7

    const/4 v0, -0x1

    .line 190
    ushr-int/lit8 v1, p1, 0x5

    .line 191
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    aget v2, v2, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 194
    :goto_1
    if-eqz v2, :cond_2

    .line 195
    shl-int/lit8 v0, v1, 0x5

    invoke-static {v2}, Lcom/sun/tools/javac/util/Bits;->trailingZeroBits(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 197
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 198
    aget v2, v2, v1

    goto :goto_1
.end method

.method public orSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;
    .registers 6

    .line 142
    iget-object v0, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 143
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    aget v3, v2, v0

    aget v1, v1, v0

    or-int/2addr v1, v3

    aput v1, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    new-array v2, v0, [C

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    if-ge v0, v1, :cond_1

    .line 207
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    :goto_1
    aput-char v1, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    const/16 v1, 0x30

    goto :goto_1

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public xorSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;
    .registers 6

    .line 162
    iget-object v0, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Bits;->sizeTo(I)V

    .line 163
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/util/Bits;->bits:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/sun/tools/javac/util/Bits;->bits:[I

    aget v3, v2, v0

    aget v1, v1, v0

    xor-int/2addr v1, v3

    aput v1, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-object p0
.end method
