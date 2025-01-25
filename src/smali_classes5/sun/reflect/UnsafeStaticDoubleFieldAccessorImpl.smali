.class Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeStaticDoubleFieldAccessorImpl.java"


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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->getDouble(Ljava/lang/Object;)D

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;I)D

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetFloatIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 77
    :cond_7
    if-nez p2, :cond_c

    .line 78
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 80
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 81
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    .line 109
    :goto_20
    return-void

    .line 84
    :cond_21
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_36

    .line 85
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 88
    :cond_36
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4b

    .line 89
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 92
    :cond_4b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 93
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 96
    :cond_60
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_75

    .line 97
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 100
    :cond_75
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8a

    .line 101
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 104
    :cond_8a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9e

    .line 105
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    goto :goto_20

    .line 108
    :cond_9e
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto/16 :goto_20
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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 115
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

    .line 120
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 121
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

    .line 126
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 127
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 157
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->throwFinalFieldIllegalAccessException(D)V

    .line 159
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;ID)V

    .line 160
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

    .line 150
    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 151
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

    .line 138
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

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
    long-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 145
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

    .line 132
    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;->setDouble(Ljava/lang/Object;D)V

    .line 133
    return-void
.end method
