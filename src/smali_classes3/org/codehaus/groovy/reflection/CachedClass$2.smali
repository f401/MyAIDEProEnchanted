.class Lorg/codehaus/groovy/reflection/CachedClass$2;
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
        "[",
        "Lorg/codehaus/groovy/reflection/CachedConstructor;",
        ">;"
    }
.end annotation


# instance fields
.field final Zo:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$2;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass$2;->Hw()[Lorg/codehaus/groovy/reflection/CachedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public Hw()[Lorg/codehaus/groovy/reflection/CachedConstructor;
    .registers 8

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$2$1;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/reflection/CachedClass$2$1;-><init>(Lorg/codehaus/groovy/reflection/CachedClass$2;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    array-length v1, v0

    new-array v2, v1, [Lorg/codehaus/groovy/reflection/CachedConstructor;

    const/4 v3, 0x0

    :goto_f
    if-eq v3, v1, :cond_1f

    new-instance v4, Lorg/codehaus/groovy/reflection/CachedConstructor;

    iget-object v5, p0, Lorg/codehaus/groovy/reflection/CachedClass$2;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Lorg/codehaus/groovy/reflection/CachedConstructor;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Ljava/lang/reflect/Constructor;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    return-object v2
.end method
