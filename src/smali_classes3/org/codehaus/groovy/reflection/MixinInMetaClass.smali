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
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    check-cast p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    iget-object p1, p1, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_22

    :cond_20
    if-eqz p1, :cond_23

    :goto_22
    return v2

    :cond_23
    return v0
.end method

.method public hashCode()I
    .registers 6

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->Zo:Lgroovy/lang/ExpandoMetaClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object v3, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->VH:Lorg/codehaus/groovy/reflection/CachedClass;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lorg/codehaus/groovy/reflection/CachedClass;->hashCode()I

    move-result v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    iget-object v4, p0, Lorg/codehaus/groovy/reflection/MixinInMetaClass;->gn:Lorg/codehaus/groovy/reflection/CachedConstructor;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_21
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method
