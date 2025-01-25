.class public Lorg/apache/tools/ant/util/UnicodeUtil;
.super Ljava/lang/Object;
.source "UnicodeUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static EscapeUnicode(C)Ljava/lang/StringBuffer;
    .registers 7

    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "u0000"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 40
    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 44
    :cond_26
    return-object v1
.end method
