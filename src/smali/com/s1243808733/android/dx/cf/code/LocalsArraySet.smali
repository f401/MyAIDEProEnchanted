.class public Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
.super Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.source "LocalsArraySet.java"


# instance fields
.field private final primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

.field private final secondaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/cf/code/LocalsArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 58
    :goto_5
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 59
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)V
    .registers 6

    .line 84
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getMaxLocals()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
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

    move-result v0

    :goto_28
    if-ge v1, v0, :cond_47

    .line 91
    iget-object v2, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-nez v2, :cond_3b

    .line 94
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 96
    :cond_3b
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_47
    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/cf/code/LocalsArray;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 74
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 75
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    return-void
.end method

.method private getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    return-object p1
.end method

.method private mergeWithOne(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .registers 12

    .line 314
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1e
    if-ge v4, v2, :cond_54

    .line 319
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v6, :cond_45

    .line 324
    :try_start_2a
    invoke-virtual {v6, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v7
    :try_end_2e
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v7

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Merging one locals against caller block "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    :cond_45
    const/4 v7, 0x0

    :goto_46
    if-nez v5, :cond_4d

    if-eq v6, v7, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v5, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v5, 0x1

    .line 333
    :goto_4e
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 336
    :cond_54
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne p1, v0, :cond_5b

    if-nez v5, :cond_5b

    return-object p0

    .line 340
    :cond_5b
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p1, v0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method private mergeWithSet(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .registers 15

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    iget-object v2, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_22
    if-ge v6, v3, :cond_72

    const/4 v8, 0x0

    if-ge v6, v1, :cond_30

    .line 271
    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    goto :goto_31

    :cond_30
    move-object v9, v8

    :goto_31
    if-ge v6, v2, :cond_3c

    .line 272
    iget-object v10, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    goto :goto_3d

    :cond_3c
    move-object v10, v8

    :goto_3d
    if-ne v9, v10, :cond_40

    :goto_3f
    goto :goto_47

    :cond_40
    if-nez v9, :cond_44

    move-object v8, v10

    goto :goto_64

    :cond_44
    if-nez v10, :cond_49

    goto :goto_3f

    :goto_47
    move-object v8, v9

    goto :goto_64

    .line 283
    :cond_49
    :try_start_49
    invoke-virtual {v9, v10}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v8
    :try_end_4d
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_64

    :catch_4e
    move-exception v10

    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Merging locals set for caller block "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-virtual {v10, v11}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    :goto_64
    if-nez v7, :cond_6b

    if-eq v9, v8, :cond_69

    goto :goto_6b

    :cond_69
    const/4 v7, 0x0

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v7, 0x1

    .line 292
    :goto_6c
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 295
    :cond_72
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne p1, v0, :cond_79

    if-nez v7, :cond_79

    return-object p0

    .line 299
    :cond_79
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p1, v0, v4}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    return-object p1
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 7

    .line 124
    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_41

    .line 129
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v2, :cond_3e

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
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_41
    return-void
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    .line 118
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)V

    return-object v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1
.end method

.method public getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1
.end method

.method public getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1
.end method

.method public getMaxLocals()I
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    return-object v0
.end method

.method public invalidate(I)V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 218
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    .line 220
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v1, :cond_e

    .line 222
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->invalidate(I)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 176
    :cond_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 178
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v1, :cond_17

    .line 182
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method public bridge synthetic merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .registers 4

    .line 349
    :try_start_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    if-eqz v0, :cond_c

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithSet(Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object p1

    goto :goto_13

    .line 352
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithOne(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object p1
    :try_end_13
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_13} :catch_17

    .line 362
    :goto_13
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    return-object p1

    :catch_17
    move-exception v0

    .line 355
    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 357
    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 359
    throw v0
.end method

.method public mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .registers 11

    .line 386
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    if-ne v0, p1, :cond_12

    move-object p1, v0

    goto :goto_19

    :cond_12
    if-nez v0, :cond_15

    goto :goto_19

    .line 397
    :cond_15
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p1

    :goto_19
    if-ne p1, v0, :cond_20

    .line 400
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-ne v1, v0, :cond_20

    return-object p0

    .line 409
    :cond_20
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 410
    add-int/lit8 v1, p2, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_34
    if-ge v4, v1, :cond_5d

    if-ne v4, p2, :cond_3a

    move-object v6, p1

    goto :goto_46

    :cond_3a
    if-ge v4, v0, :cond_45

    .line 422
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    goto :goto_46

    :cond_45
    move-object v6, v3

    :goto_46
    if-eqz v6, :cond_57

    if-nez v5, :cond_4f

    .line 427
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v5

    goto :goto_57

    .line 429
    :cond_4f
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v5

    .line 433
    :cond_57
    :goto_57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 436
    :cond_5d
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p1, v5, v2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    .line 438
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 5

    .line 196
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v1, :cond_e

    .line 202
    invoke-virtual {v1, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method public set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 3

    .line 210
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    return-void
.end method

.method public setImmutable()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->primary:Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v1, :cond_b

    .line 109
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->setImmutable()V

    goto :goto_b

    .line 112
    :cond_1d
    invoke-super {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->setImmutable()V

    return-void
.end method

.method public subArrayForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    .line 452
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p1

    return-object p1
.end method

.method public toHuman()Ljava/lang/String;
    .registers 8

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(locals array set; primary)\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_55

    .line 152
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    if-eqz v4, :cond_52

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(locals array set: primary for caller "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 163
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
