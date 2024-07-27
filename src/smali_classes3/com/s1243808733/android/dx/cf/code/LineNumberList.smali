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
.method static final constructor <clinit>()V
    .registers 2

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

    const/4 v1, 0x0

    .line 39
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    if-ne p0, v0, :cond_0

    .line 56
    :goto_0
    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v3

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v4

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    move v2, v1

    .line 48
    :goto_1
    if-lt v2, v3, :cond_1

    .line 52
    :goto_2
    if-lt v1, v4, :cond_2

    move-object p1, v0

    .line 56
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_2
    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;
    .registers 3

    .line 75
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    return-object v0
.end method

.method public pcToLine(I)I
    .registers 8

    const/4 v4, -0x1

    .line 117
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->size()I

    move-result v5

    .line 121
    const/4 v1, 0x0

    move v3, v1

    move v2, v4

    move v0, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 134
    :cond_0
    return v0

    .line 122
    :cond_1
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->get(I)Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->getStartPc()I

    move-result v1

    .line 124
    if-gt v1, p1, :cond_2

    if-le v1, v2, :cond_2

    .line 126
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->getLineNumber()I

    move-result v0

    .line 127
    if-eq v1, p1, :cond_0

    .line 121
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public set(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;

    invoke-direct {v0, p2, p3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/LineNumberList$Item;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;",
            ")V"
        }
    .end annotation

    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    return-void
.end method
