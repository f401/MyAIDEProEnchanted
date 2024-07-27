.class final Lcom/google/googlejavaformat/java/JavaInput$Tok;
.super Ljava/lang/Object;
.source "JavaInput.java"

# interfaces
.implements Lcom/google/googlejavaformat/Input$Tok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tok"
.end annotation


# instance fields
.field private final columnI:I

.field private final index:I

.field private final isToken:Z

.field private final kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field private final originalText:Ljava/lang/String;

.field private final position:I

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V
    .registers 8

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput p1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->index:I

    .line 534
    iput-object p2, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    .line 535
    iput-object p3, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    .line 536
    iput p4, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->position:I

    .line 537
    iput p5, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    .line 538
    iput-boolean p6, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    .line 539
    iput-object p7, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 540
    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .line 569
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 544
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->index:I

    return v0
.end method

.method public getOriginalText()Ljava/lang/String;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 564
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->position:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isComment()Z
    .registers 2

    .line 598
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isSlashSlashComment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJavadocComment()Z
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewline()Z
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlejavaformat/Newlines;->isNewline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSlashSlashComment()Z
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSlashStarComment()Z
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isToken()Z
    .registers 2

    .line 573
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    return v0
.end method

.method public kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    return-object v0
.end method

.method public length()I
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 603
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->index:I

    .line 604
    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    .line 605
    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->position:I

    .line 606
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    .line 607
    const-string v2, "columnI"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    .line 608
    const-string v2, "isToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    return-object v0
.end method
