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
.method static final constructor <clinit>()V
    .registers 2

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
    .registers 8

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    move v1, v0

    .line 141
    :goto_0
    if-lt v1, p2, :cond_1

    .line 148
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 142
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 143
    if-eq v3, v2, :cond_0

    sget-object v4, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq v3, v4, :cond_0

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .registers 3

    .line 60
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    return-object v0
.end method

.method public listFor(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .registers 9

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v4

    .line 103
    new-array v5, v4, [Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move v3, v2

    move v1, v2

    .line 106
    :goto_0
    if-lt v3, v4, :cond_0

    .line 114
    if-nez v1, :cond_1

    .line 115
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 124
    :goto_1
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->covers(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0, v5, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->typeNotFound(Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;[Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    aput-object v0, v5, v1

    .line 110
    add-int/lit8 v0, v1, 0x1

    .line 106
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    .line 119
    :goto_3
    if-lt v2, v1, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->setImmutable()V

    goto :goto_1

    .line 120
    :cond_2
    aget-object v3, v5, v2

    invoke-virtual {v0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set(ILcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public set(IIIILcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            ")V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;-><init>(IIILcom/s1243808733/android/dx/rop/cst/CstType;)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;",
            ")V"
        }
    .end annotation

    .line 70
    if-nez p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public toRopCatchList()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 5

    .line 205
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v2

    .line 206
    if-nez v2, :cond_0

    .line 207
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 217
    :goto_0
    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 212
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toTargetList(I)Lcom/s1243808733/android/dx/util/IntList;
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "noException < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    if-gez p1, :cond_1

    move v0, v1

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v4

    .line 170
    if-nez v4, :cond_3

    .line 171
    if-eqz v0, :cond_2

    .line 176
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 196
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 167
    goto :goto_0

    .line 182
    :cond_2
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    goto :goto_1

    .line 185
    :cond_3
    if-eqz v0, :cond_5

    move v3, v2

    :goto_2
    new-instance v2, Lcom/s1243808733/android/dx/util/IntList;

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 187
    :goto_3
    if-lt v1, v4, :cond_6

    .line 191
    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 195
    :cond_4
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    move-object v0, v2

    .line 196
    goto :goto_1

    :cond_5
    move v3, v1

    .line 185
    goto :goto_2

    .line 188
    :cond_6
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
