.class public final Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "RegisterSpecList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;I)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILjava/lang/Object;)V
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 3

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 4

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 55
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 5

    .line 69
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 71
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 72
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    .line 88
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 90
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 91
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 92
    const/4 p0, 0x3

    invoke-virtual {v0, p0, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getRegistersSize()I
    .registers 5

    .line 203
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_1a

    .line 207
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v3, :cond_17

    .line 209
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v3

    if-le v3, v2, :cond_17

    move v2, v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return v2
.end method

.method public getType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    return-object p1
.end method

.method public getWordCount()I
    .registers 5

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    .line 118
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method public indexOfRegister(I)I
    .registers 5

    .line 170
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 174
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v2, p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 3

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public specForRegister(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 149
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 153
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public subset(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    .line 307
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 310
    sget-object p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object p1

    .line 313
    :cond_e
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 316
    :goto_15
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 317
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 318
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 323
    :cond_2d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 324
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_36
    return-object v1
.end method

.method public withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 3

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 12

    .line 378
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 385
    :cond_7
    new-instance v7, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/BitSet;IZLcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander-IA;)V

    const/4 p1, 0x0

    :goto_13
    if-ge p1, v0, :cond_1b

    .line 388
    invoke-static {v7, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->-$$Nest$mexpandRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 391
    :cond_1b
    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->-$$Nest$mgetResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    return-object p1
.end method

.method public withFirst(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 7

    .line 228
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 229
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1a

    add-int/lit8 v4, v3, 0x1

    .line 232
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_d

    .line 235
    :cond_1a
    invoke-virtual {v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 237
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_26
    return-object v1
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    .line 339
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 346
    :cond_7
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_21

    .line 349
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v3, :cond_1e

    .line 351
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 355
    :cond_21
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 356
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_2a
    return-object v1
.end method

.method public withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    .line 251
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_b

    .line 254
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0

    .line 257
    :cond_b
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1e

    add-int/lit8 v3, v2, 0x1

    .line 260
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_11

    .line 263
    :cond_1e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 264
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_27
    return-object v1
.end method

.method public withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 5

    .line 278
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_b

    .line 281
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0

    .line 284
    :cond_b
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1d

    .line 287
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 290
    :cond_1d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 291
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_26
    return-object v1
.end method
