.class Lsun/reflect/UnsafeFloatFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeFloatFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;I)F

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_a
    if-nez p2, :cond_f

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_22

    .line 83
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    .line 107
    :goto_21
    return-void

    .line 86
    :cond_22
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_35

    .line 87
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_21

    .line 90
    :cond_35
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_48

    .line 91
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_21

    .line 94
    :cond_48
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5b

    .line 95
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_21

    .line 98
    :cond_5b
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6e

    .line 99
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_21

    .line 102
    :cond_6e
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_80

    .line 103
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    goto :goto_21

    .line 106
    :cond_80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 112
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 113
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

    .line 118
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 119
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

    .line 124
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 125
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

    .line 158
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 159
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 149
    iget-boolean v0, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(F)V

    .line 152
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;IF)V

    .line 153
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

    .line 136
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 137
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

    .line 142
    long-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 143
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

    .line 130
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 131
    return-void
.end method
