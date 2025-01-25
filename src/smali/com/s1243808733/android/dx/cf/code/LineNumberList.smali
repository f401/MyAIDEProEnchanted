.class public final Lcom/s1243808733/android/dx/cf/code/LineNumberList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "LineNumberList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/cf/code/LineNumberList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static concat(Lcom/s1243808733/android/dx/cf/code/LineNumberList;Lcom/s1243808733/android/dx/cf/code/LineNumberList;)Lcom/s1243808733/android/dx/cf/code/LineNumberList;
    .registers 8

    .line 39
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    if-ne p0, v0, :cond_5

    return-object p1

    .line 44
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v1

    .line 46
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_22

    .line 49
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_22
    :goto_22
    if-ge v3, v1, :cond_30

    .line 53
    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_30
    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    return-object p1
.end method

.method public pcToLine(I)I
    .registers 8

    .line 117
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_21

    .line 122
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->getStartPc()I

    move-result v5

    if-gt v5, p1, :cond_1e

    if-le v5, v2, :cond_1e

    .line 126
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->getLineNumber()I

    move-result v1

    if-ne v5, p1, :cond_1d

    goto :goto_21

    :cond_1d
    move v2, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    :goto_21
    return v1
.end method

.method public set(III)V
    .registers 5

    .line 100
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    invoke-direct {v0, p2, p3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    return-void

    .line 86
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
