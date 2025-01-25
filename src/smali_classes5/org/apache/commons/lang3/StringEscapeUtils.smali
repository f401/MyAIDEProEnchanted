.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 57
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\""

    aput-object v3, v2, v8

    const-string v3, "\\\""

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v2, v8

    const-string v3, "\\\\"

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 62
    new-array v2, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    .line 65
    const/16 v1, 0x20

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v1

    .line 64
    new-array v2, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 77
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "\""

    aput-object v1, v0, v8

    const-string v1, "\\\""

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v2, v12, [[Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\'"

    aput-object v4, v3, v8

    const-string v4, "\\\'"

    aput-object v4, v3, v9

    aput-object v3, v2, v8

    aput-object v0, v2, v9

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v0, v8

    const-string v3, "\\\\"

    aput-object v3, v0, v9

    aput-object v0, v2, v10

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "/"

    aput-object v3, v0, v8

    const-string v3, "\\/"

    aput-object v3, v0, v9

    aput-object v0, v2, v11

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 86
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 87
    new-instance v2, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v3, v8

    aput-object v0, v3, v9

    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v2, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 99
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v11, [[Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\""

    aput-object v3, v2, v8

    const-string v3, "\\\""

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v2, v8

    const-string v3, "\\\\"

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "/"

    aput-object v3, v2, v8

    const-string v3, "\\/"

    aput-object v3, v2, v9

    aput-object v2, v1, v10

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 107
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 108
    new-instance v2, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v2, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 122
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v2, v8

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v2, v9

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 137
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 140
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v3, 0x1f

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0000"

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v3, v8

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0001"

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0002"

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v3, v10

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0003"

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v3, v11

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0004"

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v3, v12

    const/4 v4, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0005"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0006"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0007"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\b"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u000b"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\f"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u000e"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u000f"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0010"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0011"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0012"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0013"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0014"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0015"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0016"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0017"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0018"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x16

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u0019"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x17

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001a"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x18

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001b"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x19

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001c"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001d"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001e"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\u001f"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\ufffe"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "\uffff"

    aput-object v6, v5, v8

    const-string v6, ""

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 175
    const/16 v3, 0x7f

    const/16 v4, 0x84

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    .line 176
    new-instance v4, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v10

    aput-object v3, v5, v11

    const/16 v0, 0x86

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    aput-object v0, v5, v12

    const/4 v0, 0x5

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v5, v0

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v4, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 189
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 192
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\ufffe"

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\uffff"

    aput-object v4, v3, v8

    const-string v4, ""

    aput-object v4, v3, v9

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v5, 0x5

    new-array v5, v5, [[Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "\u0000"

    aput-object v7, v6, v8

    const-string v7, ""

    aput-object v7, v6, v9

    aput-object v6, v5, v8

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "\u000b"

    aput-object v7, v6, v8

    const-string v7, "&#11;"

    aput-object v7, v6, v9

    aput-object v6, v5, v9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "\f"

    aput-object v7, v6, v8

    const-string v7, "&#12;"

    aput-object v7, v6, v9

    aput-object v6, v5, v10

    aput-object v2, v5, v11

    aput-object v3, v5, v12

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 201
    const/16 v2, 0x8

    invoke-static {v9, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v2

    .line 202
    const/16 v3, 0xe

    const/16 v5, 0x1f

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    .line 203
    const/16 v5, 0x7f

    const/16 v6, 0x84

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v5

    .line 204
    new-instance v6, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/16 v7, 0x8

    new-array v7, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v7, v8

    aput-object v1, v7, v9

    aput-object v4, v7, v10

    aput-object v2, v7, v11

    aput-object v3, v7, v12

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    const/16 v1, 0x86

    const/16 v2, 0x9f

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x7

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v7, v0

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v6, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 217
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 220
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v2, v8

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v2, v9

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 232
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 235
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 236
    new-instance v2, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v3, v10

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v2, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 248
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 290
    new-instance v0, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    .line 294
    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\\\""

    aput-object v4, v3, v8

    const-string v4, "\""

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\\\'"

    aput-object v5, v4, v8

    const-string v5, "\'"

    aput-object v5, v4, v9

    new-instance v5, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v6, v12, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v12, [[Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/String;

    const-string v7, "\\\\"

    aput-object v7, v2, v8

    const-string v7, "\\"

    aput-object v7, v2, v9

    aput-object v2, v1, v8

    aput-object v3, v1, v9

    aput-object v4, v1, v10

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    aput-object v2, v1, v11

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v6, v11

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 313
    sput-object v5, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 324
    sput-object v5, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 335
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 338
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v2, v8

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v2, v9

    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v8, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v0, v2, v10

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 351
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 354
    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 355
    new-instance v2, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v12, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v3, v10

    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v1, v8, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v0, v3, v11

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v2, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 368
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 371
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v0, v2, v8

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v0, v2, v9

    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v8, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v0, v2, v10

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 384
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 777
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 484
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 605
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 592
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 456
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 512
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 699
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 729
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 802
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 542
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 641
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 627
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 525
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 559
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 751
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
