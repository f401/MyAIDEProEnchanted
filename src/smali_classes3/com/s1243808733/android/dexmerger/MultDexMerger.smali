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

.method static synthetic access$L1000000()I
    .registers 1

    sget v0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->COMPACT_WASTE_THRESHOLD:I

    return v0
.end method

.method static synthetic access$S1000000(I)V
    .registers 1

    sput p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->COMPACT_WASTE_THRESHOLD:I

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
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-virtual {v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->getCompactWasteThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->setCompactWasteThreshold(I)V

    .line 45
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    return-object v0
.end method

.method public merger()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;^",
            "Ljava/io/IOException;"
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

    .line 29
    return-object v0
.end method

.method public mergerTo(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger;->mParameter:Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-virtual {v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->getGroupDexs()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 34
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 36
    new-array v4, v2, [Lcom/s1243808733/android/dex/Dex;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dex/Dex;

    .line 37
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger;->merger([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
