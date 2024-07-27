.class public Lorg/ahocorasick/interval/IntervalNode;
.super Ljava/lang/Object;
.source "IntervalNode.java"


# instance fields
.field private intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation
.end field

.field private left:Lorg/ahocorasick/interval/IntervalNode;

.field private point:I

.field private right:Lorg/ahocorasick/interval/IntervalNode;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    .line 12
    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    .line 17
    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->determineMedian(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/interval/Intervalable;

    .line 23
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v4

    iget v5, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    if-ge v4, v5, :cond_0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v4

    iget v5, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    if-le v4, v5, :cond_1

    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object v4, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 33
    new-instance v0, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {v0, v1}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    .line 35
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 36
    new-instance v0, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {v0, v2}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    .line 38
    :cond_4
    return-void
.end method


# virtual methods
.method protected addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/interval/Intervalable;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method protected checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            "Lorg/ahocorasick/interval/IntervalNode$Direction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/interval/Intervalable;

    .line 95
    sget-object v3, Lorg/ahocorasick/interval/IntervalNode$1;->$SwitchMap$org$ahocorasick$interval$IntervalNode$Direction:[I

    invoke-virtual {p2}, Lorg/ahocorasick/interval/IntervalNode$Direction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v3

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v3

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    return-object v1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected checkForOverlapsToTheLeft(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/ahocorasick/interval/IntervalNode$Direction;->LEFT:Lorg/ahocorasick/interval/IntervalNode$Direction;

    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected checkForOverlapsToTheRight(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lorg/ahocorasick/interval/IntervalNode$Direction;->RIGHT:Lorg/ahocorasick/interval/IntervalNode$Direction;

    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public determineMedian(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)I"
        }
    .end annotation

    const/4 v2, -0x1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/interval/Intervalable;

    .line 44
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v5

    .line 45
    invoke-interface {v0}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v4

    .line 46
    if-eq v1, v2, :cond_0

    if-ge v5, v1, :cond_4

    :cond_0
    move v0, v5

    .line 49
    :goto_1
    if-eq v3, v2, :cond_3

    if-le v4, v3, :cond_1

    move v3, v4

    :cond_1
    :goto_2
    move v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    add-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/IntervalNode;",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1, p2}, Lorg/ahocorasick/interval/IntervalNode;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget v1, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    .line 62
    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlapsToTheRight(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    .line 72
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget v1, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlapsToTheLeft(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    .line 68
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    .line 69
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
