.class public final Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;
.super Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;
.source "ShortArrayCodeOutput.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/instructions/CodeOutput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    if-ltz p1, :cond_0

    .line 37
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getArray()[S
    .locals 4

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    move-result v2

    .line 47
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    array-length v1, v0

    if-ne v2, v1, :cond_0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-array v1, v2, [S

    .line 52
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public write(S)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    move-result v1

    aput-short p1, v0, v1

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->advance(I)V

    return-void
.end method

.method public write(SS)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSS)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSSS)V
    .locals 0

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
    .locals 0

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
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    array-length v5, p1

    move v4, v1

    move v0, v2

    move v3, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v6, p1, v4

    if-eqz v0, :cond_0

    and-int/lit16 v3, v6, 0xff

    move v0, v1

    .line 124
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_0
    shl-int/lit8 v0, v6, 0x8

    or-int/2addr v3, v0

    int-to-short v0, v3

    .line 124
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    move v0, v2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    int-to-short v0, v3

    .line 130
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    :cond_2
    return-void
.end method

.method public write([I)V
    .locals 3

    .line 145
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 146
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([J)V
    .locals 4

    .line 153
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([S)V
    .locals 3

    .line 137
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 138
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    int-to-short v0, p1

    .line 100
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    shr-int/lit8 v0, p1, 0x10

    int-to-short v0, v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public writeLong(J)V
    .locals 3

    long-to-int v0, p1

    int-to-short v0, v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method
