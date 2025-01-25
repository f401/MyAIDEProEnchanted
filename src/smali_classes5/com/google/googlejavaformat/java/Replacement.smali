.class public Lcom/google/googlejavaformat/java/Replacement;
.super Ljava/lang/Object;
.source "Replacement.java"


# instance fields
.field private final replaceRange:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final replacementString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_14

    .line 36
    iput-object p1, p0, Lcom/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/Range;

    .line 37
    if-eqz p2, :cond_c

    .line 40
    iput-object p2, p0, Lcom/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    .line 41
    return-void

    .line 38
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null replacementString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null replaceRange"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(IILjava/lang/String;)Lcom/google/googlejavaformat/java/Replacement;
    .registers 6

    .line 44
    new-instance v0, Lcom/google/googlejavaformat/java/Replacement;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/googlejavaformat/java/Replacement;-><init>(Lcom/google/common/collect/Range;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Range;Ljava/lang/String;)Lcom/google/googlejavaformat/java/Replacement;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/googlejavaformat/java/Replacement;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/google/googlejavaformat/java/Replacement;

    invoke-direct {v0, p0, p1}, Lcom/google/googlejavaformat/java/Replacement;-><init>(Lcom/google/common/collect/Range;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p1, p0, :cond_5

    .line 75
    :cond_4
    :goto_4
    return v0

    .line 70
    :cond_5
    instance-of v2, p1, Lcom/google/googlejavaformat/java/Replacement;

    if-eqz v2, :cond_25

    .line 71
    check-cast p1, Lcom/google/googlejavaformat/java/Replacement;

    .line 72
    iget-object v2, p0, Lcom/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/Range;

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/Replacement;->getReplacementString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    move v0, v1

    .line 75
    goto :goto_4
.end method

.method public getReplaceRange()Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public getReplacementString()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/Range;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
