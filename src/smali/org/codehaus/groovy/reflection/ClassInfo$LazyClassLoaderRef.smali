.class Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;
.super Lorg/codehaus/groovy/util/LazyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyClassLoaderRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/LazyReference",
        "<",
        "Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;",
        ">;"
    }
.end annotation


# instance fields
.field private final Zo:Lorg/codehaus/groovy/reflection/ClassInfo;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;->Zo:Lorg/codehaus/groovy/reflection/ClassInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;->Hw()Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;
    .registers 3

    new-instance v1, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;->Zo:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method
