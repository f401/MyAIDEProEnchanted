.class public Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private actualTypeArguments:[Ljava/lang/reflect/Type;

.field private ownerType:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 49
    iput-object p1, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    iput-object p3, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 53
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->validateConstructorArguments()V

    .line 54
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public static make(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;"
        }
    .end annotation

    .line 95
    new-instance v0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private validateConstructorArguments()V
    .registers 3

    .line 57
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 59
    array-length v0, v0

    iget-object v1, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/reflect/MalformedParameterizedTypeException;

    invoke-direct {v0}, Ljava/lang/reflect/MalformedParameterizedTypeException;-><init>()V

    throw v0

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 165
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 167
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 171
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 193
    iget-object v4, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v4, :cond_2

    if-nez v2, :cond_0

    .line 196
    :goto_1
    iget-object v2, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v2, :cond_3

    if-nez v3, :cond_0

    .line 199
    :goto_2
    iget-object v2, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 201
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 200
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 118
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .line 151
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 209
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    .line 210
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    move v0, v1

    .line 211
    :goto_0
    iget-object v3, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 208
    :goto_1
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_3

    .line 218
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 219
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_0
    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    check-cast v0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;

    iget-object v0, v0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :goto_1
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    .line 237
    const-string v0, "<"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x1

    .line 239
    iget-object v5, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v6, v5

    move v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v0, v5, v3

    .line 240
    if-nez v1, :cond_0

    .line 241
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_4

    .line 243
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v1, v2

    move v3, v0

    goto :goto_2

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 233
    :cond_3
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 248
    :cond_5
    const-string v0, ">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
