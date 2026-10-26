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
    .locals 2

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;I)Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILjava/lang/Object;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 2

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
    .locals 2

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .line 69
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 2

    .line 88
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 91
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 92
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 139
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getRegistersSize()I
    .locals 4

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 207
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v0

    if-le v0, v1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 4

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOfRegister(I)I
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public specForRegister(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

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

.method public subset(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 4

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 324
    :goto_0
    return-object v0

    .line 313
    :cond_0
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 316
    :goto_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 318
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 7

    .line 378
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 391
    :goto_0
    return-object p0

    .line 385
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/BitSet;IZLcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander-IA;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 388
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->-$$Nest$mexpandRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 391
    :cond_1
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->-$$Nest$mgetResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p0

    goto :goto_0
.end method

.method public withFirst(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 5

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 229
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    add-int/lit8 v0, v3, 0x1

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v4, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_1
    return-object v4
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 339
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 356
    :goto_0
    return-object p0

    .line 346
    :cond_0
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 349
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    :cond_3
    move-object p0, v1

    goto :goto_0
.end method

.method public withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    if-nez v3, :cond_1

    .line 254
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 260
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0
.end method

.method public withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_1

    .line 281
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 291
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 287
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0
.end method
