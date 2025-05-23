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
    if-eqz v2, :cond_24

    .line 68
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":;"

    invoke-direct {v2, p1, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 74
    :goto_1b
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2e

    :goto_21
    iput-boolean v0, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    .line 75
    return-void

    .line 72
    :cond_24
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":;"

    invoke-direct {v2, p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    goto :goto_1b

    :cond_2e
    move v0, v1

    .line 74
    goto :goto_21
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
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

    if-eqz v0, :cond_5a

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    .line 106
    :goto_9
    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->onNetWare:Z

    if-nez v1, :cond_68

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 109
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_59

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

    if-nez v2, :cond_45

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 117
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_59
    :goto_59
    return-object v0

    .line 103
    :cond_5a
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 120
    :cond_65
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto :goto_59

    .line 126
    :cond_68
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string v1, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 128
    :cond_78
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_82
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_59

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

    if-nez v2, :cond_59

    .line 137
    const-string v2, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 138
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 139
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 140
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

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

    if-nez v2, :cond_ec

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59

    .line 146
    :cond_ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto/16 :goto_59

    .line 154
    :cond_101
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto/16 :goto_59
.end method
