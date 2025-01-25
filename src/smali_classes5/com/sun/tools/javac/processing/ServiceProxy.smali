.class Lcom/sun/tools/javac/processing/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
    }
.end annotation


# static fields
.field private static final prefix:Ljava/lang/String; = "META-INF/services/"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static hasService(Ljava/lang/Class;[Ljava/net/URL;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/net/URL;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_28

    aget-object v3, p1, v1

    .line 138
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "META-INF/services/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 140
    invoke-static {p0, v5}, Lcom/sun/tools/javac/processing/ServiceProxy;->parse(Ljava/lang/Class;Ljava/net/URL;)Z
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_24} :catch_29

    move-result v3

    .line 141
    if-eqz v3, :cond_2a

    .line 142
    const/4 v0, 0x1

    .line 147
    :cond_28
    return v0

    .line 143
    :catch_29
    move-exception v3

    .line 136
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static parse(Ljava/lang/Class;Ljava/net/URL;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 85
    .line 88
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_6} :catch_17a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_101
    .catchall {:try_start_3 .. :try_end_6} :catchall_140

    move-result-object v5

    .line 89
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v0, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_1bb
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c3

    .line 90
    :cond_13
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 93
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 94
    if-ltz v4, :cond_26

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 97
    if-eqz v6, :cond_13

    .line 98
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_40

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_46

    .line 99
    :cond_40
    const/4 v0, 0x1

    const-string v7, "Illegal configuration-file syntax"

    invoke-static {p0, p1, v0, v7}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 100
    :cond_46
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v7

    if-nez v7, :cond_66

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal provider-class name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v8, v7}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 103
    :cond_66
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_6a
    if-ge v0, v6, :cond_95

    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 105
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v8

    if-nez v8, :cond_8f

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_8f

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal provider-class name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1, v9, v8}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 103
    :cond_8f
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_92} :catch_1b9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_92} :catch_1bf
    .catchall {:try_start_13 .. :try_end_92} :catchall_1c8

    move-result v7

    add-int/2addr v0, v7

    goto :goto_6a

    .line 108
    :cond_95
    :try_start_95
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9f

    .line 122
    :goto_98
    if-eqz v5, :cond_9d

    :try_start_9a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_b5

    :cond_9d
    :goto_9d
    move v0, v1

    .line 127
    :goto_9e
    return v0

    .line 118
    :catch_9f
    move-exception v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_98

    .line 123
    :catch_b5
    move-exception v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_9d

    .line 117
    :cond_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d5

    .line 122
    :goto_ce
    if-eqz v5, :cond_d3

    :try_start_d0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_eb

    :cond_d3
    :goto_d3
    move v0, v2

    .line 127
    goto :goto_9e

    .line 118
    :catch_d5
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_ce

    .line 123
    :catch_eb
    move-exception v1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f1
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_d3

    .line 113
    :catch_101
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    .line 114
    :goto_104
    :try_start_104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_104 .. :try_end_118} :catchall_1cd

    .line 117
    if-eqz v1, :cond_11d

    :try_start_11a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_12a

    .line 120
    :cond_11d
    :goto_11d
    if-eqz v5, :cond_d3

    :try_start_11f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_d3

    .line 123
    :catch_123
    move-exception v1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f1

    .line 118
    :catch_12a
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_11d

    .line 116
    :catchall_140
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 117
    :goto_143
    if-eqz v1, :cond_148

    :try_start_145
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_14e

    .line 120
    :cond_148
    :goto_148
    if-eqz v2, :cond_14d

    :try_start_14a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_164

    .line 125
    :cond_14d
    :goto_14d
    throw v0

    .line 118
    :catch_14e
    move-exception v1

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_148

    .line 123
    :catch_164
    move-exception v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_14d

    .line 111
    :catch_17a
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    .line 112
    :goto_17d
    if-eqz v3, :cond_182

    :try_start_17f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_18a

    .line 120
    :cond_182
    :goto_182
    if-eqz v5, :cond_187

    :try_start_184
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_1a0

    :cond_187
    :goto_187
    move v0, v2

    .line 125
    goto/16 :goto_9e

    .line 118
    :catch_18a
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_182

    .line 123
    :catch_1a0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/processing/ServiceProxy;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_187

    .line 111
    :catch_1b6
    move-exception v0

    move-object v3, v4

    goto :goto_17d

    :catch_1b9
    move-exception v0

    goto :goto_17d

    .line 113
    :catch_1bb
    move-exception v0

    move-object v1, v4

    goto/16 :goto_104

    :catch_1bf
    move-exception v0

    move-object v1, v3

    goto/16 :goto_104

    .line 116
    :catchall_1c3
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    goto/16 :goto_143

    :catchall_1c8
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    goto/16 :goto_143

    :catchall_1cd
    move-exception v0

    move-object v2, v5

    goto/16 :goto_143
.end method
