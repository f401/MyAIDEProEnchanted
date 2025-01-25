.class Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeStaticLongFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-double v0, v0

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-float v0, v0

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 77
    :cond_7
    if-nez p2, :cond_c

    .line 78
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 80
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 81
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    .line 101
    :goto_20
    return-void

    .line 84
    :cond_21
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_36

    .line 85
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    goto :goto_20

    .line 88
    :cond_36
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4b

    .line 89
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    goto :goto_20

    .line 92
    :cond_4b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 93
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    goto :goto_20

    .line 96
    :cond_60
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_74

    .line 97
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    goto :goto_20

    .line 100
    :cond_74
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 106
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 107
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

    .line 112
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 113
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

    .line 118
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 119
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

    .line 151
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 152
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

    .line 145
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 146
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

    .line 130
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 131
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(J)V

    .line 139
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;IJ)V

    .line 140
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

    .line 124
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 125
    return-void
.end method
