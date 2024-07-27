.class Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeStaticFloatFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;I)F

    move-result v0

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 80
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    .line 105
    :goto_0
    return-void

    .line 84
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 88
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 89
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 92
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 96
    :cond_5
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 97
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 100
    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 101
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 104
    :cond_7
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 110
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 111
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

    .line 116
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 117
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 122
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 123
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

    .line 155
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 156
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(F)V

    .line 149
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    .line 150
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 134
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 135
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 140
    long-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 141
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 128
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 129
    return-void
.end method
