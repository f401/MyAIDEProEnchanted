.class final Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InactiveComparisonChain"
.end annotation


# instance fields
.field final result:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    .line 130
    iput p1, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    .line 131
    return-void
.end method


# virtual methods
.method public compare(DD)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    .line 161
    return-object p0
.end method

.method public compare(FF)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 156
    return-object p0
.end method

.method public compare(II)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 146
    return-object p0
.end method

.method public compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    .line 151
    return-object p0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .registers 3
    .param p1  # Ljava/lang/Comparable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Comparable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 135
    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    .line 141
    return-object p0
.end method

.method public compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 171
    return-object p0
.end method

.method public compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    .line 166
    return-object p0
.end method

.method public result()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return v0
.end method
