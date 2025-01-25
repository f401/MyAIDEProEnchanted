.class final Lcom/google/googlejavaformat/Doc$Tok;
.super Lcom/google/googlejavaformat/Doc;
.source "Doc.java"

# interfaces
.implements Lcom/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tok"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field private final tok:Lcom/google/googlejavaformat/Input$Tok;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Input$Tok;)V
    .registers 2

    .line 699
    invoke-direct {p0}, Lcom/google/googlejavaformat/Doc;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    .line 701
    return-void
.end method

.method static make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;
    .registers 2

    .line 710
    new-instance v0, Lcom/google/googlejavaformat/Doc$Tok;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/Doc$Tok;-><init>(Lcom/google/googlejavaformat/Input$Tok;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 2

    .line 715
    invoke-virtual {p1, p0}, Lcom/google/googlejavaformat/DocBuilder;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 716
    return-void
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 7

    .line 755
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    iget v1, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    invoke-interface {p1, v0, p2, v1}, Lcom/google/googlejavaformat/CommentsHelper;->rewrite(Lcom/google/googlejavaformat/Input$Tok;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    .line 756
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 757
    iget v2, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    sub-int v0, v1, v0

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    return-object v0
.end method

.method computeFlat()Ljava/lang/String;
    .registers 4

    .line 740
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    :goto_37
    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method computeRange()Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Range;->singleton(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$200()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method computeWidth()F
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/Newlines;->firstBreak(Ljava/lang/String;)I

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 723
    if-lez v0, :cond_16

    .line 724
    int-to-float v0, v0

    .line 732
    :goto_15
    return v0

    .line 725
    :cond_16
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 727
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    goto :goto_15

    .line 729
    :cond_36
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    int-to-float v0, v0

    goto :goto_15

    .line 732
    :cond_3e
    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    goto :goto_15

    :cond_44
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    int-to-float v0, v0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 767
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "tok"

    iget-object v2, p0, Lcom/google/googlejavaformat/Doc$Tok;->tok:Lcom/google/googlejavaformat/Input$Tok;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/googlejavaformat/Output;)V
    .registers 4

    .line 762
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Tok;->range()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    .line 763
    return-void
.end method
