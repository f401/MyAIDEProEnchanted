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
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/cst/CstArray$List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 110
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I
    .registers 9

    .line 116
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_27

    .line 121
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 122
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 123
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v5

    if-eqz v5, :cond_24

    return v5

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_27
    if-ge v0, v1, :cond_2b

    const/4 p1, -0x1

    return p1

    :cond_2b
    if-le v0, v1, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 101
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 147
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set0(ILjava/lang/Object;)V

    return-void
.end method
