.class public Lorg/apache/tools/ant/util/LineTokenizer;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "LineTokenizer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/Tokenizer;


# static fields
.field private static final NOT_A_CHAR:I = -0x2


# instance fields
.field private includeDelims:Z

.field private lineEnd:Ljava/lang/String;

.field private pushed:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    return-void
.end method


# virtual methods
.method public getPostToken()Ljava/lang/String;
    .registers 2

    .line 109
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToken(Ljava/io/Reader;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/4 v6, -0x1

    .line 58
    iget v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    if-ne v0, v4, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    .line 64
    :goto_0
    if-ne v3, v6, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 101
    :goto_1
    return-object v0

    .line 61
    :cond_0
    iget v3, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 62
    iput v4, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    .line 72
    :goto_2
    if-eq v3, v6, :cond_3

    .line 73
    if-nez v0, :cond_7

    .line 74
    const/16 v5, 0xd

    if-ne v3, v5, :cond_2

    move v0, v1

    .line 92
    :goto_3
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    goto :goto_2

    .line 76
    :cond_2
    if-ne v3, v7, :cond_6

    .line 77
    const-string v2, "\n"

    iput-object v2, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 94
    :cond_3
    :goto_4
    if-ne v3, v6, :cond_4

    if-ne v0, v1, :cond_4

    .line 95
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 98
    :cond_4
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    if-eqz v0, :cond_5

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_6
    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 84
    :cond_7
    if-ne v3, v7, :cond_8

    .line 85
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    move v0, v2

    goto :goto_4

    .line 87
    :cond_8
    iput v3, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 88
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    move v0, v2

    goto :goto_4
.end method

.method public setIncludeDelims(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    .line 47
    return-void
.end method
