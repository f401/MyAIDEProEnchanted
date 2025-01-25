.class public Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;
.super Ljava/lang/Object;
.source "BuiltinNative2Ascii.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;


# static fields
.field static final IMPLEMENTATION_NAME:Ljava/lang/String; = "builtin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getReader(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/BufferedReader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    if-nez p3, :cond_4

    if-nez p2, :cond_f

    .line 64
    :cond_4
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_e
.end method

.method private getWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    if-nez p3, :cond_4

    .line 73
    const-string p2, "ASCII"

    .line 75
    :cond_4
    if-nez p2, :cond_11

    .line 76
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 78
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_10
.end method

.method static synthetic lambda$translate$0(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)Ljava/util/Iterator;
    .registers 3

    .line 85
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    .line 86
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method private translate(Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/util/function/UnaryOperator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/io/Writer;",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda0;-><init>(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    const-string v2, "%s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 89
    :cond_25
    return-void
.end method


# virtual methods
.method public final convert(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getReverse()Z

    move-result v0

    .line 49
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 50
    :try_start_8
    invoke-direct {p0, p2, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->getReader(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/BufferedReader;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_34

    move-result-object v2

    .line 51
    :try_start_c
    invoke-direct {p0, p3, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->getWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2d

    move-result-object v1

    .line 53
    if-eqz v0, :cond_23

    :try_start_12
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda1;

    :goto_14
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->translate(Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/util/function/UnaryOperator;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_26

    .line 55
    if-eqz v1, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2d

    :cond_1c
    if-eqz v2, :cond_21

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_34

    :cond_21
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_23
    :try_start_23
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_14

    .line 50
    :catchall_26
    move-exception v0

    if-eqz v1, :cond_2c

    :try_start_29
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3d

    :cond_2c
    :goto_2c
    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3f

    :cond_33
    :goto_33
    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    .line 56
    :catch_34
    move-exception v0

    .line 57
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Exception trying to translate data"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catchall_3d
    move-exception v1

    goto :goto_2c

    :catchall_3f
    move-exception v1

    goto :goto_33
.end method
