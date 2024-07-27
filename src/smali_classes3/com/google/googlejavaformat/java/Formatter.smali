.class public final Lcom/google/googlejavaformat/java/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# static fields
.field static final EMPTY_RANGE:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ERROR_DIAGNOSTIC:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljavax/tools/Diagnostic",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    .line 97
    new-instance v0, Lcom/google/googlejavaformat/java/Formatter$1;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/Formatter$1;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/java/Formatter;->ERROR_DIAGNOSTIC:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 122
    invoke-static {}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->defaultOptions()Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/Formatter;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/googlejavaformat/java/Formatter;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    .line 127
    return-void
.end method

.method static format(Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/googlejavaformat/java/JavaOutput;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 139
    new-instance v0, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 140
    new-instance v1, Ljavax/tools/DiagnosticCollector;

    invoke-direct {v1}, Ljavax/tools/DiagnosticCollector;-><init>()V

    .line 141
    const-class v2, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 142
    invoke-static {v0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v2

    const-string v3, "allowStringFolding"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Lcom/sun/tools/javac/file/JavacFileManager;

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v5, v3}, Lcom/sun/tools/javac/file/JavacFileManager;-><init>(Lcom/sun/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    .line 146
    :try_start_0
    sget-object v3, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/file/JavacFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    new-instance v2, Lcom/google/googlejavaformat/java/Formatter$2;

    const-string v3, "source"

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    sget-object v4, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-direct {v2, v3, v4, p0}, Lcom/google/googlejavaformat/java/Formatter$2;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;Lcom/google/googlejavaformat/java/JavaInput;)V

    .line 158
    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 159
    invoke-static {v0}, Lcom/sun/tools/javac/parser/ParserFactory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ParserFactory;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/sun/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lcom/sun/tools/javac/parser/Parser;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Parser;->parseCompilationUnit()Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 167
    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInput;->setCompilationUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V

    .line 170
    invoke-virtual {v1}, Ljavax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/java/Formatter;->ERROR_DIAGNOSTIC:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Lcom/google/googlejavaformat/OpsBuilder;

    invoke-direct {v1, p0, p1}, Lcom/google/googlejavaformat/OpsBuilder;-><init>(Lcom/google/googlejavaformat/Input;Lcom/google/googlejavaformat/Output;)V

    .line 177
    new-instance v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;

    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->indentationMultiplier()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;-><init>(Lcom/google/googlejavaformat/OpsBuilder;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 178
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->sync(I)V

    .line 179
    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->drain()V

    .line 180
    new-instance v0, Lcom/google/googlejavaformat/DocBuilder;

    invoke-direct {v0}, Lcom/google/googlejavaformat/DocBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/DocBuilder;->withOps(Ljava/util/List;)Lcom/google/googlejavaformat/DocBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/DocBuilder;->build()Lcom/google/googlejavaformat/Doc;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/JavaOutput;->getCommentsHelper()Lcom/google/googlejavaformat/CommentsHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->maxLineLength()I

    move-result v2

    new-instance v3, Lcom/google/googlejavaformat/Doc$State;

    invoke-direct {v3, v6, v6}, Lcom/google/googlejavaformat/Doc$State;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlejavaformat/Doc;->computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc;->write(Lcom/google/googlejavaformat/Output;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/JavaOutput;->flush()V

    .line 185
    return-void

    .line 173
    :cond_0
    invoke-static {v1}, Lcom/google/googlejavaformat/FormattingError;->fromJavacDiagnostics(Ljava/lang/Iterable;)Lcom/google/googlejavaformat/FormattingError;

    move-result-object v0

    throw v0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static lineRangesToCharRanges(Ljava/lang/String;Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/RangeSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-static {p0}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v3

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/collect/RangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 199
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 202
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 204
    invoke-interface {v3, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 206
    :cond_0
    return-object v3
.end method


# virtual methods
.method public formatSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/Formatter;->getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/JavaOutput;->applyReplacements(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSource(Lcom/google/common/io/CharSource;Lcom/google/common/io/CharSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInput;

    invoke-direct {v0, p1}, Lcom/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v0, p2}, Lcom/google/googlejavaformat/java/ModifierOrderer;->reorderModifiers(Lcom/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lcom/google/googlejavaformat/java/JavaInput;

    move-result-object v0

    .line 263
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    new-instance v2, Lcom/google/googlejavaformat/java/JavaOutput;

    new-instance v3, Lcom/google/googlejavaformat/java/JavaCommentsHelper;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/Formatter;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-direct {v3, v1, v4}, Lcom/google/googlejavaformat/java/JavaCommentsHelper;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-direct {v2, v1, v0, v3}, Lcom/google/googlejavaformat/java/JavaOutput;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/googlejavaformat/CommentsHelper;)V

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/google/googlejavaformat/java/Formatter;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-static {v0, v2, v1}, Lcom/google/googlejavaformat/java/Formatter;->format(Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/googlejavaformat/java/JavaOutput;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V
    :try_end_0
    .catch Lcom/google/googlejavaformat/FormattingError; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/java/JavaInput;->characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/RangeSet;

    move-result-object v0

    .line 272
    invoke-virtual {v2, v0}, Lcom/google/googlejavaformat/java/JavaOutput;->getFormatReplacements(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Lcom/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/FormattingError;->diagnostics()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method
