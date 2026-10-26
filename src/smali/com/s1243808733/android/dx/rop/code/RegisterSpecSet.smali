.class public final Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "RegisterSpecSet.java"


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;


# instance fields
.field private size:I

.field private final specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 47
    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 49
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 50
    iput v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    return-void

    :cond_0
    move v0, v1

    .line 4294967295
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    .line 56
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    if-nez v1, :cond_1

    .line 76
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

    :goto_1
    if-ge v1, v3, :cond_4

    .line 69
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v1

    .line 70
    aget-object v5, v2, v1

    if-ne v4, v5, :cond_3

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_3
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public findMatchingLocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 207
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v4, v0

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    .line 92
    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v2
.end method

.method public intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V
    .locals 6

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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 330
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    .line 339
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    aget-object v5, v2, v1

    .line 337
    invoke-virtual {v4, v5, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    if-eq v5, v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v5, v4, v1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v3, :cond_3

    .line 344
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v1, v0

    .line 383
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 386
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v0, v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    return-object v2
.end method

.method public put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    const/4 v4, 0x2

    .line 263
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    if-eqz p1, :cond_2

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    aput-object p1, v1, v0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 277
    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 278
    :try_start_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 279
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 284
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    .line 288
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec.getReg() out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .locals 3

    .line 298
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 3

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 248
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    if-gez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v3, v0

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 148
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

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

    :goto_0
    if-ge v1, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 112
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v1, v0

    .line 358
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    add-int v0, v1, p1

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 361
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v0, v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 369
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    :cond_2
    return-object v2
.end method
