.class Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeStaticShortFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->getShort(Ljava/lang/Object;)S

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    sget-object v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;I)S

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

    .line 74
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 77
    :cond_7
    if-nez p2, :cond_c

    .line 78
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 80
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 81
    sget-object v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    .line 89
    :goto_20
    return-void

    .line 84
    :cond_21
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_35

    .line 85
    sget-object v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    goto :goto_20

    .line 88
    :cond_35
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 94
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 95
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

    .line 100
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->setShort(Ljava/lang/Object;S)V

    .line 101
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

    .line 106
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

    .line 107
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

    .line 139
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 140
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

    .line 133
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 134
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

    .line 121
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 122
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

    .line 127
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 128
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->throwFinalFieldIllegalAccessException(S)V

    .line 115
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;IS)V

    .line 116
    return-void
.end method
