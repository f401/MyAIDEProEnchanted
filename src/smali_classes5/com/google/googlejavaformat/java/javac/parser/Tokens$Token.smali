.class public Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.super Ljava/lang/Object;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;
    }
.end annotation


# instance fields
.field public final comments:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation
.end field

.field public final endPos:I

.field public final kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public final pos:I


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            "II",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 335
    iput p2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    .line 336
    iput p3, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->endPos:I

    .line 337
    iput-object p4, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    .line 338
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->checkKind()V

    .line 339
    return-void
.end method

.method private getComments(Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_9

    .line 402
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 410
    :goto_8
    return-object v0

    .line 404
    :cond_9
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 405
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    .line 406
    invoke-interface {v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getStyle()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    move-result-object v3

    if-ne v3, p1, :cond_14

    .line 407
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 410
    :cond_2a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method protected checkKind()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_9

    .line 362
    return-void

    .line 360
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad token kind - expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public comment(Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
    .registers 4

    .line 381
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->getComments(Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 383
    const/4 v0, 0x0

    .line 382
    :goto_d
    return-object v0

    .line 384
    :cond_e
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    goto :goto_d
.end method

.method public deprecatedFlag()Z
    .registers 3

    .line 392
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->getComments(Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    .line 393
    invoke-interface {v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    const/4 v0, 0x1

    .line 397
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public name()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public radix()I
    .registers 2

    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method split(Lcom/google/googlejavaformat/java/javac/parser/Tokens;)[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 342
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_61

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_61

    .line 346
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v1

    .line 349
    if-eqz v0, :cond_59

    if-eqz v1, :cond_59

    .line 352
    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    iget-object v3, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    .line 353
    new-instance v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    .line 354
    new-instance v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->endPos:I

    const/4 v5, 0x0

    invoke-direct {v3, v1, v0, v2, v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    .line 352
    new-array v0, v8, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    aput-object v4, v0, v7

    aput-object v3, v0, v6

    return-object v0

    .line 350
    :cond_59
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cant split - bad subtokens"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 343
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cant split"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public stringVal()Ljava/lang/String;
    .registers 2

    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
