.class public Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupArgument"
.end annotation


# instance fields
.field private final packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

.field private title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .registers 3

    .line 1583
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .registers 3

    .line 1632
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    return-void
.end method

.method public addTitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .registers 2

    .line 1602
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 1603
    return-void
.end method

.method public getPackages()Ljava/lang/String;
    .registers 3

    .line 1640
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1641
    const-string v1, ":"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1610
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setPackages(Ljava/lang/String;)V
    .registers 5

    .line 1618
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1620
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1621
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 1622
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_7

    .line 1625
    :cond_1d
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 1592
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1593
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->addTitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    .line 1595
    return-void
.end method
