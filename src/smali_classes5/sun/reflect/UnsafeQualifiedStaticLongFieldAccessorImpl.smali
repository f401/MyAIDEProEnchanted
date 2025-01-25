.class Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;
.source "UnsafeQualifiedStaticLongFieldAccessorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Z)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

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

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 70
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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

    .line 66
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->getLong(Ljava/lang/Object;)J

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_7
    if-nez p2, :cond_c

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_22

    .line 83
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 103
    :goto_21
    return-void

    .line 86
    :cond_22
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_38

    .line 87
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_21

    .line 90
    :cond_38
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4e

    .line 91
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_21

    .line 94
    :cond_4e
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_64

    .line 95
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_21

    .line 98
    :cond_64
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_79

    .line 99
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    goto :goto_21

    .line 102
    :cond_79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 108
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 109
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

    .line 114
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 115
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

    .line 120
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 121
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

    .line 153
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 154
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

    .line 147
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 148
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

    .line 132
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 133
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

    .line 138
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 139
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->throwFinalFieldIllegalAccessException(J)V

    .line 141
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 142
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

    .line 126
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;->setLong(Ljava/lang/Object;J)V

    .line 127
    return-void
.end method
