.class public Lorg/apache/tools/ant/property/ResolvePropertyMap;
.super Ljava/lang/Object;
.source "ResolvePropertyMap.java"

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# instance fields
.field private expandingLHS:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final master:Lorg/apache/tools/ant/property/GetProperty;

.field private final parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

.field private prefix:Ljava/lang/String;

.field private prefixValues:Z

.field private final seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/property/GetProperty;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Lorg/apache/tools/ant/property/GetProperty;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 52
    iput-object p2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->master:Lorg/apache/tools/ant/property/GetProperty;

    .line 53
    new-instance v0, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-direct {v0, p1, p3, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    iput-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

    .line 54
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 77
    :try_start_9
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    if-eqz v0, :cond_83

    .line 78
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_26
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->master:Lorg/apache/tools/ant/property/GetProperty;

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/property/GetProperty;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_6d

    move-result-object v0

    .line 82
    if-eqz v0, :cond_34

    .line 87
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    :goto_33
    return-object v0

    .line 90
    :cond_34
    :try_start_34
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    if-nez v0, :cond_81

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

    iget-object v2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_6d

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    :catchall_6d
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    throw v0

    .line 64
    :cond_74
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property %s was circularly defined."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_81
    move-object v0, p1

    goto :goto_56

    :cond_83
    move-object v0, p1

    goto :goto_26
.end method

.method public resolveAllProperties(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public resolveAllProperties(Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->map:Ljava/util/Map;

    .line 144
    iput-object p2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    .line 145
    iput-boolean p3, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 149
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    if-nez v1, :cond_29

    const-string v1, ""

    .line 151
    :goto_25
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 150
    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    .line 153
    :cond_2e
    return-void
.end method
