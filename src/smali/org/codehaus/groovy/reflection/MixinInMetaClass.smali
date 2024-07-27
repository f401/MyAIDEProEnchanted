.class public Lorg/codehaus/groovy/reflection/MixinInMetaClass;
.super Lorg/codehaus/groovy/util/ManagedConcurrentMap;


# static fields
.field private static v5:Lorg/codehaus/groovy/util/ReferenceBundle;


# instance fields
.field final VH:Lorg/codehaus/groovy/reflection/CachedClass;

.field final Zo:Lgroovy/lang/ExpandoMetaClass;

.field final gn:Lorg/codehaus/groovy/reflection/CachedConstructor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/util/ReferenceBundle;->DW()Lorg/codehaus/groovy/util/ReferenceBundle;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->v5:Lorg/codehaus/groovy/util/ReferenceBundle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;

    iget-object v2, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->Zo:Lgroovy/lang/ExpandoMetaClass;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->hashCode()I

    move-result v2

    :goto_1
    iget-object v4, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->gn:Lorg/codehaus/groovy/reflection/CachedConstructor;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method
