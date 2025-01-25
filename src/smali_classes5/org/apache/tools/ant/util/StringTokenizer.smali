.class public Lorg/apache/tools/ant/util/StringTokenizer;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "StringTokenizer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/Tokenizer;


# static fields
.field private static final NOT_A_CHAR:I = -0x2


# instance fields
.field private delims:[C

.field private delimsAreTokens:Z

.field private includeDelims:Z

.field private intraString:Ljava/lang/String;

.field private pushed:I

.field private suppressDelims:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    .line 37
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    .line 39
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    .line 40
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    .line 41
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    return-void
.end method

.method private isDelim(C)Z
    .registers 7

    const/4 v0, 0x0

    .line 143
    iget-object v2, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    if-nez v2, :cond_a

    .line 144
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    .line 151
    :cond_9
    :goto_9
    return v0

    .line 146
    :cond_a
    array-length v3, v2

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_9

    aget-char v4, v2, v1

    .line 147
    if-ne v4, p1, :cond_14

    .line 148
    const/4 v0, 0x1

    goto :goto_9

    .line 146
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public getPostToken()Ljava/lang/String;
    .registers 2

    .line 139
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    if-eqz v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    goto :goto_a
.end method

.method public getToken(Ljava/io/Reader;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v2, -0x2

    .line 87
    iget v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    if-eq v0, v2, :cond_e

    .line 89
    iget v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    .line 90
    iput v2, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    .line 94
    :goto_a
    if-ne v1, v6, :cond_13

    .line 95
    const/4 v0, 0x0

    .line 131
    :goto_d
    return-object v0

    .line 92
    :cond_e
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_a

    .line 97
    :cond_13
    const/4 v0, 0x1

    .line 98
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    :goto_22
    if-eq v1, v6, :cond_39

    .line 102
    int-to-char v4, v1

    .line 103
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/util/StringTokenizer;->isDelim(C)Z

    move-result v5

    .line 104
    if-eqz v0, :cond_5c

    .line 105
    if-eqz v5, :cond_58

    .line 106
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    if-eqz v0, :cond_4f

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4b

    .line 108
    iput v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    .line 127
    :cond_39
    :goto_39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    .line 128
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    if-eqz v1, :cond_46

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 110
    :cond_4b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 114
    :cond_4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const/4 v0, 0x0

    .line 125
    :goto_53
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_22

    .line 117
    :cond_58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 119
    :cond_5c
    if-eqz v5, :cond_62

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 122
    :cond_62
    iput v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    goto :goto_39
.end method

.method public setDelims(Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    .line 49
    return-void
.end method

.method public setDelimsAreTokens(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    .line 59
    return-void
.end method

.method public setIncludeDelims(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    .line 77
    return-void
.end method

.method public setSuppressDelims(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    .line 67
    return-void
.end method
