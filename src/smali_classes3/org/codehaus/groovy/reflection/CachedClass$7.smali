.class Lorg/codehaus/groovy/reflection/CachedClass$7;
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

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$7;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass$7;->Hw()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 6
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

    iget-object v2, p0, Lorg/codehaus/groovy/reflection/CachedClass$7;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v2}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_11
    if-ge v1, v3, :cond_1f

    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/codehaus/groovy/reflection/ReflectionCache;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    return-object v0
.end method
