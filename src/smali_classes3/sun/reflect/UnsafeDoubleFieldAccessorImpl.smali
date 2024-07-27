.class Lsun/reflect/UnsafeDoubleFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeDoubleFieldAccessorImpl.java"


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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 69
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v0

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetFloatIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    .line 111
    :goto_0
    return-void

    .line 86
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 90
    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 91
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 94
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 95
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 98
    :cond_5
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 99
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 102
    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 103
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 106
    :cond_7
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 107
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_0

    .line 110
    :cond_8
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 116
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 117
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

    .line 122
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 123
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 128
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 129
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 159
    iget-boolean v0, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->throwFinalFieldIllegalAccessException(D)V

    .line 162
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    .line 163
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

    .line 152
    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 153
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 140
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 141
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

    .line 146
    long-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 147
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

    .line 134
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 135
    return-void
.end method
