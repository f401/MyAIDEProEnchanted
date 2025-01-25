.class Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;
.super Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;
.source "UnsafeQualifiedStaticBooleanFieldAccessorImpl.java"


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
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getBooleanVolatile(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetByteIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetCharIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 70
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetDoubleIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 66
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetFloatIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 58
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetIntIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 62
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetLongIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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

    .line 54
    invoke-virtual {p0}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->newGetShortIllegalArgumentException()Ljava/lang/IllegalArgumentException;

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
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Ljava/lang/Object;)V

    .line 79
    :cond_7
    if-nez p2, :cond_c

    .line 80
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    .line 82
    :cond_c
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 83
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    .line 87
    :goto_20
    return-void

    .line 86
    :cond_21
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->isReadOnly:Z

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwFinalFieldIllegalAccessException(Z)V

    .line 95
    :cond_7
    sget-object v0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->base:Ljava/lang/Object;

    iget v2, p0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->fieldOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    .line 96
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

    .line 101
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(B)V

    .line 102
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

    .line 107
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(C)V

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
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(D)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(F)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(I)V

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
    invoke-virtual {p0, p2, p3}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(J)V

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
    invoke-virtual {p0, p2}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;->throwSetIllegalArgumentException(S)V

    .line 114
    return-void
.end method
