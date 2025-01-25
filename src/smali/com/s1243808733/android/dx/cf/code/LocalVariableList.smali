.class public final Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "LocalVariableList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static concat(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 8

    .line 43
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    if-ne p0, v0, :cond_5

    return-object p1

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v1

    .line 50
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_22

    .line 53
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_22
    :goto_22
    if-ge v3, v1, :cond_30

    .line 57
    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 60
    :cond_30
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    return-object v2
.end method

.method public static mergeDescriptorsAndSignatures(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 7

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 81
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_24

    .line 84
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v3

    .line 85
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->itemToLocal(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 87
    invoke-static {v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->-$$Nest$mgetSignature(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->withSignature(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v3

    .line 90
    :cond_1e
    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 93
    :cond_24
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 2

    .line 113
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    return-object p1
.end method

.method public itemToLocal(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 164
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    if-eqz v2, :cond_16

    .line 166
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->matchesAllButType(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 7

    .line 186
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 189
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    if-eqz v2, :cond_16

    .line 191
    invoke-virtual {v2, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->matchesPcAndIndex(II)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public set(IIILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V
    .registers 16

    .line 147
    new-instance v7, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;-><init>(IILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    invoke-virtual {p0, p1, v7}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    return-void

    .line 124
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
