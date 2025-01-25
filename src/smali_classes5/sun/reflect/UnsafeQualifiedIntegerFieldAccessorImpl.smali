.class Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedIntegerFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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

    .line 67
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

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

    .line 63
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 77
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_a
    if-nez p2, :cond_f

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_22

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 101
    :goto_21
    return-void

    .line 88
    :cond_22
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_35

    .line 89
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_21

    .line 92
    :cond_35
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_48

    .line 93
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_21

    .line 96
    :cond_48
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5b

    .line 97
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    goto :goto_21

    .line 100
    :cond_5b
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 106
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 107
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

    .line 112
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 113
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

    .line 118
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

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

    .line 152
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 153
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

    .line 146
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 147
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

    .line 130
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 131
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 132
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(I)V

    .line 134
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 135
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

    .line 140
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 141
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

    .line 124
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 125
    return-void
.end method
