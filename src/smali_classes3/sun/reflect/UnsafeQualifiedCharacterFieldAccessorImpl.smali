.class Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.source "UnsafeQualifiedCharacterFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getCharVolatile(Ljava/lang/Object;J)C

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

    .line 71
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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

    .line 59
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->getChar(Ljava/lang/Object;)C

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

    .line 55
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 78
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_1
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

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

    .line 94
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 95
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

    .line 100
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(B)V

    .line 101
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

    .line 106
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwFinalFieldIllegalAccessException(C)V

    .line 110
    :cond_0
    sget-object v0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 111
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

    .line 140
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 141
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

    .line 134
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 135
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

    .line 122
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 123
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

    .line 128
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 129
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

    .line 116
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 117
    return-void
.end method
