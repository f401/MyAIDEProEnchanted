.class public final enum Lcom/google/googlejavaformat/java/javadoc/Token$Type;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javadoc/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javadoc/Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum BEGIN_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum BLOCKQUOTE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum BLOCKQUOTE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum CODE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum CODE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum END_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum FOOTER_JAVADOC_TAG_START:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum HEADER_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum HTML_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum LIST_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum LIST_ITEM_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum LIST_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum MOE_BEGIN_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum MOE_END_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum OPTIONAL_LINE_BREAK:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum PARAGRAPH_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum TABLE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum TABLE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field public static final enum WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "BEGIN_JAVADOC"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BEGIN_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 69
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "END_JAVADOC"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->END_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 73
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "FOOTER_JAVADOC_TAG_START"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FOOTER_JAVADOC_TAG_START:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 74
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "LIST_OPEN_TAG"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 75
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "LIST_CLOSE_TAG"

    invoke-direct {v0, v1, v7}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 76
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "LIST_ITEM_OPEN_TAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 77
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "LIST_ITEM_CLOSE_TAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 78
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "HEADER_OPEN_TAG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 79
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "HEADER_CLOSE_TAG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 80
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "PARAGRAPH_OPEN_TAG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 81
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "PARAGRAPH_CLOSE_TAG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 83
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "BLOCKQUOTE_OPEN_TAG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 84
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "BLOCKQUOTE_CLOSE_TAG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 85
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "PRE_OPEN_TAG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 86
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "PRE_CLOSE_TAG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 87
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "CODE_OPEN_TAG"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 88
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "CODE_CLOSE_TAG"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 89
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "TABLE_OPEN_TAG"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 90
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "TABLE_CLOSE_TAG"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 94
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "MOE_BEGIN_STRIP_COMMENT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_BEGIN_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 98
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "MOE_END_STRIP_COMMENT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_END_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 99
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "HTML_COMMENT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HTML_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 101
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "BR_TAG"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 107
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "WHITESPACE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 112
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "FORCED_NEWLINE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 122
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "OPTIONAL_LINE_BREAK"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->OPTIONAL_LINE_BREAK:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 137
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    const-string v1, "LITERAL"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 61
    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BEGIN_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->END_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FOOTER_JAVADOC_TAG_START:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_BEGIN_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_END_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HTML_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->OPTIONAL_LINE_BREAK:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javadoc/Token$Type;
    .registers 2

    .line 61
    const-class v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javadoc/Token$Type;
    .registers 1

    .line 61
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javadoc/Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0
.end method
