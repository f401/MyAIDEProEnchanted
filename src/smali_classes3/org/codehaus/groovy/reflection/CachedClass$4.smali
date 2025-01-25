.class Lorg/codehaus/groovy/reflection/CachedClass$4;
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
        "Lorg/codehaus/groovy/reflection/CachedClass;",
        ">;"
    }
.end annotation


# instance fields
.field final Zo:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$4;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass$4;->Hw()Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass$4;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    iget-boolean v1, v0, Lorg/codehaus/groovy/reflection/CachedClass;->QX:Z

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ReflectionCache;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-static {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->j6(Lorg/codehaus/groovy/reflection/CachedClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass$4;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->j6(Lorg/codehaus/groovy/reflection/CachedClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_30

    goto :goto_33

    :cond_30
    sget-object v0, Lorg/codehaus/groovy/reflection/ReflectionCache;->v5:Lorg/codehaus/groovy/reflection/CachedClass;

    return-object v0

    :cond_33
    :goto_33
    sget-object v0, Lorg/codehaus/groovy/reflection/ReflectionCache;->Hw:Lorg/codehaus/groovy/reflection/CachedClass;

    return-object v0
.end method
