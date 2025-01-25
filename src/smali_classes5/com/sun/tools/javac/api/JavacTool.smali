.class public final Lcom/sun/tools/javac/api/JavacTool;
.super Ljava/lang/Object;
.source "JavacTool.java"

# interfaces
.implements Ljavax/tools/JavaCompiler;


# instance fields
.field private final dummyContext:Lcom/sun/tools/javac/util/Context;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sharedCompiler:Lcom/sun/tools/javac/main/Main;

.field private final silent:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->options:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->dummyContext:Lcom/sun/tools/javac/util/Context;

    .line 73
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lcom/sun/tools/javac/api/JavacTool$1;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/api/JavacTool$1;-><init>(Lcom/sun/tools/javac/api/JavacTool;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->silent:Ljava/io/PrintWriter;

    .line 77
    new-instance v0, Lcom/sun/tools/javac/main/Main;

    const-string v1, "javac"

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTool;->silent:Ljava/io/PrintWriter;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->sharedCompiler:Lcom/sun/tools/javac/main/Main;

    .line 79
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTool;->dummyContext:Lcom/sun/tools/javac/util/Context;

    invoke-static {v1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/Main;->setOptions(Lcom/sun/tools/javac/util/Options;)V

    .line 91
    return-void
.end method

.method private varargs argsToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 102
    const/4 v0, 0x0

    .line 103
    array-length v1, p1

    if-lez v1, :cond_24

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v0, ""

    .line 106
    array-length v3, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_20

    aget-object v4, p1, v1

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 110
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_24
    return-object v0
.end method

.method public static create()Lcom/sun/tools/javac/api/JavacTool;
    .registers 1

    .line 98
    new-instance v0, Lcom/sun/tools/javac/api/JavacTool;

    invoke-direct {v0}, Lcom/sun/tools/javac/api/JavacTool;-><init>()V

    return-object v0
.end method

.method private static match(Lcom/sun/tools/javac/main/JavacOption$OptionKind;Lcom/sun/tools/javac/main/JavacOption$OptionKind;)Z
    .registers 3

    .line 141
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->HIDDEN:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static processOptions(Lcom/sun/tools/javac/util/Context;Ljavax/tools/JavaFileManager;Ljava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljavax/tools/JavaFileManager;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 211
    if-nez p2, :cond_5

    .line 253
    :cond_4
    return-void

    .line 214
    :cond_5
    invoke-static {p0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v3

    .line 216
    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;

    invoke-direct {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;-><init>()V

    .line 217
    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getJavacToolOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v4

    .line 218
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 219
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v2

    .line 222
    :goto_23
    array-length v6, v4

    if-ge v1, v6, :cond_2e

    .line 223
    aget-object v6, v4, v1

    invoke-interface {v6, v0}, Lcom/sun/tools/javac/main/JavacOption;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 226
    :cond_2e
    array-length v6, v4

    if-ne v1, v6, :cond_4a

    .line 227
    invoke-interface {p1, v0, v5}, Ljavax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 230
    const-string v1, "err.invalid.flag"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 235
    :cond_4a
    aget-object v6, v4, v1

    .line 236
    invoke-interface {v6}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 237
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-interface {v6, v3, v0, v1}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_7e
    const-string v1, "err.req.arg"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_8e
    invoke-interface {v6, v3, v0}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private varargs setOption1(Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$OptionKind;[Ljava/lang/Object;)V
    .registers 9

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/api/JavacTool;->argsToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->sharedCompiler:Lcom/sun/tools/javac/main/Main;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/Main;->getOption(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_52

    invoke-interface {v2}, Lcom/sun/tools/javac/main/JavacOption;->getKind()Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sun/tools/javac/api/JavacTool;->match(Lcom/sun/tools/javac/main/JavacOption$OptionKind;Lcom/sun/tools/javac/main/JavacOption$OptionKind;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 120
    array-length v0, p3

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_1b
    invoke-interface {v2}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v3

    if-ne v0, v3, :cond_4c

    .line 122
    invoke-interface {v2}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 123
    invoke-interface {v2, v4, p1, v1}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 129
    :cond_2d
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTool;->options:Ljava/util/List;

    new-instance v2, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v2, p1, v1}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    .line 120
    :cond_38
    const/4 v0, 0x0

    goto :goto_1b

    .line 124
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_40
    invoke-interface {v2, v4, p1}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSourceVersions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/SourceVersion;",
            ">;"
        }
    .end annotation

    .line 264
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_3:Ljavax/lang/model/SourceVersion;

    .line 265
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latest()Ljavax/lang/model/SourceVersion;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lcom/sun/tools/javac/file/JavacFileManager;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/DiagnosticListener",
            "<-",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/sun/tools/javac/file/JavacFileManager;"
        }
    .end annotation

    const/4 v4, 0x1

    .line 148
    new-instance v1, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 149
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 150
    if-eqz p1, :cond_12

    .line 151
    const-class v0, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v1, v0, p1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 152
    :cond_12
    if-nez p3, :cond_26

    .line 153
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 155
    :goto_1b
    sget-object v2, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-direct {v0, v1, v4, p3}, Lcom/sun/tools/javac/file/JavacFileManager;-><init>(Lcom/sun/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    return-object v0

    .line 154
    :cond_26
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_1b
.end method

.method public bridge synthetic getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;
    .registers 5

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/api/JavacTool;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lcom/sun/tools/javac/file/JavacFileManager;

    move-result-object v0

    return-object v0
.end method

.method public getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/sun/source/util/JavacTask;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljavax/tools/JavaFileManager;",
            "Ljavax/tools/DiagnosticListener",
            "<-",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Lcom/sun/source/util/JavacTask;"
        }
    .end annotation

    .line 167
    :try_start_0
    new-instance v3, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 168
    invoke-static {v3}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/ClientCodeWrapper;

    move-result-object v1

    .line 170
    if-eqz p4, :cond_2a

    .line 172
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 202
    :catch_1f
    move-exception v0

    .line 203
    :goto_20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :cond_2a
    if-eqz p5, :cond_59

    .line 175
    :try_start_2c
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    invoke-static {v0}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_59
    if-eqz p6, :cond_81

    .line 180
    invoke-virtual {v1, p6}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    :try_end_5e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_2c .. :try_end_5e} :catch_1f

    move-result-object v5

    .line 181
    :try_start_5f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 182
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v4, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    if-eq v0, v4, :cond_63

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All compilation units must be of SOURCE kind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7f
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_5f .. :try_end_7f} :catch_7f

    .line 202
    :catch_7f
    move-exception v0

    goto :goto_20

    :cond_81
    move-object v5, p6

    .line 179
    :cond_82
    if-eqz p3, :cond_8d

    .line 188
    :try_start_84
    const-class v0, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v1, p3}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/DiagnosticListener;)Ljavax/tools/DiagnosticListener;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 190
    :cond_8d
    if-nez p1, :cond_c7

    .line 191
    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V
    :try_end_9c
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_84 .. :try_end_9c} :catch_d3

    .line 195
    :goto_9c
    if-nez p2, :cond_a4

    .line 196
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_a0
    invoke-virtual {p0, p3, v0, v2}, Lcom/sun/tools/javac/api/JavacTool;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lcom/sun/tools/javac/file/JavacFileManager;
    :try_end_a3
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_a0 .. :try_end_a3} :catch_d6

    move-result-object p2

    .line 197
    :cond_a4
    :try_start_a4
    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/JavaFileManager;)Ljavax/tools/JavaFileManager;
    :try_end_a7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_a4 .. :try_end_a7} :catch_d9

    move-result-object v0

    .line 198
    :try_start_a8
    const-class v1, Ljavax/tools/JavaFileManager;

    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 199
    invoke-static {v3, v0, p4}, Lcom/sun/tools/javac/api/JavacTool;->processOptions(Lcom/sun/tools/javac/util/Context;Ljavax/tools/JavaFileManager;Ljava/lang/Iterable;)V

    .line 200
    new-instance v1, Lcom/sun/tools/javac/main/Main;

    const-string v2, "javacTask"

    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 201
    new-instance v0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/api/JavacTaskImpl;-><init>(Lcom/sun/tools/javac/main/Main;Ljava/lang/Iterable;Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    :try_end_c6
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_a8 .. :try_end_c6} :catch_dc

    return-object v0

    .line 193
    :cond_c7
    :try_start_c7
    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    new-instance v2, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V
    :try_end_d2
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_c7 .. :try_end_d2} :catch_d3

    goto :goto_9c

    .line 202
    :catch_d3
    move-exception v0

    goto/16 :goto_20

    :catch_d6
    move-exception v0

    goto/16 :goto_20

    :catch_d9
    move-exception v0

    goto/16 :goto_20

    :catch_dc
    move-exception v0

    goto/16 :goto_20
.end method

.method public bridge synthetic getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;
    .registers 8

    .line 68
    invoke-virtual/range {p0 .. p6}, Lcom/sun/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/sun/source/util/JavacTask;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .registers 7

    .line 269
    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;

    invoke-direct {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;-><init>()V

    .line 270
    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getJavacToolOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v1

    .line 271
    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1d

    aget-object v3, v1, v0

    .line 272
    invoke-interface {v3, p1}, Lcom/sun/tools/javac/main/JavacOption;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 273
    invoke-interface {v3}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v0

    .line 275
    :goto_19
    return v0

    .line 271
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 275
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public varargs run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I
    .registers 8

    .line 256
    if-nez p3, :cond_4

    .line 257
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 258
    :cond_4
    array-length v1, p4

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_10

    aget-object v2, p4, v0

    .line 259
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 260
    :cond_10
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p4, v0}, Lcom/sun/tools/javac/Main;->compile([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method public varargs setExtendedOption(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 137
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/api/JavacTool;->setOption1(Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$OptionKind;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public varargs setOption(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 133
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->NORMAL:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/api/JavacTool;->setOption1(Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$OptionKind;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method
