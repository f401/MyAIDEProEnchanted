.class public Lcom/s1243808733/android/dexmerger/MultDexMerger;
.super Ljava/lang/Object;
.source "MultDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;,
        Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;
    }
.end annotation


# static fields
.field private static final COMPACT_WASTE_THRESHOLD:I = 0x100000


# instance fields
.field private final mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private final mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    .line 23
    iput-object p2, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    return-void
.end method


# virtual methods
.method public getContext()Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-object v0
.end method

.method public varargs merger([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger;

    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-virtual {v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->getCollisionPolicy()Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    .line 44
    iget-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-virtual {p1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->getCompactWasteThreshold()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->setCompactWasteThreshold(I)V

    .line 45
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object p1

    return-object p1
.end method

.method public merger()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mergerTo(Ljava/util/List;)V

    return-object v0
.end method

.method public mergerTo(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-virtual {v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->getGroupDexs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-eqz p1, :cond_2a

    if-eqz v0, :cond_2a

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 36
    new-array v4, v1, [Lcom/s1243808733/android/dex/Dex;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/s1243808733/android/dex/Dex;

    .line 37
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dexmerger/MultDexMerger;->merger([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex;

    move-result-object v3

    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    return-void
.end method
