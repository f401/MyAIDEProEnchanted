.class public final Lcom/google/googlejavaformat/Doc$Break;
.super Lcom/google/googlejavaformat/Doc;
.source "Doc.java"

# interfaces
.implements Lcom/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Break"
.end annotation


# instance fields
.field broken:Z

.field private final fillMode:Lcom/google/googlejavaformat/Doc$FillMode;

.field private final flat:Ljava/lang/String;

.field newIndent:I

.field private final optTag:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;"
        }
    .end annotation
.end field

.field private final plusIndent:Lcom/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Lcom/google/googlejavaformat/Doc;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/google/googlejavaformat/Doc$Break;->fillMode:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 565
    iput-object p2, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    .line 566
    iput-object p3, p0, Lcom/google/googlejavaformat/Doc$Break;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 567
    iput-object p4, p0, Lcom/google/googlejavaformat/Doc$Break;->optTag:Lcom/google/common/base/Optional;

    .line 568
    return-void
.end method

.method static synthetic access$100(Lcom/google/googlejavaformat/Doc$Break;)Lcom/google/googlejavaformat/Doc$FillMode;
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->fillMode:Lcom/google/googlejavaformat/Doc$FillMode;

    return-object v0
.end method

.method public static make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Break;
    .registers 5

    .line 579
    new-instance v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/googlejavaformat/Doc$Break;-><init>(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method public static make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Doc$Break;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/googlejavaformat/Doc$Break;"
        }
    .end annotation

    .line 593
    new-instance v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/googlejavaformat/Doc$Break;-><init>(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method public static makeForced()Lcom/google/googlejavaformat/Doc$Break;
    .registers 3

    .line 602
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 2

    .line 625
    invoke-virtual {p1, p0}, Lcom/google/googlejavaformat/DocBuilder;->breakDoc(Lcom/google/googlejavaformat/Doc$Break;)V

    .line 626
    return-void
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 6

    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Did you mean computeBreaks(State, int, boolean)?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/Doc$State;IZ)Lcom/google/googlejavaformat/Doc$State;
    .registers 6

    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->optTag:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->optTag:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/Output$BreakTag;->recordBroken(Z)V

    .line 654
    :cond_0
    if-eqz p3, :cond_1

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/Doc$Break;->broken:Z

    .line 656
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->plusIndent:Lcom/google/googlejavaformat/Indent;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Indent;->eval()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/Doc$Break;->newIndent:I

    .line 657
    invoke-virtual {p1, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    .line 659
    :cond_1
    iput-boolean v1, p0, Lcom/google/googlejavaformat/Doc$Break;->broken:Z

    .line 660
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/Doc$Break;->newIndent:I

    .line 661
    iget v0, p1, Lcom/google/googlejavaformat/Doc$State;->column:I

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    goto :goto_0
.end method

.method computeFlat()Ljava/lang/String;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    return-object v0
.end method

.method computeRange()Lcom/google/common/collect/Range;
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

    .line 640
    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method computeWidth()F
    .registers 2

    .line 630
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Break;->isForced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method getPlusIndent()I
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->plusIndent:Lcom/google/googlejavaformat/Indent;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Indent;->eval()I

    move-result v0

    return v0
.end method

.method isForced()Z
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->fillMode:Lcom/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 686
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Break;->fillMode:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 687
    const-string v2, "fillMode"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    .line 688
    const-string v2, "flat"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Break;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 689
    const-string v2, "plusIndent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Break;->optTag:Lcom/google/common/base/Optional;

    .line 690
    const-string v2, "optTag"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    return-object v0
.end method

.method public write(Lcom/google/googlejavaformat/Output;)V
    .registers 4

    .line 676
    iget-boolean v0, p0, Lcom/google/googlejavaformat/Doc$Break;->broken:Z

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "\n"

    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    .line 678
    iget v0, p0, Lcom/google/googlejavaformat/Doc$Break;->newIndent:I

    invoke-virtual {p1, v0}, Lcom/google/googlejavaformat/Output;->indent(I)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Break;->range()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    goto :goto_0
.end method
