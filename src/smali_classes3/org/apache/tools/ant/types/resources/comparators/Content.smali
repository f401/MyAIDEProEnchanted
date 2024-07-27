.class public Lorg/apache/tools/ant/types/resources/comparators/Content;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Content.java"


# instance fields
.field private binary:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    return-void
.end method


# virtual methods
.method public isBinary()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    return v0
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 5

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, p2, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->compareContent(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBinary(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/comparators/Content;->binary:Z

    .line 43
    return-void
.end method
