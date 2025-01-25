.class Lsun/reflect/UnsafeShortFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeShortFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;I)S

    move-result v0

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_a
    if-nez p2, :cond_f

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_22

    .line 83
    sget-object v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    .line 91
    :goto_21
    return-void

    .line 86
    :cond_22
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_34

    .line 87
    sget-object v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    goto :goto_21

    .line 90
    :cond_34
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 96
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 97
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 102
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->setShort(Ljava/lang/Object;S)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

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

    .line 142
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 143
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

    .line 136
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 137
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

    .line 124
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 125
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

    .line 130
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 131
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 115
    iget-boolean v0, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 116
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(S)V

    .line 118
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeShortFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    .line 119
    return-void
.end method
