.class public Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;
.super Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;
.source "WildcardTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private lowerBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private lowerBounds:[Ljava/lang/reflect/Type;

.field private upperBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method private constructor <init>([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 4

    .line 58
    invoke-direct {p0, p3}, Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;-><init>(Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 59
    iput-object p1, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->upperBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 60
    iput-object p2, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->lowerBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 61
    return-void
.end method

.method private getLowerBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 94
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->lowerBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method private getUpperBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 86
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->upperBoundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method public static make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;
    .registers 4

    .line 76
    new-instance v0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;-><init>([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 216
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_24

    .line 217
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 218
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 220
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 221
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 222
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 224
    :cond_24
    return v0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 6

    .line 164
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_23

    .line 165
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getLowerBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 168
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 170
    const/4 v0, 0x0

    :goto_c
    array-length v3, v1

    if-ge v0, v3, :cond_21

    .line 171
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 172
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/FieldTypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 173
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 176
    :cond_21
    iput-object v2, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    .line 179
    :cond_23
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 6

    .line 121
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_23

    .line 122
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getUpperBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 126
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 128
    const/4 v0, 0x0

    :goto_c
    array-length v3, v1

    if-ge v0, v3, :cond_21

    .line 129
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 130
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/FieldTypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 131
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 134
    :cond_21
    iput-object v2, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    .line 137
    :cond_23
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 229
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 232
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    array-length v1, v0

    if-lez v1, :cond_34

    .line 188
    const-string v1, "? super "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 198
    :goto_13
    const/4 v0, 0x1

    .line 201
    array-length v6, v1

    move v2, v0

    move v4, v3

    :goto_17
    if-ge v4, v6, :cond_54

    aget-object v0, v1, v4

    .line 202
    if-nez v2, :cond_22

    .line 203
    const-string v2, " & "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_22
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_4c

    .line 207
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :goto_2f
    add-int/lit8 v0, v4, 0x1

    move v2, v3

    move v4, v0

    goto :goto_17

    .line 190
    :cond_34
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 191
    array-length v1, v0

    if-lez v1, :cond_59

    aget-object v1, v0, v3

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 192
    const-string v1, "? extends "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    goto :goto_13

    .line 209
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 211
    :cond_54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_58
    return-object v0

    .line 195
    :cond_59
    const-string v0, "?"

    goto :goto_58
.end method
