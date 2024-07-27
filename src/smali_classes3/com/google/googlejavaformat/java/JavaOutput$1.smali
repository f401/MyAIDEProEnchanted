.class Lcom/google/googlejavaformat/java/JavaOutput$1;
.super Ljava/lang/Object;
.source "JavaOutput.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/JavaOutput;->applyReplacements(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/googlejavaformat/java/Replacement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/googlejavaformat/java/Replacement;Lcom/google/googlejavaformat/java/Replacement;)I
    .registers 5

    .line 85
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 82
    check-cast p1, Lcom/google/googlejavaformat/java/Replacement;

    check-cast p2, Lcom/google/googlejavaformat/java/Replacement;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaOutput$1;->compare(Lcom/google/googlejavaformat/java/Replacement;Lcom/google/googlejavaformat/java/Replacement;)I

    move-result v0

    return v0
.end method
