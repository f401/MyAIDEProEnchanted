.class Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedByteFieldAccessorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Z)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 35
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

    .line 38
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 42
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getByteVolatile(Ljava/lang/Object;J)B

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

    .line 51
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 71
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 67
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 59
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 63
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 55
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_a
    if-nez p2, :cond_f

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_22

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    .line 89
    :goto_21
    return-void

    .line 88
    :cond_22
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 95
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 102
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(B)V

    .line 104
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    .line 105
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

    .line 110
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

    .line 111
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

    .line 140
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 141
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

    .line 134
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 135
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

    .line 122
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 123
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

    .line 128
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 129
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

    .line 116
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 117
    return-void
.end method
