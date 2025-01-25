.class public final Lcom/google/common/io/PatternFilenameFilter;
.super Ljava/lang/Object;
.source "PatternFilenameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/PatternFilenameFilter;-><init>(Ljava/util/regex/Pattern;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/common/io/PatternFilenameFilter;->pattern:Ljava/util/regex/Pattern;

    .line 56
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1  # Ljava/io/File;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Lcom/google/common/io/PatternFilenameFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
