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
    if-eqz p3, :cond_f

    .line 51
    iput-object p3, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 53
    :goto_b
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->validateConstructorArguments()V

    .line 54
    return-void

    .line 52
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    goto :goto_b
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

    if-ne v0, v1, :cond_15

    .line 62
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/reflect/MalformedParameterizedTypeException;

    invoke-direct {v0}, Ljava/lang/reflect/MalformedParameterizedTypeException;-><init>()V

    throw v0

    .line 66
    :cond_1b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_b

    .line 165
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 167
    if-ne p0, p1, :cond_c

    move v0, v1

    .line 203
    :cond_b
    :goto_b
    return v0

    .line 170
    :cond_c
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 171
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 193
    iget-object v4, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v4, :cond_2e

    if-nez v2, :cond_b

    .line 196
    :goto_1a
    iget-object v2, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v2, :cond_35

    if-nez v3, :cond_b

    .line 199
    :goto_20
    iget-object v2, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 201
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 200
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 196
    :cond_2e
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1a

    .line 199
    :cond_35
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_20
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

    if-nez v0, :cond_13

    move v0, v1

    .line 211
    :goto_c
    iget-object v3, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v3, :cond_18

    .line 208
    :goto_10
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0

    .line 210
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    .line 211
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_8d

    .line 218
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_7b

    .line 219
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_17
    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;

    if-eqz v0, :cond_83

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
    :goto_4c
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_a4

    array-length v0, v0

    if-lez v0, :cond_a4

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

    :goto_5e
    if-ge v3, v6, :cond_9f

    aget-object v0, v5, v3

    .line 240
    if-nez v1, :cond_69

    .line 241
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_69
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_97

    .line 243
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_76
    add-int/lit8 v0, v3, 0x1

    move v1, v2

    move v3, v0

    goto :goto_5e

    .line 221
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 231
    :cond_83
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 233
    :cond_8d
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 245
    :cond_97
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 248
    :cond_9f
    const-string v0, ">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
