.class public Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.super Lorg/apache/tools/ant/types/DataType;
.source "ResourceSelectorContainer.java"


# instance fields
.field private final resourceSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    .line 42
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    .line 49
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 50
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
    .registers 2

    .line 140
    const-class v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 3

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->setChecked(Z)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 131
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 132
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 135
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->setChecked(Z)V

    goto :goto_0
.end method

.method public getResourceSelectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getResourceSelectors()Ljava/util/List;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->dieOnCircularReference()V

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectors()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getSelectors()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getResourceSelectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSelectors()Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->hasSelectors()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->dieOnCircularReference()V

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectorCount()I
    .registers 2

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->selectorCount()I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->dieOnCircularReference()V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->resourceSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
