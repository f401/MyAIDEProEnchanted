.class public Lcom/google/googlejavaformat/java/FormatFileCallable;
.super Ljava/lang/Object;
.source "FormatFileCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final input:Ljava/lang/String;

.field private final options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

.field private final parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;


# direct methods
.method public constructor <init>(Lcom/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    .line 36
    iput-object p3, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    .line 37
    return-void
.end method

.method private characterRanges(Ljava/lang/String;)Lcom/google/common/collect/RangeSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v4

    .line 69
    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    move-object v0, v4

    .line 86
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/googlejavaformat/java/Formatter;->lineRangesToCharRanges(Ljava/lang/String;Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/RangeSet;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/google/common/collect/RangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    move v3, v0

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    .line 83
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 82
    invoke-interface {v4, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 76
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 86
    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_2
.end method

.method private fixImports(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/RemoveUnusedImports;->removeUnusedImports(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->sortImports()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->reorderImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/FormatFileCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->parameters:Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/FormatFileCallable;->fixImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/google/googlejavaformat/java/Formatter;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->options:Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/Formatter;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    iget-object v1, p0, Lcom/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    .line 46
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/FormatFileCallable;->characterRanges(Ljava/lang/String;)Lcom/google/common/collect/RangeSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/FormatFileCallable;->fixImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
