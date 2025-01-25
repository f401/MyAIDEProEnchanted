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
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFile(Ljava/lang/String;)Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;
    .registers 9

    .line 56
    new-instance v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;-><init>()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->ruleNames:Ljava/util/List;

    .line 59
    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_183

    .line 61
    :try_start_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "token literal names:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_177

    const-string v4, "Unexpected data entry"

    if-eqz v3, :cond_171

    .line 67
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_177

    const-string v5, ""

    const-string v6, "null"

    if-eqz v3, :cond_4a

    .line 68
    :try_start_38
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3f

    goto :goto_4a

    .line 70
    :cond_3f
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    move-object v3, v5

    :cond_46
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 73
    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v7, "token symbolic names:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 76
    :goto_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_63

    goto :goto_6e

    .line 79
    :cond_63
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    move-object v3, v5

    :cond_6a
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 82
    :cond_6e
    :goto_6e
    new-instance v3, Lorg/antlr/v4/runtime/VocabularyImpl;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {p0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 85
    const-string v2, "rule names:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_165

    .line 87
    :goto_92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a5

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9f

    goto :goto_a5

    .line 90
    :cond_9f
    iget-object v2, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->ruleNames:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 93
    :cond_a5
    :goto_a5
    const-string v2, "channel names:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f3

    .line 94
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->channels:Ljava/util/List;

    .line 95
    :goto_b4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c7

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c1

    goto :goto_c7

    .line 98
    :cond_c1
    iget-object v2, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->channels:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 101
    :cond_c7
    :goto_c7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 102
    const-string v2, "mode names:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->modes:Ljava/util/List;

    .line 105
    :goto_da
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f3

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e7

    goto :goto_f3

    .line 108
    :cond_e7
    iget-object v2, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->modes:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_da

    .line 103
    :cond_ed
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_f3
    :goto_f3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 113
    const-string v2, "atn:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15f

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 116
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 117
    array-length v2, p0

    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 119
    :goto_10d
    array-length v4, p0
    :try_end_10e
    .catchall {:try_start_38 .. :try_end_10e} :catchall_177

    if-ge v3, v4, :cond_150

    .line 121
    aget-object v4, p0, v3

    .line 122
    :try_start_112
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_128

    .line 123
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_14a

    .line 124
    :cond_128
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_142

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_14a

    .line 127
    :cond_142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_14a
    .catchall {:try_start_112 .. :try_end_14a} :catchall_177

    :goto_14a
    int-to-char v4, v4

    .line 128
    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10d

    .line 131
    :cond_150
    :try_start_150
    new-instance p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    .line 132
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object p0

    iput-object p0, v0, Lorg/antlr/v4/runtime/misc/InterpreterDataReader$InterpreterData;->atn:Lorg/antlr/v4/runtime/atn/ATN;
    :try_end_15b
    .catchall {:try_start_150 .. :try_end_15b} :catchall_177

    .line 133
    :try_start_15b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_183

    goto :goto_184

    .line 114
    :cond_15f
    :try_start_15f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_165
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_16b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_171
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_177
    .catchall {:try_start_15f .. :try_end_177} :catchall_177

    :catchall_177
    move-exception p0

    .line 59
    :try_start_178
    throw p0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_179

    :catchall_179
    move-exception v2

    .line 133
    :try_start_17a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_17e

    goto :goto_182

    :catchall_17e
    move-exception v1

    :try_start_17f
    invoke-static {p0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_182
    throw v2
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_183} :catch_183

    :catch_183
    move-exception p0

    :goto_184
    return-object v0
.end method
