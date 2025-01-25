.class Lorg/codehaus/groovy/reflection/CachedClass$8;
.super Lorg/codehaus/groovy/util/LazyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/CachedClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/LazyReference<",
        "Ljava/util/Set<",
        "Lorg/codehaus/groovy/reflection/CachedClass;",
        ">;>;"
    }
.end annotation


# instance fields
.field final Zo:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$8;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass$8;->Hw()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lorg/codehaus/groovy/reflection/CachedClass$8;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/codehaus/groovy/reflection/CachedClass$8;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/codehaus/groovy/reflection/CachedClass$8;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_22
    if-ge v1, v3, :cond_3a

    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/codehaus/groovy/reflection/ReflectionCache;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v4}, Lorg/codehaus/groovy/reflection/CachedClass;->Hw()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3a
    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedClass$8;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->j6()Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->Hw()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_49
    return-object v0
.end method
