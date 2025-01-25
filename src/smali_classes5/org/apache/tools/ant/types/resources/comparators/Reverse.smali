.class public Lorg/apache/tools/ant/types/resources/comparators/Reverse;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Reverse.java"


# static fields
.field private static final ONE_NESTED:Ljava/lang/String; = "You must not nest more than one ResourceComparator for reversal."


# instance fields
.field private nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    .line 51
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    if-nez v0, :cond_b

    .line 61
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->setChecked(Z)V

    .line 63
    return-void

    .line 59
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not nest more than one ResourceComparator for reversal."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    :goto_6
    return-void

    .line 82
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_6

    .line 85
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    if-eqz v0, :cond_18

    .line 86
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 88
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->setChecked(Z)V

    goto :goto_6
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 5

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;->nested:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 73
    return v0
.end method
