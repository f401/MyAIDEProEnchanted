.class public Lorg/apache/tools/ant/types/selectors/MajoritySelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;
.source "MajoritySelector.java"


# instance fields
.field private allowtie:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 9

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->validate()V

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 80
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 85
    goto :goto_0

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_1

    .line 86
    :cond_1
    if-le v1, v3, :cond_3

    .line 87
    const/4 v2, 0x1

    .line 93
    :cond_2
    :goto_2
    return v2

    .line 89
    :cond_3
    if-gt v3, v1, :cond_2

    .line 93
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    goto :goto_2
.end method

.method public setAllowtie(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->hasSelectors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "{majorityselect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
