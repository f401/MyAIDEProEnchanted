.class public Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceRegex"
.end annotation


# instance fields
.field private flags:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private initialized:Z

.field private options:I

.field private regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

.field private substitution:Lorg/apache/tools/ant/types/Substitution;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 437
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialized:Z

    .line 443
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .registers 3

    .line 470
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialized:Z

    if-eqz v0, :cond_5

    .line 485
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/TokenFilter;->convertRegexOptions(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    .line 474
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 477
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    .line 478
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 480
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    if-nez v0, :cond_31

    .line 481
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    .line 483
    :cond_31
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    .line 484
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    goto :goto_4

    .line 475
    :cond_3e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing pattern in replaceregex"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 492
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialize()V

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    invoke-interface {v0, p1, v1}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 497
    :goto_d
    return-object p1

    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    .line 497
    invoke-interface {v0, p1, v1, v2}, Lorg/apache/tools/ant/util/regexp/Regexp;->substitute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d
.end method

.method public setFlags(Ljava/lang/String;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    .line 460
    return-void
.end method
