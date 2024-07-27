.class Lsun/reflect/UnsafeCharacterFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeCharacterFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;I)C

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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

    .line 53
    invoke-virtual {p0}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_1
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->fieldOffset:I

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;IC)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 92
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 93
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

    .line 98
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(B)V

    .line 99
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

    .line 104
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(C)V

    .line 108
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;IC)V

    .line 109
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

    .line 138
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 139
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

    .line 132
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 133
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 121
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

    .line 126
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 127
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

    .line 114
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 115
    return-void
.end method
