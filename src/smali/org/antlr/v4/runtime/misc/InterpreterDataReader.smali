.class public Lorg/antlr/v4/runtime/misc/InterpreterDataReader;
.super Ljava/lang/Object;
.source "InterpreterDataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFile(Ljava/lang/String;)Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;
    .locals 8

    const/4 v2, 0x0

    .line 56
    new-instance v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;

    invoke-direct {v3}, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->ruleNames:Ljava/util/List;

    .line 59
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v6, "token literal names:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v6, "token symbolic names:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 82
    :cond_1
    new-instance v6, Lorg/antlr/v4/runtime/VocabularyImpl;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v6, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 84
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "rule names:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    :cond_2
    const-string v1, "channel names:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->channels:Ljava/util/List;

    .line 95
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 101
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "mode names:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->modes:Ljava/util/List;

    .line 105
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "atn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 115
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 117
    array-length v0, v5

    new-array v6, v0, [C

    move v1, v2

    .line 119
    :goto_5
    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v1, v0, :cond_f

    .line 121
    aget-object v0, v5, v1

    .line 122
    :try_start_2
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 127
    :goto_6
    int-to-char v0, v0

    .line 128
    aput-char v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 70
    :cond_5
    :try_start_3
    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, ""

    :cond_6
    :try_start_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 59
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 133
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    :goto_8
    return-object v3

    .line 79
    :cond_7
    :try_start_8
    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v6

    if-eqz v6, :cond_8

    const-string v0, ""

    :cond_8
    :try_start_9
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 90
    :cond_9
    iget-object v1, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->ruleNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 98
    :cond_a
    iget-object v1, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 108
    :cond_b
    iget-object v1, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->modes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 103
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected data entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_d
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 127
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 131
    :cond_f
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    .line 132
    invoke-virtual {v0, v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    iput-object v0, v3, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->atn:Lorg/antlr/v4/runtime/atn/ATN;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 133
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_8

    .line 114
    :cond_10
    :try_start_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected data entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected data entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected data entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected data entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 133
    :catchall_2
    move-exception v2

    :try_start_c
    invoke-static {v0, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_7
.end method
