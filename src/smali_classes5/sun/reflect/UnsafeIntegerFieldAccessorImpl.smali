.class Lsun/reflect/UnsafeIntegerFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeIntegerFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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

    .line 40
    invoke-virtual {p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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

    .line 65
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;I)I

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

    .line 61
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->getInt(Ljava/lang/Object;)I

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

    .line 52
    invoke-virtual {p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_a
    if-nez p2, :cond_f

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    .line 83
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;II)V

    .line 99
    :goto_20
    return-void

    .line 86
    :cond_21
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_33

    .line 87
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;II)V

    goto :goto_20

    .line 90
    :cond_33
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_45

    .line 91
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;II)V

    goto :goto_20

    .line 94
    :cond_45
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_57

    .line 95
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;II)V

    goto :goto_20

    .line 98
    :cond_57
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

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
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

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
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

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

    .line 150
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 151
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

    .line 144
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 145
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

    .line 128
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 129
    iget-boolean v0, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwFinalFieldIllegalAccessException(I)V

    .line 132
    :cond_a
    sget-object v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;II)V

    .line 133
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

    .line 138
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 139
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
    invoke-virtual {p0, p1, p2}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;->setInt(Ljava/lang/Object;I)V

    .line 123
    return-void
.end method
