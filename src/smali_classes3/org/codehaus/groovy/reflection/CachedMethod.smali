.class public Lorg/codehaus/groovy/reflection/CachedMethod;
.super Lgroovy/lang/MetaMethod;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;
    }
.end annotation


# static fields
.field private static comparator:Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;


# instance fields
.field public final cachedClass:Lorg/codehaus/groovy/reflection/CachedClass;

.field private final cachedMethod:Ljava/lang/reflect/Method;

.field private hashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;-><init>(Lorg/codehaus/groovy/reflection/CachedMethod$1;)V

    sput-object v0, Lorg/codehaus/groovy/reflection/CachedMethod;->comparator:Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Lgroovy/lang/MetaMethod;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedClass:Lorg/codehaus/groovy/reflection/CachedClass;

    return-void
.end method

.method private j6(Ljava/lang/reflect/Method;)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Zo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v1, v2

    if-eqz v1, :cond_38

    return v1

    :cond_38
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3a
    array-length v3, v0

    if-eq v2, v3, :cond_53

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_50

    return v3

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_53
    return v1
.end method

.method private j6(Lorg/codehaus/groovy/reflection/CachedMethod;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Zo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->Zo()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v1, v2

    if-eqz v1, :cond_38

    return v1

    :cond_38
    const/4 v1, 0x0

    :goto_39
    array-length v2, v0

    if-eq v1, v2, :cond_52

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should never happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5b

    :goto_5a
    throw p1

    :goto_5b
    goto :goto_5a
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->j6(Lorg/codehaus/groovy/reflection/CachedMethod;)I

    move-result p1

    return p1

    :cond_b
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->j6(Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    move-object v1, p1

    check-cast v1, Lorg/codehaus/groovy/reflection/CachedMethod;

    iget-object v1, v1, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_11
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    if-nez v0, :cond_13

    const v0, -0x35014142  # -8347487.0f

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    :cond_13
    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
