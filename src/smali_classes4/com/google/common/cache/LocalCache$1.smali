.class final Lcom/google/common/cache/LocalCache$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$ValueReference",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 4
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 697
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 2

    .line 716
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 2

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method
