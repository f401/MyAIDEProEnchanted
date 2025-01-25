.class public final Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;
.super Ljava/lang/Object;
.source "JavadocFormatter.java"


# static fields
.field private static final ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final STANDARD_BR_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;

.field private static final STANDARD_P_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "<br>"

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_BR_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 41
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v2, "<p>"

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token;-><init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_P_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 47
    const-string v0, "^<\\w+\\s*/?\\s*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, " */[*][*]\n *[*] (.*)\n *[*]/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static formatJavadoc(Ljava/lang/String;ILcom/google/googlejavaformat/java/JavaFormatterOptions;)Ljava/lang/String;
    .registers 4

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/google/googlejavaformat/java/javadoc/JavadocLexer;->lex(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    :try_end_3
    .catch Lcom/google/googlejavaformat/java/javadoc/JavadocLexer$LexException; {:try_start_0 .. :try_end_3} :catch_d

    move-result-object v0

    .line 63
    invoke-static {v0, p1, p2}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->render(Ljava/util/List;ILcom/google/googlejavaformat/java/JavaFormatterOptions;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1, v0, p2}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->makeSingleLineIfPossible(ILjava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0

    .line 61
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private static makeSingleLineIfPossible(ILjava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    .line 171
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->maxLineLength()I

    move-result v0

    const-string v1, "/**  */"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 172
    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->ONE_CONTENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 174
    const-string p1, "/** */"

    .line 178
    :cond_23
    :goto_23
    return-object p1

    .line 175
    :cond_24
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    if-gt v3, v0, :cond_23

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_23
.end method

.method private static render(Ljava/util/List;ILcom/google/googlejavaformat/java/JavaFormatterOptions;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javadoc/Token;",
            ">;I",
            "Lcom/google/googlejavaformat/java/JavaFormatterOptions;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    new-instance v1, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;

    invoke-direct {v1, p1, p2}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;-><init>(ILcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    :pswitch_9  #0x19, 0x1a, 0x1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token;

    .line 71
    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_9e

    .line 147
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 140
    :pswitch_2e  #0x18
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLiteral(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 137
    :pswitch_32  #0x17
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeLineBreakNoAutoIndent()V

    goto :goto_9

    .line 134
    :pswitch_36  #0x16
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestWhitespace()V

    goto :goto_9

    .line 131
    :pswitch_3a  #0x15
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardizeBrToken(Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBr(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 128
    :pswitch_42  #0x14
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHtmlComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 125
    :pswitch_46  #0x13
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeMoeEndStripComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 122
    :pswitch_4a  #0x12
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->requestMoeBeginStripComment(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 119
    :pswitch_4e  #0x11
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeTableClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 116
    :pswitch_52  #0x10
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeTableOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 113
    :pswitch_56  #0xf
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeCodeClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 110
    :pswitch_5a  #0xe
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeCodeOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 107
    :pswitch_5e  #0xd
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writePreClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 104
    :pswitch_62  #0xc
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writePreOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 101
    :pswitch_66  #0xa, 0xb
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBlockquoteOpenOrClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 97
    :pswitch_6a  #0x9
    invoke-static {v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardizePToken(Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeParagraphOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 94
    :pswitch_72  #0x8
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHeaderClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 91
    :pswitch_76  #0x7
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeHeaderOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 88
    :pswitch_7a  #0x6
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListItemOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 85
    :pswitch_7e  #0x5
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListClose(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 82
    :pswitch_82  #0x4
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeListOpen(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 79
    :pswitch_86  #0x3
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeFooterJavadocTagStart(Lcom/google/googlejavaformat/java/javadoc/Token;)V

    goto :goto_9

    .line 76
    :pswitch_8a  #0x2
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeEndJavadoc()V

    .line 77
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_92  #0x1
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;->writeBeginJavadoc()V

    goto/16 :goto_9

    .line 150
    :cond_97
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92  #00000001
        :pswitch_8a  #00000002
        :pswitch_86  #00000003
        :pswitch_82  #00000004
        :pswitch_7e  #00000005
        :pswitch_7a  #00000006
        :pswitch_76  #00000007
        :pswitch_72  #00000008
        :pswitch_6a  #00000009
        :pswitch_66  #0000000a
        :pswitch_66  #0000000b
        :pswitch_62  #0000000c
        :pswitch_5e  #0000000d
        :pswitch_5a  #0000000e
        :pswitch_56  #0000000f
        :pswitch_52  #00000010
        :pswitch_4e  #00000011
        :pswitch_4a  #00000012
        :pswitch_46  #00000013
        :pswitch_42  #00000014
        :pswitch_3a  #00000015
        :pswitch_36  #00000016
        :pswitch_32  #00000017
        :pswitch_2e  #00000018
        :pswitch_9  #00000019
        :pswitch_9  #0000001a
        :pswitch_9  #0000001b
    .end packed-switch
.end method

.method private static standardize(Lcom/google/googlejavaformat/java/javadoc/Token;Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;
    .registers 4

    .line 162
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->SIMPLE_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-object p1

    :cond_11
    move-object p1, p0

    goto :goto_10
.end method

.method private static standardizeBrToken(Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;
    .registers 2

    .line 154
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_BR_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-static {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardize(Lcom/google/googlejavaformat/java/javadoc/Token;Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;

    move-result-object v0

    return-object v0
.end method

.method private static standardizePToken(Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;
    .registers 2

    .line 158
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->STANDARD_P_TOKEN:Lcom/google/googlejavaformat/java/javadoc/Token;

    invoke-static {p0, v0}, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;->standardize(Lcom/google/googlejavaformat/java/javadoc/Token;Lcom/google/googlejavaformat/java/javadoc/Token;)Lcom/google/googlejavaformat/java/javadoc/Token;

    move-result-object v0

    return-object v0
.end method
