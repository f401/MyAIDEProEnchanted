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
    .registers 2

    .line 110
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v3

    .line 117
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v4

    .line 118
    if-ge v3, v4, :cond_1

    move v2, v3

    :goto_0
    move v6, v5

    .line 120
    :goto_1
    if-lt v6, v2, :cond_2

    .line 129
    if-ge v3, v4, :cond_3

    .line 130
    const/4 v0, -0x1

    .line 135
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v2, v4

    .line 118
    goto :goto_0

    .line 121
    :cond_2
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

    .line 124
    if-nez v0, :cond_0

    .line 120
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 131
    :cond_3
    if-le v3, v4, :cond_4

    .line 132
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v5

    .line 135
    goto :goto_2
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 147
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set0(ILjava/lang/Object;)V

    return-void
.end method
