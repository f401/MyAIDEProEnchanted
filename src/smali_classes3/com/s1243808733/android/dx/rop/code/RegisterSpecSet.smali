.class public final Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "RegisterSpecSet.java"


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;


# instance fields
.field private size:I

.field private final specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 49
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 50
    iput v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 56
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 61
    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 62
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v3, v1

    .line 64
    array-length v1, v2

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v0

    .line 68
    :goto_1
    if-lt v1, v3, :cond_2

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v1

    .line 70
    aget-object v5, v2, v1

    .line 72
    if-ne v4, v5, :cond_4

    .line 68
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_4
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0
.end method

.method public findMatchingLocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v2, v0

    .line 200
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 212
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :goto_1
    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v1

    .line 203
    if-nez v0, :cond_2

    .line 200
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v4, v0

    move v2, v1

    move v3, v1

    .line 90
    :goto_0
    if-lt v2, v4, :cond_0

    .line 96
    return v3

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v2

    .line 92
    if-nez v0, :cond_1

    move v0, v1

    .line 93
    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;",
            "Z)V"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    .line 323
    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 324
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v3, v0

    .line 325
    array-length v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 329
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    move v1, v0

    .line 343
    :goto_1
    if-lt v1, v3, :cond_3

    return-void

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v1

    .line 332
    if-nez v4, :cond_2

    .line 329
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_2
    aget-object v5, v2, v1

    invoke-virtual {v4, v5, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 338
    if-eq v5, v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v5, v4, v1

    goto :goto_2

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v0, v2, v1

    .line 343
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v2, v0

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 233
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :cond_0
    return-object v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v1

    .line 228
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v1, v0

    .line 383
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 385
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 392
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v0, v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 394
    return-object v2

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v0

    .line 387
    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x2

    .line 263
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 273
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object p1, v0, v1

    .line 275
    if-lez v1, :cond_1

    .line 276
    add-int/lit8 v2, v1, -0x1

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v2

    .line 278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 279
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v0, v3, v2

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 284
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_2
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec.getReg() out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;",
            ")V"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v1

    .line 300
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v0, v1, v2

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 5

    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 143
    if-gez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v3, v0

    move v1, v2

    move v0, v2

    .line 147
    :goto_0
    if-lt v1, v3, :cond_1

    .line 153
    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 156
    :cond_0
    return v0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v3, v0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v3, 0x19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    move v0, v2

    .line 108
    :goto_0
    if-lt v1, v3, :cond_0

    .line 120
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    .line 110
    if-eqz v2, :cond_1

    .line 111
    if-eqz v0, :cond_2

    .line 112
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 6

    .line 357
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v1, v0

    .line 358
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    add-int v0, v1, p1

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 360
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 367
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v0, v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 369
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 373
    :cond_0
    return-object v2

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v0

    .line 362
    if-eqz v3, :cond_2

    .line 363
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 360
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
