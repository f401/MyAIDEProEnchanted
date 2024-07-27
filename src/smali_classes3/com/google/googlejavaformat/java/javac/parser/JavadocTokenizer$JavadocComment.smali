.class public Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;
.super Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;
.source "JavadocTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JavadocComment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment",
        "<",
        "Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;",
        ">;"
    }
.end annotation


# instance fields
.field private docComment:Ljava/lang/String;

.field private docPosns:[I


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V
    .registers 4

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;-><init>(Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V

    .line 214
    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    .line 219
    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .registers 7

    const/4 v0, -0x1

    .line 237
    if-ne p1, v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_5

    .line 241
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    if-eqz v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 244
    array-length v2, v1

    .line 245
    :goto_1
    add-int/lit8 v1, v2, -0x2

    if-ge v0, v1, :cond_4

    .line 247
    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    .line 248
    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    aget v4, v3, v1

    if-ge v4, p1, :cond_2

    move v0, v1

    .line 249
    goto :goto_1

    .line 250
    :cond_2
    aget v2, v3, v1

    if-ne v2, p1, :cond_3

    .line 251
    add-int/lit8 v0, v1, 0x1

    aget v0, v3, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 253
    goto :goto_1

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    aget v0, v1, v0

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    goto :goto_0

    .line 240
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 223
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->scanned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->cs:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->scanDocComment()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    return-object v0
.end method

.method protected scanDocComment()V
    .registers 11

    const/16 v9, 0x2f

    const/16 v8, 0xa

    const/16 v7, 0x2a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 267
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v7, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->scanned:Z

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    .line 434
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 435
    const-string v2, "(?sm).*^\\s*@deprecated( |$).*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->deprecatedFlag:Z

    .line 438
    :cond_0
    throw v0

    .line 274
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v9, :cond_3

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->scanned:Z

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    .line 434
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 435
    const-string v1, "(?sm).*^\\s*@deprecated( |$).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->deprecatedFlag:Z

    .line 439
    :cond_2
    :goto_1
    return-void

    .line 280
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_16

    .line 281
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v8, :cond_8

    .line 282
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    move v2, v3

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    .line 301
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v6, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    .line 306
    :goto_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v7, :cond_c

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 346
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-eq v0, v7, :cond_5

    .line 349
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v9, :cond_d

    .line 410
    :cond_6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sp:I

    if-lez v0, :cond_15

    .line 411
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sp:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 413
    :goto_4
    const/4 v0, -0x1

    if-le v1, v0, :cond_7

    .line 414
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sbuf:[C

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_14

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sp:I

    .line 425
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->chars()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    .line 427
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    array-length v5, v5

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    :goto_5
    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->scanned:Z

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    .line 434
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 435
    const-string v1, "(?sm).*^\\s*@deprecated( |$).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iput-boolean v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->deprecatedFlag:Z

    goto/16 :goto_1

    .line 284
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/16 v1, 0xd

    if-ne v0, v1, :cond_16

    .line 285
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 286
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v8, :cond_16

    .line 287
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    move v2, v3

    .line 288
    goto/16 :goto_2

    .line 309
    :cond_9
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto/16 :goto_3

    .line 316
    :cond_a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 317
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto/16 :goto_3

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 313
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto/16 :goto_3

    .line 354
    :cond_c
    if-nez v2, :cond_d

    .line 357
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iput v5, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    .line 358
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iput-char v6, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    .line 363
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v1, v0, :cond_10

    .line 364
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    if-eq v0, v8, :cond_12

    const/16 v1, 0xc

    if-eq v0, v1, :cond_11

    const/16 v1, 0xd

    if-eq v0, v1, :cond_f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    if-eq v0, v7, :cond_e

    .line 403
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    .line 404
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_6

    .line 368
    :cond_e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 369
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-eq v0, v9, :cond_6

    .line 376
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    goto :goto_6

    .line 387
    :cond_f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    .line 388
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-eq v0, v8, :cond_12

    .line 390
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    :cond_10
    :goto_7
    move v2, v3

    .line 408
    goto/16 :goto_2

    .line 384
    :cond_11
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_7

    .line 364
    :cond_12
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    .line 399
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_7

    .line 364
    :cond_13
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    .line 381
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto/16 :goto_6

    .line 416
    :cond_14
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 417
    goto/16 :goto_4

    .line 429
    :cond_15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :cond_16
    move v2, v4

    goto/16 :goto_2
.end method
