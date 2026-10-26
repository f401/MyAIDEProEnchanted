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
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;"
        }
    .end annotation
.end field

.field private final mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private mMaxIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .locals 1

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, p2

    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, p2

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    .line 219
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v2, v9

    .line 220
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v4, v9

    .line 221
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v5, v9

    .line 222
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v6, v9

    .line 224
    const/4 v9, 0x4

    new-array v9, v9, [I

    aput v2, v9, v3

    const/4 v10, 0x1

    aput v4, v9, v10

    const/4 v10, 0x2

    aput v5, v9, v10

    const/4 v10, 0x3

    aput v6, v9, v10

    invoke-direct {p0, v9}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->isIndexOverflow([I)Z

    move-result v9

    if-eqz v9, :cond_2

    move p2, v1

    .line 232
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v1, p2

    move v7, v0

    goto :goto_1

    .line 224
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .line 232
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 235
    :cond_3
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private varargs isIndexOverflow([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 241
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 242
    aget v2, p1, v1

    iget v3, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private print(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

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

    move v4, v3

    .line 251
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 252
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    .line 255
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 128
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 129
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs add([Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 139
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 140
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs add([Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 150
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 151
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public builder()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 0

    return-object p0
.end method

.method public clear()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public create()Lcom/s1243808733/android/dexmerger/MultDexMerger;
    .locals 3

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
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object v0
.end method

.method public getDexs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    return-object v0
.end method

.method public setCollisionPolicy(Lcom/s1243808733/android/dx/merge/CollisionPolicy;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object p0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collisionPolicy is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompactWasteThreshold(I)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .locals 0

    .line 169
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    return-object p0
.end method

.method public setDexs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/Dex;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    return-void
.end method

.method public setMaxIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 177
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type ID not in [0, 0xffff]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
