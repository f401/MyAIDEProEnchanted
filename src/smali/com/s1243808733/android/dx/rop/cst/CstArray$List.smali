.class public final Lcom/s1243808733/android/dx/rop/cst/CstArray$List;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "CstArray.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/rop/cst/CstArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/cst/CstArray$List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I
    .locals 7

    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v3

    .line 117
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v2, v3

    :goto_0
    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_2

    .line 121
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 122
    invoke-virtual {p1, v6}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 123
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    return v0

    :cond_0
    move v2, v4

    .line 117
    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    if-ge v3, v4, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    if-le v3, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 101
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 147
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set0(ILjava/lang/Object;)V

    return-void
.end method
