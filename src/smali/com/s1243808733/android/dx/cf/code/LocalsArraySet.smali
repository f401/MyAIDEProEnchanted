.class public Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
.super Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.source "LocalsArraySet.java"


# instance fields
.field private final primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

.field private final secondaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/cf/code/LocalsArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 59
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    return-void

    .line 4294967295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)V
    .locals 4

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getMaxLocals()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 86
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 91
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/cf/code/LocalsArray;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 74
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 75
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    goto :goto_0
.end method

.method private mergeWithOne(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .locals 10

    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v5

    .line 315
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v7, :cond_3

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_1

    .line 324
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 326
    :goto_1
    if-nez v4, :cond_0

    if-eq v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 333
    :goto_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Merging one locals against caller block "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne v0, v5, :cond_4

    if-nez v4, :cond_4

    .line 340
    :goto_3
    return-object p0

    :cond_4
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p0, v5, v6}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method private mergeWithSet(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .locals 13

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v7

    .line 265
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 266
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 267
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 268
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    move v6, v1

    :goto_0
    if-ge v5, v10, :cond_7

    if-ge v5, v8, :cond_2

    .line 271
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-object v3, v0

    :goto_1
    if-ge v5, v9, :cond_3

    .line 272
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    :goto_2
    if-ne v3, v0, :cond_4

    :cond_0
    move-object v2, v3

    .line 285
    :goto_3
    if-nez v6, :cond_1

    if-eq v3, v2, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 292
    :goto_4
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v0

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 271
    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 272
    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    move-object v2, v0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_0

    .line 283
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Merging locals set for caller block "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne v0, v7, :cond_8

    if-nez v6, :cond_8

    .line 299
    :goto_5
    return-object p0

    :cond_8
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p0, v7, v11}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    goto :goto_5
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .locals 5

    .line 124
    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(locals array set: primary for caller "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 118
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)V

    return-object v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    return-object v0
.end method

.method public invalidate(I)V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 218
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    .line 220
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->invalidate(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 178
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_0
.end method

.method public bridge synthetic merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .locals 3

    .line 349
    :try_start_0
    instance-of v1, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    if-eqz v1, :cond_0

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithSet(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    :goto_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    return-object v1

    .line 352
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithOne(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 355
    const-string v2, "underlay locals:"

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 357
    const-string v2, "overlay locals:"

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 359
    throw v1
.end method

.method public mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .locals 9

    const/4 v4, 0x0

    .line 386
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    if-ne v0, p1, :cond_0

    move-object v3, v0

    .line 397
    :goto_0
    if-ne v3, v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne v1, v0, :cond_2

    .line 438
    :goto_1
    return-object p0

    .line 390
    :cond_0
    if-nez v0, :cond_1

    move-object v3, p1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v3

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 410
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 411
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move-object v1, v4

    move v5, v0

    :goto_2
    if-ge v5, v7, :cond_6

    if-ne v5, p2, :cond_3

    move-object v2, v3

    .line 422
    :goto_3
    if-eqz v2, :cond_7

    if-nez v1, :cond_5

    .line 427
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    .line 433
    :goto_4
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move-object v1, v0

    move v5, v2

    goto :goto_2

    .line 411
    :cond_3
    if-ge v5, v6, :cond_4

    .line 422
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-object v2, v0

    goto :goto_3

    :cond_4
    move-object v2, v4

    goto :goto_3

    .line 429
    :cond_5
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    goto :goto_4

    .line 436
    :cond_6
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p0, v1, v8}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    .line 438
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 1

    .line 210
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    return-void
.end method

.method public setImmutable()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->setImmutable()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->setImmutable()V

    return-void
.end method

.method public subArrayForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 452
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "(locals array set; primary)\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 152
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v0, :cond_0

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(locals array set: primary for caller "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
