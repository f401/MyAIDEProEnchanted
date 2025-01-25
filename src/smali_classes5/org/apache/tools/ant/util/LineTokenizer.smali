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

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    goto :goto_6
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

    if-ne v0, v4, :cond_12

    .line 59
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    .line 64
    :goto_e
    if-ne v3, v6, :cond_17

    .line 65
    const/4 v0, 0x0

    .line 101
    :goto_11
    return-object v0

    .line 61
    :cond_12
    iget v3, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 62
    iput v4, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    goto :goto_e

    .line 68
    :cond_17
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    .line 72
    :goto_21
    if-eq v3, v6, :cond_35

    .line 73
    if-nez v0, :cond_50

    .line 74
    const/16 v5, 0xd

    if-ne v3, v5, :cond_2f

    move v0, v1

    .line 92
    :goto_2a
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    goto :goto_21

    .line 76
    :cond_2f
    if-ne v3, v7, :cond_4b

    .line 77
    const-string v2, "\n"

    iput-object v2, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 94
    :cond_35
    :goto_35
    if-ne v3, v6, :cond_3d

    if-ne v0, v1, :cond_3d

    .line 95
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 98
    :cond_3d
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    if-eqz v0, :cond_46

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 80
    :cond_4b
    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 84
    :cond_50
    if-ne v3, v7, :cond_58

    .line 85
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    move v0, v2

    goto :goto_35

    .line 87
    :cond_58
    iput v3, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 88
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    move v0, v2

    goto :goto_35
.end method

.method public setIncludeDelims(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    .line 47
    return-void
.end method
