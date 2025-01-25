.class public Lorg/apache/tools/ant/taskdefs/Filter;
.super Lorg/apache/tools/ant/Task;
.source "Filter.java"


# instance fields
.field private filtersFile:Ljava/io/File;

.field private token:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    if-eqz v3, :cond_34

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    if-nez v2, :cond_34

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    if-nez v2, :cond_34

    move v2, v0

    .line 76
    :goto_f
    if-nez v3, :cond_36

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    if-eqz v3, :cond_36

    .line 79
    :goto_19
    if-nez v2, :cond_1d

    if-eqz v0, :cond_38

    .line 85
    :cond_1d
    if-eqz v0, :cond_2e

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2e
    if-eqz v2, :cond_33

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->readFilters()V

    .line 92
    :cond_33
    return-void

    :cond_34
    move v2, v1

    .line 74
    goto :goto_f

    :cond_36
    move v0, v1

    .line 76
    goto :goto_19

    .line 80
    :cond_38
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both token and value parameters, or only a filtersFile parameter is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected readFilters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading filters from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Filter;->log(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->readFiltersFromFile(Ljava/io/File;)V

    .line 101
    return-void
.end method

.method public setFiltersfile(Ljava/io/File;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    .line 66
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    .line 56
    return-void
.end method
