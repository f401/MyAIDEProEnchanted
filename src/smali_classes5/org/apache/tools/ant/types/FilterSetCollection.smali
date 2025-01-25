.class public Lorg/apache/tools/ant/types/FilterSetCollection;
.super Ljava/lang/Object;
.source "FilterSetCollection.java"


# instance fields
.field private filterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public hasFilters()Z
    .registers 3

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/FilterSetCollection$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/FilterSetCollection$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public replaceTokens(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterSet;

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FilterSet;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 69
    :cond_17
    return-object p1
.end method
