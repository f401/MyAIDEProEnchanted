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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    sget-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    const v0, 0xffff

    iput v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method private add(Ljava/util/List;I)V
    .registers 14
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

    const/4 v2, 0x0

    .line 205
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

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

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p2

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 235
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0, p1, v7}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/util/List;I)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    .line 219
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v1, v9

    .line 220
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v5, v9

    .line 221
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v3, v9

    .line 222
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v4, v9

    .line 224
    const/4 v9, 0x4

    new-array v9, v9, [I

    aput v1, v9, v2

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    aput v3, v9, v10

    const/4 v10, 0x3

    aput v4, v9, v10

    invoke-direct {p0, v9}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->isIndexOverflow([I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v7

    .line 215
    :goto_2
    add-int/lit8 p2, v6, 0x1

    move v6, p2

    move v7, v0

    goto :goto_1

    .line 231
    :cond_3
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    goto :goto_2
.end method

.method private varargs isIndexOverflow([I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_0
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 246
    :cond_0
    :goto_1
    return v0

    .line 242
    :cond_1
    aget v2, p1, v1

    iget v3, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    if-le v2, v3, :cond_2

    .line 243
    const/4 v0, 0x1

    goto :goto_1

    .line 241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private print(Ljava/util/List;)V
    .registers 13
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

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "group size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 251
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 254
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    .line 255
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDxContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ", method="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 254
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dex/Dex;

    .line 255
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 3

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
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

    move-result-object v0

    return-object v0
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

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4

    .line 128
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 131
    :cond_0
    return-object p0

    .line 129
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs add([Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 142
    :cond_0
    return-object p0

    .line 140
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs add([Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 153
    :cond_0
    return-object p0

    .line 151
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add(Ljava/lang/String;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public builder()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 1

    .line 186
    return-object p0
.end method

.method public clear()Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mDexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
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

    .line 201
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
    .registers 4

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collisionPolicy is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCollisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 161
    return-object p0
.end method

.method public setCompactWasteThreshold(I)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;
    .registers 2

    .line 169
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mCompactWasteThreshold:I

    .line 170
    return-object p0
.end method

.method public setDexs(Ljava/util/List;)V
    .registers 2
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 174
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 175
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type ID not in [0, 0xffff]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->mMaxIndex:I

    return-void
.end method
