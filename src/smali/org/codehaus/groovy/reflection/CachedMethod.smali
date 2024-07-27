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
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Zo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v0, v3

    array-length v2, v4

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    array-length v2, v3

    if-eq v0, v2, :cond_0

    aget-object v2, v3, v0

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6(Lorg/codehaus/groovy/reflection/CachedMethod;)I
    .registers 7

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

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

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v2

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->getParameterTypes()[Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v3

    array-length v0, v2

    array-length v1, v3

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-eq v0, v1, :cond_3

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lorg/codehaus/groovy/reflection/CachedClass;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->j6(Lorg/codehaus/groovy/reflection/CachedMethod;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->j6(Ljava/lang/reflect/Method;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    move-object v0, p1

    check-cast v0, Lorg/codehaus/groovy/reflection/CachedMethod;

    iget-object v0, v0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    if-nez v0, :cond_0

    const v0, -0x35014142    # -8347487.0f

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedMethod;->hashCode:I

    :cond_0
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
