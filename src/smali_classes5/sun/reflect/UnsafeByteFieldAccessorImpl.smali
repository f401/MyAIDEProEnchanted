.class Lsun/reflect/UnsafeByteFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeByteFieldAccessorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lsun/reflect/UnsafeFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 33
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;I)B

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_a
    if-nez p2, :cond_f

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 83
    sget-object v0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;IB)V

    .line 87
    :goto_20
    return-void

    .line 86
    :cond_21
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 93
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 99
    iget-boolean v0, p0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(B)V

    .line 102
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeByteFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;IB)V

    .line 103
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

    .line 109
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 139
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 133
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 121
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 127
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeByteFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 115
    return-void
.end method
