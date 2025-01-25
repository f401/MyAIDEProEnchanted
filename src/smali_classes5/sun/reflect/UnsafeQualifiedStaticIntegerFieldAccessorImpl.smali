.class Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;
.source "UnsafeQualifiedStaticIntegerFieldAccessorImpl.java"


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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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

    .line 66
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

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

    .line 62
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_7
    if-nez p2, :cond_c

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 83
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 99
    :goto_20
    return-void

    .line 86
    :cond_21
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_36

    .line 87
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_20

    .line 90
    :cond_36
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4b

    .line 91
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_20

    .line 94
    :cond_4b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 95
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_20

    .line 98
    :cond_60
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 104
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 105
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 111
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

    .line 116
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 117
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

    .line 149
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 150
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

    .line 143
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 144
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 129
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(I)V

    .line 131
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 132
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

    .line 137
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 138
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 123
    return-void
.end method
