.class Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedLongFieldAccessorImpl.java"


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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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

    .line 42
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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

    .line 67
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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

    .line 58
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

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

    .line 54
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_a
    if-nez p2, :cond_f

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_24

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 105
    :goto_23
    return-void

    .line 88
    :cond_24
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_39

    .line 89
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_23

    .line 92
    :cond_39
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4e

    .line 93
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_23

    .line 96
    :cond_4e
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_63

    .line 97
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_23

    .line 100
    :cond_63
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_77

    .line 101
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_23

    .line 104
    :cond_77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_23
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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 111
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

    .line 116
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 117
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

    .line 122
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

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

    .line 156
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 157
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

    .line 150
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

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

    .line 134
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 135
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 141
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 142
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(J)V

    .line 144
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

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

    .line 128
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 129
    return-void
.end method
