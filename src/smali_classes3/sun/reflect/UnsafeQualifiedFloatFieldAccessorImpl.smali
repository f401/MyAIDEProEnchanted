.class Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedFloatFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

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

    .line 42
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->getFloat(Ljava/lang/Object;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getFloatVolatile(Ljava/lang/Object;J)F

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

    .line 58
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 62
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 54
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 77
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    .line 109
    :goto_0
    return-void

    .line 88
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 92
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 96
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 97
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 100
    :cond_5
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 101
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v1, v4

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 104
    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 105
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 108
    :cond_7
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 114
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 115
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

    .line 120
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 121
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

    .line 126
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 127
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

    .line 160
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 161
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 151
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->throwFinalFieldIllegalAccessException(F)V

    .line 154
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    .line 155
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

    .line 138
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 139
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

    .line 144
    long-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 145
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

    .line 132
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;->setFloat(Ljava/lang/Object;F)V

    .line 133
    return-void
.end method
