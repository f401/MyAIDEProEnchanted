.class final Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;
.super Ljava/lang/Object;
.source "JavadocLexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
    }
.end annotation


# static fields
.field private static final BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final BR_PATTERN:Ljava/util/regex/Pattern;

.field private static final CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LITERAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final NEWLINE:Lcom/google/common/base/CharMatcher;

.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

.field private static final PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

.field private static final TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private final input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

.field private final preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

.field private somethingSinceNewline:Z

.field private final tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-string v0, "\r\n?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

    .line 69
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE:Lcom/google/common/base/CharMatcher;

    .line 77
    const-string v0, "^[ \t]*\n[ \t]*[*]?[ \t]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "^@(param\\s+<\\w+>|[a-z]\\w*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "^<!--\\s*MOE:begin_intracomment_strip\\s*-->"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^<!--\\s*MOE:end_intracomment_strip\\s*-->"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    invoke-static {}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->fullCommentPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "pre"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "pre"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "code"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "code"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "table"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "table"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "ul|ol|dl"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "ul|ol|dl"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "li|dt|dd"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "li|dt|dd"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 98
    const-string v0, "h[1-6]"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 99
    const-string v0, "h[1-6]"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "p"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "p"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "blockquote"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "blockquote"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    const-string v0, "br"

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BR_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "^[{]@\\w*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "^.[^ \t\n@<{}*]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlejavaformat/java/javadoc/CharStream;)V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 119
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 120
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 121
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/CharStream;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    .line 125
    return-void
.end method

.method private checkMatchingTags()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 551
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 552
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    .line 553
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_21

    .line 556
    return-void

    .line 554
    :cond_21
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;-><init>()V

    throw v0
.end method

.method private static closeTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 4

    .line 407
    const-string v0, "^</(?:%s)\\b[^>]*>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private consumeToken()Lcom/google/googlejavaformat/java/javadoc/Token$Type;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    const/4 v3, 0x1

    .line 441
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    .line 445
    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 540
    :goto_16
    return-object v0

    .line 445
    :cond_17
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 446
    :cond_1a
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 449
    :cond_2e
    if-eqz v0, :cond_222

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 458
    :cond_33
    iget-boolean v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->FOOTER_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 459
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->checkMatchingTags()V

    .line 460
    iput-boolean v3, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    .line 461
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FOOTER_JAVADOC_TAG_START:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 463
    :cond_49
    iput-boolean v3, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->somethingSinceNewline:Z

    .line 465
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->INLINE_TAG_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 466
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 467
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 468
    :cond_5d
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 469
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->incrementIfPositive()V

    .line 470
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 471
    :cond_6f
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 472
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 473
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 477
    :cond_81
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->braceDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 478
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 479
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto :goto_16

    .line 482
    :cond_97
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 483
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 484
    if-eqz v0, :cond_ac

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_ac
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 485
    :cond_b0
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PRE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 486
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 487
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_c9

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_c9
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 490
    :cond_cd
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 491
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 492
    if-eqz v0, :cond_e2

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_e2
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 493
    :cond_e6
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->CODE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 494
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 495
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_ff

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_ff
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 498
    :cond_103
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 499
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->increment()V

    .line 500
    if-eqz v0, :cond_118

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_118
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 501
    :cond_11c
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->TABLE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 502
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->decrementIfPositive()V

    .line 503
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preserveExistingFormatting()Z

    move-result v0

    if-eqz v0, :cond_135

    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    :cond_135
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 506
    :cond_139
    if-eqz v0, :cond_14a

    .line 507
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 508
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 511
    :cond_14a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 512
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 513
    :cond_158
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->PARAGRAPH_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 514
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 515
    :cond_166
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 516
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 517
    :cond_174
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 518
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 519
    :cond_182
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 520
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 521
    :cond_190
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LIST_ITEM_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 522
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 523
    :cond_19e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 524
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 525
    :cond_1ac
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BLOCKQUOTE_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 526
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 527
    :cond_1ba
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_OPEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 528
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 529
    :cond_1c8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HEADER_CLOSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 530
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 531
    :cond_1d6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->BR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 532
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 533
    :cond_1e4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_BEGIN_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 534
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_BEGIN_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 535
    :cond_1f2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->MOE_END_STRIP_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 536
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_END_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 537
    :cond_200
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->HTML_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 538
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HTML_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 539
    :cond_20e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->tryConsumeRegex(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 540
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16

    .line 542
    :cond_21c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 449
    :cond_222
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    goto/16 :goto_16
.end method

.method private static deindentPreCodeBlock(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/common/collect/PeekingIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;",
            "Lcom/google/common/collect/PeekingIterator",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 334
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 335
    new-instance v5, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v6, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 336
    :goto_20
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-eq v0, v5, :cond_3e

    .line 337
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 338
    invoke-interface {v4, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_20

    .line 340
    :cond_3e
    :goto_3e
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {v4}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v5, :cond_56

    .line 341
    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_3e

    .line 343
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v5, :cond_6e

    .line 344
    invoke-interface {v4}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_56

    .line 346
    :cond_6e
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 392
    :goto_74
    return-void

    .line 351
    :cond_75
    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 353
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v5

    sget-object v6, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v5, v6, :cond_156

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 354
    invoke-interface {v4}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 355
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v5

    if-le v5, v1, :cond_bf

    .line 356
    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 357
    new-instance v6, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    .line 356
    invoke-interface {v4, v6}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 358
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 364
    :cond_bf
    :goto_bf
    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 365
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v6

    sget-object v7, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v6, v7, :cond_154

    .line 366
    const/16 v6, 0x20

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 367
    if-eq v0, v3, :cond_154

    if-eq v2, v3, :cond_ec

    if-ge v0, v2, :cond_154

    :cond_ec
    :goto_ec
    move v2, v0

    .line 371
    goto :goto_c4

    .line 373
    :cond_ee
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v5, "\n"

    invoke-direct {v0, v3, v5}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 374
    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 375
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v4

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v4, v5, :cond_132

    .line 376
    sget-object v4, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 379
    if-lez v2, :cond_12d

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->length()I

    move-result v5

    if-le v5, v2, :cond_12d

    .line 380
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_124
    new-instance v5, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-direct {v5, v4, v0}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_fe

    .line 381
    :cond_12d
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_124

    .line 383
    :cond_132
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_fe

    .line 387
    :cond_136
    if-eqz v1, :cond_146

    .line 388
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "}"

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_74

    .line 390
    :cond_146
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_74

    :cond_154
    move v0, v2

    goto :goto_ec

    :cond_156
    move v1, v2

    goto/16 :goto_bf
.end method

.method private static deindentPreCodeBlocks(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 309
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 310
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-eq v0, v3, :cond_28

    .line 311
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 315
    :cond_28
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :goto_34
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v4, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v4, :cond_50

    .line 318
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 320
    :cond_50
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v4, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v4, :cond_70

    .line 321
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[ \t]*[{]@code"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 322
    :cond_70
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 323
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 327
    :cond_7b
    invoke-static {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->deindentPreCodeBlock(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/common/collect/PeekingIterator;)V

    goto :goto_c

    .line 329
    :cond_7f
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static fullCommentPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 399
    const-string v0, "^<!--.*?-->"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private generateTokens()Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    .line 411
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BEGIN_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "/**"

    invoke-direct {v1, v2, v3}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 416
    :goto_10
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->isExhausted()Z

    move-result v1

    if-nez v1, :cond_20

    .line 417
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->readToken()Lcom/google/googlejavaformat/java/javadoc/Token;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_10

    .line 421
    :cond_20
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->checkMatchingTags()V

    .line 423
    new-instance v1, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->END_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v3, "*/"

    invoke-direct {v1, v2, v3}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 426
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->joinAdjacentLiteralsAndAdjacentWhitespace(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->inferParagraphTags(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 429
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->optionalizeSpacesAfterLinks(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->deindentPreCodeBlocks(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 431
    return-object v0
.end method

.method private static hasMultipleNewlines(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    .line 395
    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NEWLINE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static inferParagraphTags(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 244
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v3, :cond_67

    .line 245
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 247
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v3, :cond_c

    .line 248
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->hasMultipleNewlines(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 249
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 251
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v3, :cond_c

    .line 252
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v4, "<p>"

    invoke-direct {v0, v3, v4}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 257
    :cond_67
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 261
    :cond_6f
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static joinAdjacentLiteralsAndAdjacentWhitespace(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 184
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v4, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v4, :cond_36

    .line 185
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    goto :goto_11

    .line 197
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_47

    .line 198
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 199
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    goto :goto_11

    .line 203
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    :goto_4c
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v5, :cond_68

    .line 205
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 208
    :cond_68
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v5, :cond_9f

    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 210
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    goto/16 :goto_11

    .line 216
    :cond_9f
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 217
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 220
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v5, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_11

    .line 230
    :cond_c7
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static lex(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->stripJavadocBeginAndEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->normalizeLineEndings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;

    new-instance v2, Lcom/google/googlejavaformat/java/javadoc/CharStream;

    invoke-direct {v2, v0}, Lcom/google/googlejavaformat/java/javadoc/CharStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;-><init>(Lcom/google/googlejavaformat/java/javadoc/CharStream;)V

    invoke-direct {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->generateTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeLineEndings(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 146
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->NON_UNIX_LINE_ENDING:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static openTagPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 4

    .line 403
    const-string v0, "^<(?:%s)\\b[^>]*>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static optionalizeSpacesAfterLinks(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 282
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v3, :cond_5c

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^href=[^>]*>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 283
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 285
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    if-ne v0, v3, :cond_c

    .line 286
    new-instance v3, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v4, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->OPTIONAL_LINE_BREAK:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 289
    :cond_5c
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c

    .line 293
    :cond_64
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private preserveExistingFormatting()Z
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->preDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->tableDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->codeDepth:Lcom/google/googlejavaformat/java/javadoc/NestingCounter;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private readToken()Lcom/google/googlejavaformat/java/javadoc/Token;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException;
        }
    .end annotation

    .line 435
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->consumeToken()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->input:Lcom/google/googlejavaformat/java/javadoc/CharStream;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/CharStream;->readAndResetRecorded()Ljava/lang/String;

    move-result-object v1

    .line 437
    new-instance v2, Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-direct {v2, v0, v1}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    return-object v2
.end method

.method private static stripJavadocBeginAndEnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 154
    const-string v0, "/**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Missing /**: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "*/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_36

    const/4 v0, 0x1

    :goto_1b
    const-string v1, "Missing */: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v0, "/**"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "*/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_36
    const/4 v0, 0x0

    goto :goto_1b
.end method
