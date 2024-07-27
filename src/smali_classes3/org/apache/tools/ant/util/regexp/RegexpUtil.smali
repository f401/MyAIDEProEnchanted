.class public Lorg/apache/tools/ant/util/regexp/RegexpUtil;
.super Ljava/lang/Object;
.source "RegexpUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOptions(Ljava/lang/String;)I
    .registers 4

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 66
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 67
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 65
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v0

    .line 68
    const-string v1, "g"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    or-int/lit8 v0, v0, 0x10

    .line 72
    :cond_0
    return v0
.end method

.method public static asOptions(Z)I
    .registers 2

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v0

    return v0
.end method

.method public static asOptions(ZZZ)I
    .registers 5

    .line 97
    const/4 v0, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/16 v0, 0x100

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    .line 102
    or-int/lit16 v0, v0, 0x1000

    .line 104
    :cond_1
    if-eqz p2, :cond_2

    .line 105
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 107
    :cond_2
    return v0
.end method

.method public static hasFlag(II)Z
    .registers 3

    .line 36
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeFlag(II)I
    .registers 3

    .line 47
    rsub-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method
