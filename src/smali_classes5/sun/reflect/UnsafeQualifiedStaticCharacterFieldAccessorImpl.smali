.class Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;
.source "UnsafeQualifiedStaticCharacterFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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

    .line 42
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getCharVolatile(Ljava/lang/Object;J)C

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

    .line 70
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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

    .line 58
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_7
    if-nez p2, :cond_c

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_c
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_21

    .line 83
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 87
    :goto_20
    return-void

    .line 86
    :cond_21
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 92
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(B)V

    .line 99
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(C)V

    .line 107
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 108
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

    .line 137
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 138
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

    .line 131
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 132
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

    .line 119
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 120
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

    .line 125
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 126
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

    .line 113
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 114
    return-void
.end method
