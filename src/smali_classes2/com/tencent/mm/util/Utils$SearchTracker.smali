.class Lcom/tencent/mm/util/Utils$SearchTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;
    }
.end annotation


# instance fields
.field matchInfo:Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

.field final patternToReplacement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pendingPatterns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->patternToReplacement:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->pendingPatterns:Ljava/util/Set;

    const/4 v0, 0x0

    check-cast v0, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

    iput-object v0, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->matchInfo:Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

    iput-object p1, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->text:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    iget-object v2, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->patternToReplacement:Ljava/util/Map;

    aget-object v3, p3, v0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->pendingPatterns:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method hasNextMatch(I)Z
    .registers 8

    const/4 v3, -0x1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->pendingPatterns:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    new-instance v3, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

    iget-object v0, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->patternToReplacement:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v0, v2}, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->matchInfo:Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->text:Ljava/lang/String;

    invoke-virtual {v4, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/tencent/mm/util/Utils$SearchTracker;->pendingPatterns:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eq v2, v3, :cond_3

    if-ge v4, v2, :cond_0

    :cond_3
    move-object v1, v0

    move v2, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
