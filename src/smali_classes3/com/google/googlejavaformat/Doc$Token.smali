.class public final Lcom/google/googlejavaformat/Doc$Token;
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
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
    }
.end annotation


# instance fields
.field private final breakAndIndentTrailingComment:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Indent;",
            ">;"
        }
    .end annotation
.end field

.field private final plusIndentCommentsBefore:Lcom/google/googlejavaformat/Indent;

.field private final realOrImaginary:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

.field private final token:Lcom/google/googlejavaformat/Input$Token;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Input$Token;",
            "Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Indent;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/google/googlejavaformat/Doc;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    .line 408
    iput-object p2, p0, Lcom/google/googlejavaformat/Doc$Token;->realOrImaginary:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 409
    iput-object p3, p0, Lcom/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lcom/google/googlejavaformat/Indent;

    .line 410
    iput-object p4, p0, Lcom/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment:Lcom/google/common/base/Optional;

    .line 411
    return-void
.end method

.method static make(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Op;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Input$Token;",
            "Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Indent;",
            ">;)",
            "Lcom/google/googlejavaformat/Op;"
        }
    .end annotation

    .line 441
    new-instance v0, Lcom/google/googlejavaformat/Doc$Token;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/googlejavaformat/Doc$Token;-><init>(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 2

    .line 465
    invoke-virtual {p1, p0}, Lcom/google/googlejavaformat/DocBuilder;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 466
    return-void
.end method

.method breakAndIndentTrailingComment()Lcom/google/common/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Indent;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 6

    .line 485
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    .line 486
    iget v1, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    return-object v0
.end method

.method computeFlat()Ljava/lang/String;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 480
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

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
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method getPlusIndentCommentsBefore()Lcom/google/googlejavaformat/Indent;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lcom/google/googlejavaformat/Indent;

    return-object v0
.end method

.method getToken()Lcom/google/googlejavaformat/Input$Token;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    return-object v0
.end method

.method realOrImaginary()Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->realOrImaginary:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 497
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    .line 498
    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Token;->realOrImaginary:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 499
    const-string v2, "realOrImaginary"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lcom/google/googlejavaformat/Indent;

    .line 500
    const-string v2, "plusIndentCommentsBefore"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    return-object v0
.end method

.method public write(Lcom/google/googlejavaformat/Output;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Token;->token:Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Token;->range()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    .line 493
    return-void
.end method
