.class Lsun/reflect/UnsafeObjectFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeObjectFieldAccessorImpl.java"


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
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetBooleanIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 45
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 49
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetDoubleIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetFloatIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 57
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 61
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 53
    invoke-virtual {p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->ensureObj(Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->isFinal:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_a
    if-eqz p2, :cond_1f

    .line 80
    iget-object v0, p0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 81
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 84
    :cond_1f
    sget-object v0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget v1, p0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->fieldOffset:I

    invoke-virtual {v0, p1, v1, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(Z)V

    .line 91
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

    .line 96
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(B)V

    .line 97
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

    .line 102
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

    .line 103
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

    .line 132
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

    .line 133
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

    .line 126
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

    .line 127
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

    .line 114
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

    .line 115
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

    .line 120
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

    .line 121
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

    .line 108
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 109
    return-void
.end method
