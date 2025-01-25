.class public Lorg/apache/tools/ant/filters/EscapeUnicode;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "EscapeUnicode.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# instance fields
.field private unicodeBuf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    .line 66
    return-void
.end method

.method private initialize()V
    .registers 1

    .line 121
    return-void
.end method


# virtual methods
.method public final chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 112
    new-instance v0, Lorg/apache/tools/ant/filters/EscapeUnicode;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/EscapeUnicode;-><init>(Ljava/io/Reader;)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/EscapeUnicode;->setInitialized(Z)V

    .line 114
    return-object v0
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/EscapeUnicode;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 80
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/EscapeUnicode;->initialize()V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/EscapeUnicode;->setInitialized(Z)V

    .line 84
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 87
    iget-object v1, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 98
    :cond_21
    :goto_21
    return v0

    .line 89
    :cond_22
    iget-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 90
    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 91
    int-to-char v1, v0

    .line 92
    const/16 v2, 0x80

    if-lt v1, v2, :cond_21

    .line 93
    invoke-static {v1}, Lorg/apache/tools/ant/util/UnicodeUtil;->EscapeUnicode(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/EscapeUnicode;->unicodeBuf:Ljava/lang/StringBuffer;

    .line 94
    const/16 v0, 0x5c

    goto :goto_21
.end method
