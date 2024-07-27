.class public Lorg/apache/tools/ant/types/resources/Tokens;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;
.source "Tokens.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private tokenizer:Lorg/apache/tools/ant/util/Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/Tokenizer;)V
    .registers 4

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested tokenizer allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    monitor-exit p0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Tokens;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 128
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCollection()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    monitor-exit p0

    .line 76
    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    :cond_1
    :try_start_2
    new-instance v2, Lorg/apache/tools/ant/util/ConcatResourceInputStream;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 63
    :goto_1
    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    invoke-virtual {v2, p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v1, v3}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 72
    new-instance v4, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-direct {v4, v1}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/resources/StringResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 67
    invoke-interface {v1, v3}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 63
    :cond_2
    :try_start_5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error reading tokens"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 52
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :catchall_3
    move-exception v1

    goto :goto_3

    :catchall_4
    move-exception v1

    goto :goto_4
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 87
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
