.class public Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
.super Ljava/lang/Object;
.source "MultDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dexmerger/MultDexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field private mCompactWasteThreshold:I

.field private mDexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;"
        }
    .end annotation
.end field

.field private final mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private mMaxIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 105
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    .line 98
    sget-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 100
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    .line 102
    const v0, 0xffff

    iput v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method private add(Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_65

    if-ltz p2, :cond_65

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_d

    goto :goto_65

    .line 209
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 215
    :goto_18
    iget-object v6, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p2, v6, :cond_5f

    .line 217
    iget-object v6, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dex/Dex;

    .line 219
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v2, v7

    .line 220
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 221
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    .line 222
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v5, v7

    .line 224
    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->isIndexOverflow([I)Z

    move-result v7

    if-eqz v7, :cond_57

    goto :goto_5c

    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 232
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5c
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 235
    :cond_5f
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/util/List;I)V

    :cond_65
    :goto_65
    return-void
.end method

.method private varargs isIndexOverflow([I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_12

    .line 241
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 242
    aget v2, p1, v1

    iget v3, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    if-le v2, v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method private print(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 252
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 254
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dex/Dex;

    .line 255
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2c

    .line 257
    :cond_42
    iget-object v3, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", method="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_6e
    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 3

    if-eqz p1, :cond_7

    .line 122
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs add([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_e

    .line 128
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 129
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-object p0
.end method

.method public varargs add([Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_e

    .line 139
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 140
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-object p0
.end method

.method public varargs add([Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_e

    .line 150
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 151
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-object p0
.end method

.method public builder()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 1

    return-object p0
.end method

.method public clear()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public create()Lcom/s1243808733/android/dexmerger/MultDexMerger;
    .registers 4

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/util/List;I)V

    .line 193
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->print(Ljava/util/List;)V

    .line 195
    new-instance v1, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    invoke-direct {v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;-><init>()V

    .line 196
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->setGroupDexs(Ljava/util/List;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->setCollisionPolicy(Lcom/s1243808733/android/dx/merge/CollisionPolicy;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    .line 198
    iget v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;->setCompactWasteThreshold(I)Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;

    .line 200
    new-instance v0, Lcom/s1243808733/android/dexmerger/MultDexMerger;

    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0, v2, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dexmerger/MultDexMerger$Parameter;)V

    return-object v0
.end method

.method public getCollisionPolicy()Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object v0
.end method

.method public getDexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    return-object v0
.end method

.method public setCollisionPolicy(Lcom/s1243808733/android/dx/merge/CollisionPolicy;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 160
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object p0

    .line 158
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "collisionPolicy is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompactWasteThreshold(I)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 2

    .line 169
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    return-object p0
.end method

.method public setDexs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    return-void
.end method

.method public setMaxIndex(I)V
    .registers 4

    if-ltz p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 177
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    return-void

    .line 175
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type ID not in [0, 0xffff]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
