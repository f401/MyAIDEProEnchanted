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
    .registers 2

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 47
    :goto_6
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 49
    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 50
    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 56
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 60
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 61
    iget-object v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 62
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v2, v2

    .line 64
    array-length v3, v0

    if-ne v2, v3, :cond_36

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result p1

    if-eq v3, p1, :cond_1b

    goto :goto_36

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-ge p1, v2, :cond_34

    .line 69
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, p1

    .line 70
    aget-object v4, v0, p1

    if-ne v3, v4, :cond_27

    goto :goto_30

    :cond_27
    if-eqz v3, :cond_33

    .line 76
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_33

    :cond_30
    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_33
    :goto_33
    return v1

    :cond_34
    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public findMatchingLocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_17

    .line 201
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_14

    .line 207
    :cond_d
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object v2

    :cond_14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 171
    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1
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

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    .line 91
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v2

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_14

    .line 92
    :cond_10
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCode()I

    move-result v4

    :goto_14
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v3
.end method

.method public intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V
    .registers 8

    .line 321
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    .line 323
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 324
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 325
    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 327
    const/4 v2, -0x1

    iput v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_29

    .line 330
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    if-nez v3, :cond_1a

    goto :goto_26

    .line 336
    :cond_1a
    aget-object v4, p1, v2

    .line 337
    invoke-virtual {v3, v4, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    if-eq v4, v3, :cond_26

    .line 339
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v4, v3, v2

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    :goto_29
    if-ge v1, v0, :cond_33

    .line 344
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    return-void
.end method

.method public localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1a

    .line 226
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    .line 228
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 383
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_17

    .line 386
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    if-eqz v3, :cond_14

    .line 388
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 392
    :cond_17
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v0, v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    return-object v1
.end method

.method public put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 7

    .line 263
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    if-eqz p1, :cond_3a

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 272
    :try_start_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_e} :catch_31

    aput-object p1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_24

    add-int/lit8 v4, v0, -0x1

    .line 277
    aget-object v1, v1, v4

    if-eqz v1, :cond_24

    .line 278
    :try_start_1a
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    if-ne v1, v3, :cond_24

    .line 279
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v2, v1, v4

    .line 283
    :cond_24
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p1

    if-ne p1, v3, :cond_30

    .line 284
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    add-int/lit8 v0, v0, 0x1

    aput-object v2, p1, v0
    :try_end_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_30} :catch_31

    :cond_30
    return-void

    .line 288
    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_3a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5

    .line 298
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 301
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 303
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 245
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    .line 248
    :catch_d
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 5

    .line 141
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    if-gez v0, :cond_19

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    .line 148
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    if-eqz v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 153
    :cond_16
    iput v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    move v0, v1

    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    .line 109
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v2

    if-eqz v4, :cond_25

    if-eqz v3, :cond_21

    .line 112
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_21
    const/4 v3, 0x1

    .line 116
    :goto_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 120
    :cond_28
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 6

    .line 357
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 358
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1d

    .line 361
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1a

    .line 363
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 367
    :cond_1d
    iget p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    iput p1, v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 369
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 370
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    :cond_2a
    return-object v1
.end method
