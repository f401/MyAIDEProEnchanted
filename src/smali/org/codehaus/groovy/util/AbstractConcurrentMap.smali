.class public abstract Lorg/codehaus/groovy/util/AbstractConcurrentMap;
.super Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;,
        Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public DW(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->FH(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    return-void
.end method

.method public j6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->DW(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;
    .registers 3

    invoke-super {p0, p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;

    return-object v0
.end method
