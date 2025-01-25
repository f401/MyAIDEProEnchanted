.class Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;
.super Lorg/codehaus/groovy/util/LazyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyCachedClassRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/LazyReference<",
        "Lorg/codehaus/groovy/reflection/CachedClass;",
        ">;"
    }
.end annotation


# instance fields
.field private final Zo:Lorg/codehaus/groovy/reflection/ClassInfo;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/LazyReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;->Zo:Lorg/codehaus/groovy/reflection/ClassInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic Hw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;->Hw()Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;->Zo:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;->Zo:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    return-object v0
.end method
