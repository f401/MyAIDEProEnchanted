.class public final Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "ByteCatchList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method private static typeNotFound(Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;[Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;I)Z
    .registers 7

    .line 139
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_19

    .line 142
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    if-eq v2, p0, :cond_18

    .line 143
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne v2, v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    return-object p1
.end method

.method public listFor(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .registers 9

    .line 102
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    .line 103
    new-array v1, v0, [Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v0, :cond_22

    .line 107
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v5

    .line 108
    invoke-virtual {v5, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->covers(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v5, v1, v4}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->typeNotFound(Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;[Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 109
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_22
    if-nez v4, :cond_27

    .line 115
    sget-object p1, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-object p1

    .line 118
    :cond_27
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-direct {p1, v4}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    :goto_2c
    if-ge v2, v4, :cond_36

    .line 120
    aget-object v0, v1, v2

    invoke-virtual {p1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set(ILcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 123
    :cond_36
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->setImmutable()V

    return-object p1
.end method

.method public set(IIIILcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 7

    .line 90
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;-><init>(IIILcom/s1243808733/android/dx/rop/cst/CstType;)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    return-void

    .line 71
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRopCatchList()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 5

    .line 205
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 207
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0

    .line 210
    :cond_9
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_23

    .line 213
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 216
    :cond_23
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    return-object v1
.end method

.method public toTargetList(I)Lcom/s1243808733/android/dx/util/IntList;
    .registers 7

    const/4 v0, -0x1

    if-lt p1, v0, :cond_39

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 168
    :goto_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v2

    if-nez v2, :cond_19

    if-eqz v1, :cond_16

    .line 176
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    return-object p1

    .line 182
    :cond_16
    sget-object p1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    return-object p1

    .line 185
    :cond_19
    new-instance v3, Lcom/s1243808733/android/dx/util/IntList;

    add-int v4, v2, v1

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    :goto_20
    if-ge v0, v2, :cond_30

    .line 188
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_30
    if-eqz v1, :cond_35

    .line 192
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 195
    :cond_35
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-object v3

    .line 164
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "noException < -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method
