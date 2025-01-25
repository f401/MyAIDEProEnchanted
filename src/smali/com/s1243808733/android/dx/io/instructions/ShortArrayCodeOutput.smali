.class public final Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;
.super Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;
.source "ShortArrayCodeOutput.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/instructions/CodeOutput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    if-ltz p1, :cond_a

    .line 37
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    return-void

    .line 34
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getArray()[S
    .registers 5

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    array-length v2, v1

    if-ne v0, v2, :cond_a

    return-object v1

    .line 51
    :cond_a
    new-array v2, v0, [S

    .line 52
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public write(S)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    move-result v1

    aput-short p1, v0, v1

    .line 60
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->advance(I)V

    return-void
.end method

.method public write(SS)V
    .registers 3

    .line 66
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSS)V
    .registers 4

    .line 73
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSSS)V
    .registers 5

    .line 81
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 84
    invoke-virtual {p0, p4}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSSSS)V
    .registers 6

    .line 90
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 92
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 93
    invoke-virtual {p0, p4}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 94
    invoke-virtual {p0, p5}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write([B)V
    .registers 9

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_6
    if-ge v3, v0, :cond_1d

    aget-byte v6, p1, v3

    if-eqz v4, :cond_11

    and-int/lit16 v4, v6, 0xff

    move v5, v4

    const/4 v4, 0x0

    goto :goto_1a

    :cond_11
    shl-int/lit8 v4, v6, 0x8

    or-int/2addr v4, v5

    int-to-short v5, v4

    .line 124
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    move v5, v4

    const/4 v4, 0x1

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1d
    if-nez v4, :cond_23

    int-to-short p1, v5

    .line 130
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    :cond_23
    return-void
.end method

.method public write([I)V
    .registers 5

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 146
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public write([J)V
    .registers 6

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-wide v2, p1, v1

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public write([S)V
    .registers 5

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-short v2, p1, v1

    .line 138
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public writeInt(I)V
    .registers 3

    int-to-short v0, p1

    .line 100
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    shr-int/lit8 p1, p1, 0x10

    int-to-short p1, p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public writeLong(J)V
    .registers 5

    long-to-int v0, p1

    int-to-short v0, v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-short v0, v1

    .line 108
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-short v0, v1

    .line 109
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x30

    shr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-short p1, p2

    .line 110
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method
