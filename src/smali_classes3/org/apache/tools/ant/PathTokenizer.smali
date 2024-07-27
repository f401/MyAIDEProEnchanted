.class public Lorg/apache/tools/ant/PathTokenizer;
.super Ljava/lang/Object;
.source "PathTokenizer.java"


# instance fields
.field private dosStyleFilesystem:Z

.field private lookahead:Ljava/lang/String;

.field private onNetWare:Z

.field private tokenizer:Ljava/util/StringTokenizer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    .line 51
    const-string v2, "netware"

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/tools/ant/PathTokenizer;->onNetWare:Z

    .line 65
    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":;"

    invoke-direct {v2, p1, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 74
    :goto_0
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":;"

    invoke-direct {v2, p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_1
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    .line 106
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->onNetWare:Z

    if-nez v1, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 109
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_1
    :goto_1
    return-object v0

    .line 103
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_4
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const-string v2, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 138
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 146
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto/16 :goto_1

    .line 154
    :cond_8
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto/16 :goto_1
.end method
