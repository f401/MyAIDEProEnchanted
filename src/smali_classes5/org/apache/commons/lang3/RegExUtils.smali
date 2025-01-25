.class public Lorg/apache/commons/lang3/RegExUtils;
.super Ljava/lang/Object;
.source "RegExUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 107
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3

    .line 61
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 188
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3

    .line 143
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 219
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 313
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->anyNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 316
    :goto_12
    return-object p0

    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->anyNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 262
    :goto_12
    return-object p0

    :cond_13
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 408
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 411
    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 356
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 359
    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 452
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->anyNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 455
    :goto_12
    return-object p0

    :cond_13
    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12
.end method
