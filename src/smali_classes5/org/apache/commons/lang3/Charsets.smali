.class Lorg/apache/commons/lang3/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2

    .line 56
    if-nez p0, :cond_7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_6
.end method

.method static toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 1

    .line 44
    if-nez p0, :cond_6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method static toCharsetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 66
    if-nez p0, :cond_a

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method
