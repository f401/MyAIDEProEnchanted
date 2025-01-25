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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_13

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 104
    monitor-exit p0

    return-void

    .line 100
    :cond_13
    :try_start_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested tokenizer allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    .line 95
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    monitor-exit p0

    .line 130
    :goto_8
    return-void

    .line 121
    :cond_9
    :try_start_9
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_21

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_1d

    .line 125
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Tokens;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 128
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    .line 130
    :cond_21
    monitor-exit p0

    goto :goto_8

    .line 115
    :catchall_23
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_74

    move-result-object v0

    monitor-exit p0

    .line 76
    :goto_10
    return-object v0

    .line 57
    :cond_11
    :try_start_11
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v1, :cond_1c

    .line 58
    new-instance v1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_74

    .line 60
    :cond_1c
    :try_start_1c
    new-instance v2, Lorg/apache/tools/ant/util/ConcatResourceInputStream;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_6b
    .catchall {:try_start_1c .. :try_end_21} :catchall_74

    .line 61
    :try_start_21
    new-instance v3, Ljava/io/InputStreamReader;

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;

    if-nez v0, :cond_54

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 63
    :goto_2b
    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_66

    .line 64
    :try_start_2e
    invoke-virtual {v2, p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v1, v3}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    if-eqz v1, :cond_59

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
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_61

    move-result-object v1

    goto :goto_3c

    .line 63
    :cond_54
    :try_start_54
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2b

    .line 76
    :cond_59
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_66

    :try_start_5c
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_6b
    .catchall {:try_start_5c .. :try_end_5f} :catchall_74

    monitor-exit p0

    goto :goto_10

    .line 60
    :catchall_61
    move-exception v0

    :try_start_62
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_77

    :goto_65
    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v0

    :try_start_67
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_79

    :goto_6a
    :try_start_6a
    throw v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_74

    .line 77
    :catch_6b
    move-exception v0

    .line 78
    :try_start_6c
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error reading tokens"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_74

    .line 52
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :catchall_77
    move-exception v1

    goto :goto_65

    :catchall_79
    move-exception v1

    goto :goto_6a
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 87
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
