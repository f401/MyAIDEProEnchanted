.class Lcom/sun/tools/javac/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/Server$CwdFileManager;
    }
.end annotation


# static fields
.field static fm:Ljavax/tools/StandardJavaFileManager;

.field private static logger:Ljava/util/logging/Logger;

.field private static final tool:Ljavax/tools/JavaCompiler;


# instance fields
.field private final in:Ljava/io/BufferedReader;

.field private final isSocket:Z

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 65
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/Server;->tool:Ljavax/tools/JavaCompiler;

    .line 67
    invoke-interface {v0, v1, v1, v1}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/Server;->fm:Ljavax/tools/StandardJavaFileManager;

    .line 68
    const-string v0, "com.sun.tools.javac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    .line 75
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;)V
    .registers 4

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/Server;-><init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;Z)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;Z)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    .line 84
    iput-object p2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    .line 85
    iput-boolean p3, p0, Lcom/sun/tools/javac/Server;->isSocket:Z

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 93
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/Server;-><init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;Z)V

    .line 96
    return-void
.end method

.method private compile(Ljava/io/OutputStream;Ljavax/tools/StandardJavaFileManager;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljavax/tools/StandardJavaFileManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    .line 201
    sget-object v1, Lcom/sun/tools/javac/Server;->tool:Ljavax/tools/JavaCompiler;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v2, p1, v0}, Ljavax/tools/JavaCompiler;->run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 99
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 109
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const v2, 0xcafe

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 113
    :goto_0
    new-instance v2, Lcom/sun/tools/javac/Server;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/tools/javac/Server;-><init>(Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: %s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 117
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 120
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v4, -0x1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    :goto_0
    move-object v2, v1

    move-object v3, v0

    .line 136
    :goto_1
    if-eqz v3, :cond_1

    .line 137
    :try_start_1
    const-string v0, "PWD:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v0

    .line 145
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    move-object v3, v2

    :goto_3
    move-object v2, v0

    .line 150
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "END"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    if-nez v2, :cond_3

    .line 154
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v2

    .line 156
    :try_start_4
    sget-object v7, Lcom/sun/tools/javac/Server;->tool:Ljavax/tools/JavaCompiler;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    :try_start_5
    invoke-static {}, Ljavax/tools/StandardLocation;->values()[Ljavax/tools/StandardLocation;

    move-result-object v8

    array-length v9, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v5

    :goto_5
    if-ge v0, v9, :cond_4

    aget-object v10, v8, v0

    .line 158
    :try_start_6
    sget-object v11, Lcom/sun/tools/javac/Server;->fm:Ljavax/tools/StandardJavaFileManager;

    invoke-interface {v11, v10, v1}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 141
    :cond_2
    :try_start_7
    const-string v0, "-XDstdout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_2

    .line 146
    :catch_1
    move-exception v2

    .line 147
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, v1

    .line 149
    goto :goto_3

    .line 152
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v1

    goto :goto_4

    .line 159
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/tools/javac/Server;->fm:Ljavax/tools/StandardJavaFileManager;

    invoke-direct {p0, v0, v1, v6}, Lcom/sun/tools/javac/Server;->compile(Ljava/io/OutputStream;Ljavax/tools/StandardJavaFileManager;Ljava/util/List;)I

    move-result v4

    .line 161
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v1, v4

    .line 168
    :goto_6
    const/4 v0, 0x3

    if-lt v1, v0, :cond_7

    .line 169
    :try_start_9
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v4, "problem: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 174
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 175
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v4, "Real time: %sms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long/2addr v2, v8

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 177
    iget-boolean v0, p0, Lcom/sun/tools/javac/Server;->isSocket:Z

    if-nez v0, :cond_5

    .line 179
    :try_start_a
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 184
    :cond_5
    :goto_8
    :try_start_b
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const-string v2, "EXIT: %s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 189
    :goto_9
    :try_start_c
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 194
    :goto_a
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v2, "EXIT: %s"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 162
    :catchall_1
    move-exception v0

    move v1, v4

    .line 163
    :try_start_f
    sget-object v4, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance v4, Ljava/io/PrintWriter;

    iget-object v7, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 166
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_6

    .line 177
    :catchall_2
    move-exception v0

    :goto_b
    iget-boolean v2, p0, Lcom/sun/tools/javac/Server;->isSocket:Z

    if-nez v2, :cond_6

    .line 179
    :try_start_10
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 184
    :cond_6
    :goto_c
    :try_start_11
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const-string v3, "EXIT: %s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 189
    :goto_d
    :try_start_12
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 190
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 194
    :goto_e
    sget-object v2, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v3, "EXIT: %s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    throw v0

    .line 171
    :cond_7
    :try_start_13
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v4, "success: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_7

    .line 185
    :catch_2
    move-exception v0

    .line 186
    sget-object v2, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 191
    :catch_3
    move-exception v0

    .line 192
    sget-object v2, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 185
    :catch_4
    move-exception v2

    .line 186
    sget-object v3, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 191
    :catch_5
    move-exception v2

    .line 192
    sget-object v3, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 180
    :catch_6
    move-exception v2

    goto/16 :goto_c

    :catch_7
    move-exception v0

    goto/16 :goto_8

    .line 177
    :catchall_3
    move-exception v0

    move v1, v4

    goto/16 :goto_b

    :cond_8
    move-object v0, v2

    goto/16 :goto_2
.end method
