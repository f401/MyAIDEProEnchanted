.class public final Lcom/google/googlejavaformat/java/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final MAX_THREADS:I = 0x14

.field private static final STDIN_FILENAME:Ljava/lang/String; = "<stdin>"

.field static final VERSION:[Ljava/lang/String;


# instance fields
.field private final errWriter:Ljava/io/PrintWriter;

.field private final inStream:Ljava/io/InputStream;

.field private final outWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "google-java-format: Version 1.0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlejavaformat/java/Main;->VERSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/InputStream;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    .line 54
    iput-object p2, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    .line 55
    iput-object p3, p0, Lcom/google/googlejavaformat/java/Main;->inStream:Ljava/io/InputStream;

    .line 56
    return-void
.end method

.method private formatFiles(Lcom/google/googlejavaformat/java/CommandLineOptions;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)I
    .registers 14

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 146
    const/16 v0, 0x14

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 149
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 150
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    const-string v7, ".java"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 153
    iget-object v7, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping non-Java file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 156
    :cond_51
    new-array v7, v4, [Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 159
    :try_start_57
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_72

    .line 163
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/google/googlejavaformat/java/FormatFileCallable;

    invoke-direct {v0, p1, v8, p2}, Lcom/google/googlejavaformat/java/FormatFileCallable;-><init>(Lcom/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 160
    :catch_72
    move-exception v2

    .line 161
    iget-object v3, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": could not read file: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :goto_90
    return v1

    .line 168
    :cond_91
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :cond_9a
    :goto_9a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_186

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    :try_start_a6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_b2} :catch_179
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a6 .. :try_end_b2} :catch_103

    .line 188
    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->inPlace()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 194
    :try_start_c6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1, v7}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d8} :catch_d9

    goto :goto_9a

    .line 195
    :catch_d9
    move-exception v1

    .line 196
    iget-object v2, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": could not write file: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v4

    .line 198
    goto :goto_9a

    .line 201
    :cond_fd
    iget-object v0, p0, Lcom/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_9a

    .line 177
    :catch_103
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/googlejavaformat/java/FormatterException;

    if-eqz v2, :cond_148

    .line 179
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/FormatterException;->diagnostics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_176

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/FormatterDiagnostic;

    .line 180
    iget-object v3, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11a

    .line 183
    :cond_148
    iget-object v2, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_176
    move v3, v4

    .line 187
    goto/16 :goto_9a

    .line 173
    :catch_179
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v4

    .line 176
    goto/16 :goto_9a

    .line 204
    :cond_186
    xor-int/lit8 v1, v3, 0x1

    goto/16 :goto_90
.end method

.method private formatStdin(Lcom/google/googlejavaformat/java/CommandLineOptions;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)I
    .registers 8

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/Main;->inStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_4f

    .line 213
    :try_start_d
    new-instance v1, Lcom/google/googlejavaformat/java/FormatFileCallable;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/googlejavaformat/java/FormatFileCallable;-><init>(Lcom/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/FormatFileCallable;->call()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/google/googlejavaformat/java/FormatterException; {:try_start_d .. :try_end_1b} :catch_1d

    .line 217
    const/4 v0, 0x0

    .line 222
    :goto_1c
    return v0

    .line 218
    :catch_1d
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/FormatterException;->diagnostics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/FormatterDiagnostic;

    .line 220
    iget-object v2, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<stdin>:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 222
    :cond_4d
    const/4 v0, 0x1

    goto :goto_1c

    .line 211
    :catch_4f
    move-exception v0

    .line 212
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .line 67
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 70
    :try_start_1c
    new-instance v0, Lcom/google/googlejavaformat/java/Main;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/google/googlejavaformat/java/Main;->format([Ljava/lang/String;)I
    :try_end_26
    .catch Lcom/google/googlejavaformat/java/UsageException; {:try_start_1c .. :try_end_26} :catch_2d
    .catchall {:try_start_1c .. :try_end_26} :catchall_36

    .line 74
    :goto_26
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 77
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 78
    return-void

    .line 72
    :catch_2d
    move-exception v0

    .line 73
    :try_start_2e
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/UsageException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_36

    goto :goto_26

    .line 76
    :catchall_36
    move-exception v0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 77
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 78
    throw v0
.end method

.method public static varargs processArgs([Ljava/lang/String;)Lcom/google/googlejavaformat/java/CommandLineOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/UsageException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->parse(Ljava/lang/Iterable;)Lcom/google/googlejavaformat/java/CommandLineOptions;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_87
    .catchall {:try_start_0 .. :try_end_7} :catchall_79

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 96
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_18
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->inPlace()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 103
    :cond_28
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->isSelection()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5a

    .line 106
    :cond_31
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ne v2, v3, :cond_6a

    .line 110
    if-gtz v0, :cond_51

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->version()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->help()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 113
    :cond_51
    return-object v1

    .line 101
    :cond_52
    new-instance v0, Lcom/google/googlejavaformat/java/UsageException;

    const-string v1, "in-place formatting was requested but no files were provided"

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5a
    new-instance v0, Lcom/google/googlejavaformat/java/UsageException;

    const-string v1, "partial formatting is only support for a single file"

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_62
    new-instance v0, Lcom/google/googlejavaformat/java/UsageException;

    const-string v1, "no files were provided"

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_6a
    new-instance v0, Lcom/google/googlejavaformat/java/UsageException;

    const-string v1, "-offsets and -lengths flags must be provided in matching pairs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_79
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    new-instance v1, Lcom/google/googlejavaformat/java/UsageException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :catch_87
    move-exception v0

    .line 90
    new-instance v1, Lcom/google/googlejavaformat/java/UsageException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public varargs format([Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/UsageException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Main;->processArgs([Ljava/lang/String;)Lcom/google/googlejavaformat/java/CommandLineOptions;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->version()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 126
    sget-object v2, Lcom/google/googlejavaformat/java/Main;->VERSION:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_3f

    aget-object v4, v2, v1

    .line 127
    iget-object v5, p0, Lcom/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 131
    :cond_1b
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->help()Z

    move-result v0

    if-nez v0, :cond_48

    .line 136
    invoke-static {}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->aosp()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->AOSP:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    :goto_2d
    invoke-virtual {v2, v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;)Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    .line 138
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 139
    invoke-direct {p0, v1, v0}, Lcom/google/googlejavaformat/java/Main;->formatStdin(Lcom/google/googlejavaformat/java/CommandLineOptions;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)I

    move-result v0

    .line 141
    :cond_3f
    :goto_3f
    return v0

    .line 136
    :cond_40
    sget-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    goto :goto_2d

    .line 141
    :cond_43
    invoke-direct {p0, v1, v0}, Lcom/google/googlejavaformat/java/Main;->formatFiles(Lcom/google/googlejavaformat/java/CommandLineOptions;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)I

    move-result v0

    goto :goto_3f

    .line 132
    :cond_48
    new-instance v0, Lcom/google/googlejavaformat/java/UsageException;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/UsageException;-><init>()V

    throw v0
.end method
