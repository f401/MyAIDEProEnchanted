.class public Lcom/sun/tools/javac/util/Log;
.super Lcom/sun/tools/javac/util/AbstractLog;
.source "Log.java"


# static fields
.field public static final logKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/util/Log;",
            ">;"
        }
    .end annotation
.end field

.field public static final outKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final MaxErrors:I

.field public final MaxWarnings:I

.field public deferDiagnostics:Z

.field public deferredDiagnostics:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field private diagFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field protected diagListener:Ljavax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/tools/DiagnosticListener",
            "<-",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field public dumpOnError:Z

.field public emitWarnings:Z

.field public final errWriter:Ljava/io/PrintWriter;

.field public expectDiagKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Lcom/sun/tools/javac/util/JavacMessages;

.field public multipleErrors:Z

.field public nerrors:I

.field public final noticeWriter:Ljava/io/PrintWriter;

.field public nwarnings:I

.field public promptOnError:Z

.field private recorded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Ljavax/tools/JavaFileObject;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public suppressNotes:Z

.field public final warnWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/Log;->logKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 71
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 188
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->defaultWriter(Lcom/sun/tools/javac/util/Context;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/Log;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/io/PrintWriter;)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;Ljava/io/PrintWriter;)V
    .registers 3

    .line 195
    invoke-direct {p0, p1, p2, p2, p2}, Lcom/sun/tools/javac/util/Log;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    .line 156
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    .line 121
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 125
    iput v1, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 129
    iput v1, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Log;->recorded:Ljava/util/Set;

    .line 157
    sget-object v0, Lcom/sun/tools/javac/util/Log;->logKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 158
    iput-object p2, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    .line 159
    iput-object p3, p0, Lcom/sun/tools/javac/util/Log;->warnWriter:Ljava/io/PrintWriter;

    .line 160
    iput-object p4, p0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    .line 162
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    .line 163
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->dumpOnError:Z

    .line 164
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->promptOnError:Z

    .line 165
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    const-string v2, "none"

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->emitWarnings:Z

    .line 166
    const-string v0, "suppressNotes"

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->suppressNotes:Z

    .line 167
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->getDefaultMaxErrors()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/util/Log;->getIntOption(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/main/OptionName;I)I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->MaxErrors:I

    .line 168
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->getDefaultMaxWarnings()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/util/Log;->getIntOption(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/main/OptionName;I)I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->MaxWarnings:I

    .line 170
    const-string v0, "rawDiagnostics"

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    .line 171
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/util/Log;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 172
    if-eqz v0, :cond_9c

    new-instance v0, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/Options;)V

    .line 173
    :goto_76
    iput-object v0, p0, Lcom/sun/tools/javac/util/Log;->diagFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 175
    const-class v0, Ljavax/tools/DiagnosticListener;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/DiagnosticListener;

    .line 177
    iput-object v0, p0, Lcom/sun/tools/javac/util/Log;->diagListener:Ljavax/tools/DiagnosticListener;

    .line 179
    const-string v0, "expectKeys"

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_9b

    .line 181
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ", *"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    .line 182
    :cond_9b
    return-void

    .line 173
    :cond_9c
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;

    iget-object v2, p0, Lcom/sun/tools/javac/util/Log;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/util/JavacMessages;)V

    goto :goto_76
.end method

.method static final defaultWriter(Lcom/sun/tools/javac/util/Context;)Ljava/io/PrintWriter;
    .registers 4

    .line 202
    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 203
    if-nez v0, :cond_16

    .line 204
    sget-object v1, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 205
    :cond_16
    return-object v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 244
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntOption(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/main/OptionName;I)I
    .registers 5

    .line 249
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_11

    .line 252
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_10

    move-result v0

    .line 253
    if-gtz v0, :cond_f

    const v0, 0x7fffffff

    .line 257
    :cond_f
    :goto_f
    return v0

    .line 255
    :catch_10
    move-exception v0

    :cond_11
    move v0, p3

    .line 257
    goto :goto_f
.end method

.method public static varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compiler.misc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getDefaultLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;
    .registers 2

    .line 212
    sget-object v0, Lcom/sun/tools/javac/util/Log;->logKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Log;

    .line 213
    if-nez v0, :cond_f

    .line 214
    new-instance v0, Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/Log;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 215
    :cond_f
    return-object v0
.end method

.method private printErrLine(ILjava/io/PrintWriter;)V
    .registers 8

    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    move-object v2, v1

    .line 364
    :goto_7
    if-nez v2, :cond_12

    .line 374
    :goto_9
    return-void

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLine(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_7

    .line 366
    :cond_12
    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result v3

    .line 368
    invoke-static {p2, v2}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move v1, v0

    .line 369
    :goto_1c
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_34

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_31

    const-string v0, "\t"

    :goto_2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 370
    :cond_31
    const-string v0, " "

    goto :goto_2a

    .line 372
    :cond_34
    const-string v0, "^"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_9
.end method

.method public static printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 224
    :goto_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 228
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    :cond_21
    return-void
.end method

.method private printRawError(ILjava/lang/String;)V
    .registers 7

    .line 548
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_23

    .line 549
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 559
    :goto_1d
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 560
    return-void

    .line 551
    :cond_23
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_56

    .line 554
    iget-object v2, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v2, v0}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 557
    :cond_56
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/Log;->printErrLine(ILjava/io/PrintWriter;)V

    goto :goto_1d
.end method


# virtual methods
.method public currentSourceFile()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    goto :goto_5
.end method

.method protected varargs directError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/Log;->printErrLines(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 403
    return-void
.end method

.method public flush()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 310
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->warnWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 311
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 312
    return-void
.end method

.method protected getDefaultMaxErrors()I
    .registers 2

    .line 265
    const/16 v0, 0x64

    return v0
.end method

.method protected getDefaultMaxWarnings()I
    .registers 2

    .line 272
    const/16 v0, 0x64

    return v0
.end method

.method public getDiagnosticFormatter()Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->diagFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method

.method protected getWriterForDiagnosticType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/io/PrintWriter;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    sget-object v0, Lcom/sun/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 522
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    :goto_16
    return-object v0

    .line 525
    :cond_17
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 519
    :cond_1d
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->warnWriter:Ljava/io/PrintWriter;

    goto :goto_16

    .line 516
    :cond_20
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    goto :goto_16

    .line 513
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hasDiagnosticListener()Z
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->diagListener:Ljavax/tools/DiagnosticListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 541
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compiler.misc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs printErrLines(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public varargs printNoteLines(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public varargs printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verbose."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public prompt()V
    .registers 4

    .line 333
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->promptOnError:Z

    if-eqz v0, :cond_39

    .line 334
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "resume.abort"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    :cond_12
    :try_start_12
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_39

    const/16 v1, 0x52

    if-eq v0, v1, :cond_39

    const/16 v1, 0x58

    if-eq v0, v1, :cond_30

    const/16 v1, 0x61

    if-eq v0, v1, :cond_39

    const/16 v1, 0x72

    if-eq v0, v1, :cond_39

    const/16 v1, 0x78

    if-ne v0, v1, :cond_12

    .line 348
    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "user abort"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_38} :catch_38

    .line 352
    :catch_38
    move-exception v0

    .line 355
    :cond_39
    return-void
.end method

.method public rawError(ILjava/lang/String;)V
    .registers 5

    .line 566
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iget v1, p0, Lcom/sun/tools/javac/util/Log;->MaxErrors:I

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->currentSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/util/Log;->shouldReport(Ljavax/tools/JavaFileObject;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/util/Log;->printRawError(ILjava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->prompt()V

    .line 569
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 571
    :cond_1c
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 572
    return-void
.end method

.method public rawWarning(ILjava/lang/String;)V
    .registers 5

    .line 578
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    iget v1, p0, Lcom/sun/tools/javac/util/Log;->MaxWarnings:I

    if-ge v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->emitWarnings:Z

    if-eqz v0, :cond_1e

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/Log;->printRawError(ILjava/lang/String;)V

    .line 581
    :cond_1e
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->prompt()V

    .line 582
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    .line 583
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 584
    return-void
.end method

.method public report(Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 4

    .line 442
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    if-eqz v0, :cond_a

    .line 443
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_9
    :goto_9
    return-void

    .line 447
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    if-eqz v0, :cond_15

    .line 448
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_15
    sget-object v0, Lcom/sun/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    const/4 v1, 0x2

    if-eq v0, v1, :cond_65

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 473
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iget v1, p0, Lcom/sun/tools/javac/util/Log;->MaxErrors:I

    if-ge v0, v1, :cond_9

    .line 474
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Log;->shouldReport(Ljavax/tools/JavaFileObject;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 475
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Log;->writeDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 476
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    goto :goto_9

    .line 464
    :cond_4b
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->emitWarnings:Z

    if-nez v0, :cond_55

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->isMandatory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 465
    :cond_55
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    iget v1, p0, Lcom/sun/tools/javac/util/Log;->MaxWarnings:I

    if-ge v0, v1, :cond_9

    .line 466
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Log;->writeDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 467
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    goto :goto_9

    .line 458
    :cond_65
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->emitWarnings:Z

    if-nez v0, :cond_6f

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->isMandatory()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6f
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->suppressNotes:Z

    if-nez v0, :cond_9

    .line 459
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Log;->writeDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    goto :goto_9

    .line 452
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public reportDeferredDiagnostics()V
    .registers 2

    .line 421
    const-class v0, Ljavax/tools/Diagnostic$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics(Ljava/util/Set;)V

    .line 422
    return-void
.end method

.method public reportDeferredDiagnostics(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/Diagnostic$Kind;",
            ">;)V"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 430
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_1b

    .line 431
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Log;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    goto :goto_3

    .line 434
    :cond_1b
    return-void
.end method

.method public setDiagnosticFormatter(Lcom/sun/tools/javac/api/DiagnosticFormatter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/sun/tools/javac/util/Log;->diagFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 303
    return-void
.end method

.method public setEndPosTable(Ljavax/tools/JavaFileObject;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileObject;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Log;->getSource(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/DiagnosticSource;->setEndPosTable(Ljava/util/Map;)V

    .line 282
    return-void
.end method

.method protected shouldReport(Ljavax/tools/JavaFileObject;I)Z
    .registers 6

    .line 319
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_8

    .line 320
    :cond_6
    const/4 v0, 0x1

    .line 326
    :cond_7
    :goto_7
    return v0

    .line 322
    :cond_8
    new-instance v1, Lcom/sun/tools/javac/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->recorded:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 324
    if-eqz v0, :cond_7

    .line 325
    iget-object v2, p0, Lcom/sun/tools/javac/util/Log;->recorded:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public varargs strictWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Log;->writeDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 414
    iget v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    .line 415
    return-void
.end method

.method protected writeDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 5

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/util/Log;->diagListener:Ljavax/tools/DiagnosticListener;

    if-eqz v0, :cond_7

    .line 487
    invoke-interface {v0, p1}, Ljavax/tools/DiagnosticListener;->report(Ljavax/tools/Diagnostic;)V

    .line 491
    :cond_7
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Log;->getWriterForDiagnosticType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/sun/tools/javac/util/Log;->diagFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    iget-object v2, p0, Lcom/sun/tools/javac/util/Log;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 495
    iget-boolean v1, p0, Lcom/sun/tools/javac/util/Log;->promptOnError:Z

    if-eqz v1, :cond_34

    .line 496
    sget-object v1, Lcom/sun/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    const/4 v2, 0x4

    if-eq v1, v2, :cond_44

    .line 503
    :cond_34
    :goto_34
    iget-boolean v1, p0, Lcom/sun/tools/javac/util/Log;->dumpOnError:Z

    if-eqz v1, :cond_40

    .line 504
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 506
    :cond_40
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 507
    return-void

    .line 499
    :cond_44
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Log;->prompt()V

    goto :goto_34
.end method
