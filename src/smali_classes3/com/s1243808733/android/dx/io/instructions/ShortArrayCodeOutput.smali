.class public final Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;
.super Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;
.source "ShortArrayCodeOutput.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/instructions/CodeOutput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    .line 33
    if-gez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    return-void
.end method


# virtual methods
.method public getArray()[S
    .registers 5

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    move-result v1

    .line 47
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-array v0, v1, [S

    .line 52
    iget-object v2, p0, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public write(S)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public write(SSS)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSSS)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSSSS)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    move v4, v1

    .line 125
    :goto_0
    array-length v5, p1

    if-lt v0, v5, :cond_1

    .line 129
    if-nez v2, :cond_0

    .line 130
    int-to-short v0, v4

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    :cond_0
    return-void

    .line 118
    :cond_1
    aget-byte v5, p1, v0

    .line 119
    if-eqz v2, :cond_2

    .line 120
    and-int/lit16 v4, v5, 0xff

    move v2, v1

    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v4, v2

    .line 124
    int-to-short v2, v4

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    move v2, v3

    .line 125
    goto :goto_1
.end method

.method public write([I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 145
    :cond_0
    aget v1, p1, v0

    .line 146
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write([J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    aget-wide v2, p1, v0

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write([S)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 137
    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 137
    :cond_0
    aget-short v1, p1, v0

    .line 138
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeInt(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 100
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 101
    shr-int/lit8 v0, p1, 0x10

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method

.method public writeLong(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    long-to-int v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 108
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 109
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    .line 110
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    return-void
.end method
