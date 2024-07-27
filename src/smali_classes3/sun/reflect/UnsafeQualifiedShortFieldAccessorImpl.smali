.class Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedShortFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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

    .line 42
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 46
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 50
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v0

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 99
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

    .line 104
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->setShort(Ljava/lang/Object;S)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

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

    .line 144
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 145
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

    .line 138
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 139
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

    .line 126
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 127
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

    .line 132
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 133
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 117
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(S)V

    .line 120
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    .line 121
    return-void
.end method
