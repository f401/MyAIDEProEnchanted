.class Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeStaticByteFieldAccessorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lsun/reflect/UnsafeStaticFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

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

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    sget-object v0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;I)B

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

    .line 48
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 68
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 64
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 56
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 60
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 52
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->getByte(Ljava/lang/Object;)B

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

    .line 74
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 77
    :cond_7
    if-nez p2, :cond_c

    .line 78
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 80
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_20

    .line 81
    sget-object v0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;IB)V

    .line 85
    :goto_1f
    return-void

    .line 84
    :cond_20
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 91
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwFinalFieldIllegalAccessException(B)V

    .line 99
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;IB)V

    .line 100
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

    .line 105
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

    .line 106
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

    .line 135
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 136
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

    .line 129
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 130
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

    .line 117
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 118
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

    .line 123
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 124
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

    .line 111
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 112
    return-void
.end method
