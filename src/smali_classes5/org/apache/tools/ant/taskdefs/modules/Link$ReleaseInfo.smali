.class public Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseInfo"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private final propertiesToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final propertiesToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .registers 3

    .line 1728
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    .line 1742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createAdd()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;
    .registers 3

    .line 1771
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1772
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    return-object v0
.end method

.method public createDelete()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;
    .registers 3

    .line 1784
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1785
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1751
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public setDelete(Ljava/lang/String;)V
    .registers 9

    .line 1799
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 1800
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v5, v6, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1799
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1802
    :cond_1b
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 1761
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    .line 1762
    return-void
.end method

.method public toCommandLineOptions()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1825
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_1f

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--release-info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1830
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "--release-info=add"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;

    .line 1834
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->toProperties()Ljava/util/Properties;

    move-result-object v4

    .line 1835
    invoke-virtual {v4}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1836
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1841
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "--release-info=del:keys="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1847
    const-string v0, ""

    .line 1848
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    .line 1849
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const-string v0, ","

    move-object v1, v0

    .line 1853
    goto :goto_8c

    .line 1855
    :cond_a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1858
    :cond_ad
    return-object v2
.end method

.method public validate()V
    .registers 3

    .line 1813
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1814
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1815
    return-void
.end method
