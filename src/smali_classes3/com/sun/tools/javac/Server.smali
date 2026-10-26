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
    .locals 2

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
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/Server;-><init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;Z)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/io/BufferedReader;Ljava/io/OutputStream;Z)V
    .locals 0

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
    .locals 4
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
    .locals 3
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
    .locals 6
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
    .locals 13

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move-object v4, v1

    .line 136
    :goto_1
    if-eqz v0, :cond_2

    .line 137
    :try_start_1
    const-string v6, "PWD:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 145
    :cond_0
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 139
    :cond_1
    const-string v6, "END"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    :cond_2
    if-nez v4, :cond_5

    .line 154
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v6

    .line 156
    :try_start_4
    sget-object v4, Lcom/sun/tools/javac/Server;->tool:Ljavax/tools/JavaCompiler;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    :try_start_5
    invoke-static {}, Ljavax/tools/StandardLocation;->values()[Ljavax/tools/StandardLocation;

    move-result-object v8

    array-length v9, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v3

    :goto_4
    if-ge v0, v9, :cond_6

    aget-object v10, v8, v0

    .line 158
    :try_start_6
    sget-object v11, Lcom/sun/tools/javac/Server;->fm:Ljavax/tools/StandardJavaFileManager;

    invoke-interface {v11, v10, v1}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_3
    :try_start_7
    const-string v6, "-XDstdout"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 177
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_5
    iget-boolean v2, p0, Lcom/sun/tools/javac/Server;->isSocket:Z

    if-nez v2, :cond_4

    .line 179
    :try_start_8
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 184
    :cond_4
    :goto_6
    :try_start_9
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const-string v4, "EXIT: %s%n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 189
    :goto_7
    :try_start_a
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 190
    iget-object v2, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 194
    :goto_8
    sget-object v2, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v4, "EXIT: %s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    throw v0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    :try_start_b
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    goto/16 :goto_1

    .line 152
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    goto/16 :goto_3

    .line 159
    :cond_6
    :try_start_c
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/tools/javac/Server;->fm:Ljavax/tools/StandardJavaFileManager;

    invoke-direct {p0, v0, v1, v5}, Lcom/sun/tools/javac/Server;->compile(Ljava/io/OutputStream;Ljavax/tools/StandardJavaFileManager;Ljava/util/List;)I

    move-result v2

    .line 161
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 168
    :goto_9
    const/4 v0, 0x3

    if-lt v2, v0, :cond_8

    .line 169
    :try_start_d
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v1, "problem: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 174
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    sget-object v4, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v8, "Real time: %sms"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v0, v6, v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 177
    iget-boolean v0, p0, Lcom/sun/tools/javac/Server;->isSocket:Z

    if-nez v0, :cond_7

    .line 179
    :try_start_e
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 184
    :cond_7
    :goto_b
    :try_start_f
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const-string v1, "EXIT: %s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 189
    :goto_c
    :try_start_10
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 194
    :goto_d
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v1, "EXIT: %s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    return-void

    .line 161
    :catchall_1
    move-exception v0

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 162
    :catchall_2
    move-exception v0

    .line 163
    :try_start_13
    sget-object v1, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/sun/tools/javac/Server;->out:Ljava/io/OutputStream;

    const/4 v8, 0x1

    invoke-direct {v1, v4, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_9

    .line 177
    :catchall_3
    move-exception v0

    move v1, v2

    goto/16 :goto_5

    .line 171
    :cond_8
    sget-object v0, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    const-string v1, "success: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_a

    .line 185
    :catch_2
    move-exception v0

    .line 186
    sget-object v1, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 191
    :catch_3
    move-exception v0

    .line 192
    sget-object v1, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 185
    :catch_4
    move-exception v2

    .line 186
    sget-object v4, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 191
    :catch_5
    move-exception v2

    .line 192
    sget-object v4, Lcom/sun/tools/javac/Server;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 180
    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v2

    goto/16 :goto_6
.end method
