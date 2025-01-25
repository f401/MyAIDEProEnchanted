.class public final Lcom/s1243808733/android/dx/dex/code/CatchTable;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "CatchTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/code/CatchTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v1

    .line 71
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_25

    .line 75
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v5

    .line 76
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result v5

    if-eqz v5, :cond_22

    return v5

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    if-ge v1, v2, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    if-le v1, v2, :cond_2d

    const/4 p1, 0x1

    return p1

    :cond_2d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)V
    .registers 3

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->set0(ILjava/lang/Object;)V

    return-void
.end method
