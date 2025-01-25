.class Lorg/codehaus/groovy/reflection/CachedClass$6;
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
        "Ljava/util/LinkedList<",
        "Lorg/codehaus/groovy/reflection/ClassInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final Zo:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$6;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass$6;->Hw()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/LinkedList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lorg/codehaus/groovy/reflection/ClassInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedClass$6;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    iget-object v1, v1, Lorg/codehaus/groovy/reflection/CachedClass;->v5:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedClass$6;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->DW()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->FH()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_2a
    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedClass$6;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->j6()Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedClass;->FH()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_39
    iget-object v1, p0, Lorg/codehaus/groovy/reflection/CachedClass$6;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    iget-boolean v1, v1, Lorg/codehaus/groovy/reflection/CachedClass;->Mr:Z

    if-eqz v1, :cond_46

    sget-object v1, Lorg/codehaus/groovy/reflection/ReflectionCache;->Hw:Lorg/codehaus/groovy/reflection/CachedClass;

    iget-object v1, v1, Lorg/codehaus/groovy/reflection/CachedClass;->v5:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_46
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
