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
.method static final constructor <clinit>()V
    .registers 2

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

    const/4 v1, 0x0

    .line 43
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    if-ne p0, v0, :cond_0

    .line 61
    :goto_0
    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v4

    .line 50
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    move v2, v1

    .line 52
    :goto_1
    if-lt v2, v3, :cond_1

    .line 56
    :goto_2
    if-lt v1, v4, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    move-object p1, v0

    .line 61
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_2
    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static mergeDescriptorsAndSignatures(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 7

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v2

    .line 81
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 93
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    .line 94
    return-object v3

    .line 84
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->itemToLocal(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    invoke-static {v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->access$1000006(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->withSignature(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v0

    .line 90
    :cond_1
    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 3

    .line 113
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    return-object v0
.end method

.method public itemToLocal(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v2

    .line 163
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 171
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    :cond_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    .line 166
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->matchesAllButType(Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;
    .registers 7

    .line 186
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v2

    .line 188
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 196
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    :cond_0
    return-object v0

    .line 189
    :cond_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    .line 191
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->matchesPcAndIndex(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public set(IIILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "I)V"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;-><init>(IILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;",
            ")V"
        }
    .end annotation

    .line 123
    if-nez p2, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    return-void
.end method
