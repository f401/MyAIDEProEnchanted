.class public Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;
.super Ljava/lang/Object;
.source "MultDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dexmerger/MultDexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field private mCompactWasteThreshold:I

.field private mGroupDexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCompactWasteThreshold:I

    return-void
.end method


# virtual methods
.method public getCollisionPolicy()Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object v0
.end method

.method public getCompactWasteThreshold()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCompactWasteThreshold:I

    return v0
.end method

.method public getGroupDexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mGroupDexs:Ljava/util/List;

    return-object v0
.end method

.method public setCollisionPolicy(Lcom/s1243808733/android/dx/merge/CollisionPolicy;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 74
    return-object p0
.end method

.method public setCompactWasteThreshold(I)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;
    .registers 2

    .line 82
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mCompactWasteThreshold:I

    .line 83
    return-object p0
.end method

.method public setGroupDexs(Ljava/util/List;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;)",
            "Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->mGroupDexs:Ljava/util/List;

    .line 65
    return-object p0
.end method
