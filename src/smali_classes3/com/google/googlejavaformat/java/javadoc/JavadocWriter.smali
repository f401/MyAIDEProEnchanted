.class final Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;
.super Ljava/lang/Object;
.source "JavadocWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;,
        Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    }
.end annotation


# static fields
.field private static final START_OF_LINE_TOKENS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private atStartOfLine:Z

.field private final blockIndent:I

.field private continuingFooterTag:Z

.field private final continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private continuingListItemOfInnermostList:Z

.field private indentForMoeEndStripComment:I

.field private final options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

.field private final output:Ljava/lang/StringBuilder;

.field private final postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private remainingOnLine:I

.field private requestedMoeBeginStripComment:Lcom/google/googlejavaformat/java/javadoc/Token;

.field private requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field private wroteAnythingSignificant:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 52
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->START_OF_LINE_TOKENS:Lcom/google/common/collect/ImmutableSet;

    .line 51
    return-void
.end method

.method constructor <init>(ILcom/google/googlejavaformat/java/JavaFormatterOptions;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 57
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 58
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 68
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 74
    iput p1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    .line 75
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    .line 76
    return-void
.end method

.method private appendSpaces(I)V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-static {v1, p1}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    return-void
.end method

.method private innerIndent()I
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 384
    iget-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-eqz v1, :cond_0

    .line 385
    add-int/lit8 v0, v0, 0x4

    .line 387
    :cond_0
    return v0
.end method

.method private requestBlankLine()V
    .registers 2

    .line 277
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    .line 278
    return-void
.end method

.method private requestNewline()V
    .registers 2

    .line 281
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    .line 282
    return-void
.end method

.method private requestWhitespace(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V
    .registers 4

    .line 285
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 287
    return-void
.end method

.method private writeBlankLine()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 361
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    .line 363
    return-void
.end method

.method private writeNewline()V
    .registers 2

    .line 366
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V

    .line 367
    return-void
.end method

.method private writeNewline(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V
    .registers 5

    const/4 v2, 0x1

    .line 370
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 372
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {p0, v2}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 374
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->maxLineLength()I

    move-result v0

    iget v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 375
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    if-ne p1, v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 377
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 379
    :cond_0
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    .line 380
    return-void
.end method

.method private writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lcom/google/googlejavaformat/java/javadoc/Token;

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 295
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-eqz v0, :cond_2

    .line 303
    :cond_1
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v3, :cond_6

    .line 307
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBlankLine()V

    .line 308
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 313
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 320
    :goto_1
    iget-boolean v3, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v4

    if-eqz v0, :cond_8

    move v3, v1

    :goto_2
    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    if-le v3, v4, :cond_4

    .line 321
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    .line 323
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 328
    :cond_5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lcom/google/googlejavaformat/java/javadoc/Token;

    if-eqz v0, :cond_9

    .line 329
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 331
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->innerIndent()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->indentForMoeEndStripComment:I

    .line 332
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 333
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 356
    :goto_3
    return-void

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    if-ne v0, v3, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    .line 311
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    goto :goto_0

    :cond_7
    move v0, v2

    .line 313
    goto :goto_1

    :cond_8
    move v3, v2

    .line 320
    goto :goto_2

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->START_OF_LINE_TOKENS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 340
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->atStartOfLine:Z

    .line 353
    :cond_a
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->remainingOnLine:I

    .line 354
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedWhitespace:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 355
    iput-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    goto :goto_3
.end method


# virtual methods
.method requestMoeBeginStripComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestedMoeBeginStripComment:Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 90
    return-void
.end method

.method requestWhitespace()V
    .registers 2

    .line 84
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;)V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeBeginJavadoc()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline()V

    .line 99
    return-void
.end method

.method writeBlockquoteOpenOrClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 202
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 204
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 205
    return-void
.end method

.method writeBr(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 258
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 260
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 261
    return-void
.end method

.method writeCodeClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 225
    return-void
.end method

.method writeCodeOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 220
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 221
    return-void
.end method

.method writeEndJavadoc()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->blockIndent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 104
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->output:Ljava/lang/StringBuilder;

    const-string v1, "*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    return-void
.end method

.method writeFooterJavadocTagStart(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 4

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    .line 117
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    .line 118
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    .line 123
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->reset()V

    .line 125
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    if-nez v0, :cond_0

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    .line 137
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    if-nez v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    goto :goto_0

    .line 132
    :cond_1
    iput-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingFooterTag:Z

    .line 133
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    goto :goto_0
.end method

.method writeHeaderClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 182
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 183
    return-void
.end method

.method writeHeaderOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 174
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 176
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 177
    return-void
.end method

.method writeHtmlComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 250
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 252
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 254
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 255
    return-void
.end method

.method writeLineBreakNoAutoIndent()V
    .registers 2

    .line 264
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->NO_AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeNewline(Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;)V

    .line 265
    return-void
.end method

.method writeListClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 151
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 153
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 154
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 155
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 156
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 158
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 159
    return-void
.end method

.method writeListItemOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 162
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 164
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    .line 166
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    .line 170
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 171
    return-void
.end method

.method writeListOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 142
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListItemOfInnermostList:Z

    .line 144
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->continuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 145
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->postWriteModifiedContinuingListCount:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 147
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 148
    return-void
.end method

.method writeLiteral(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 268
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 269
    return-void
.end method

.method writeMoeEndStripComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 240
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLineBreakNoAutoIndent()V

    .line 241
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->indentForMoeEndStripComment:I

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->appendSpaces(I)V

    .line 244
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 246
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestNewline()V

    .line 247
    return-void
.end method

.method writeParagraphOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 3

    .line 186
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->wroteAnythingSignificant:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 196
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_0
.end method

.method writePreClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 214
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 216
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 217
    return-void
.end method

.method writePreOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 208
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 211
    return-void
.end method

.method writeTableClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 234
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 236
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 237
    return-void
.end method

.method writeTableOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V
    .registers 2

    .line 228
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestBlankLine()V

    .line 230
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeToken(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    .line 231
    return-void
.end method
