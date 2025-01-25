.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation

    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v0, p4

    .line 66
    :goto_7
    if-ge v0, v2, :cond_1f

    .line 67
    add-int v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 68
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 69
    if-lez v3, :cond_1d

    .line 70
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_7

    :cond_1d
    move v0, v1

    .line 72
    goto :goto_7

    .line 75
    :cond_1f
    return v0
.end method
