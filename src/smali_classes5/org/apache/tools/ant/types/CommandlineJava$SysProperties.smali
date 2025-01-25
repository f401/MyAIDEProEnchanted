.class public Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
.super Lorg/apache/tools/ant/types/Environment;
.source "CommandlineJava.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/CommandlineJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysProperties"
.end annotation


# instance fields
.field private propertySets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field sys:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    return-void
.end method

.method private mergePropertySets()Ljava/util/Properties;
    .registers 4

    .line 215
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PropertySet;

    .line 217
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_b

    .line 219
    :cond_1f
    return-object v1
.end method


# virtual methods
.method public addDefinitionsToList(Ljava/util/ListIterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-super {p0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_23

    .line 110
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 114
    :cond_23
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->mergePropertySets()Ljava/util/Properties;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2f

    .line 118
    :cond_5c
    return-void
.end method

.method public addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V
    .registers 4

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    iget-object v1, p1, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    iget-object v1, p1, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 208
    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 183
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 184
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    .line 185
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->propertySets:Ljava/util/Vector;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 188
    :goto_1a
    return-object v0

    .line 187
    :catch_1b
    move-exception v0

    .line 188
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getVariables()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addDefinitionsToList(Ljava/util/ListIterator;)V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_13
    return-object v0

    :cond_14
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_13
.end method

.method public restoreSystem()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;

    if-eqz v0, :cond_14

    .line 167
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_b

    .line 171
    return-void

    .line 169
    :catch_b
    move-exception v0

    .line 170
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot modify system properties"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 163
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unbalanced nesting of SysProperties"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystem()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;

    .line 138
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->sys:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_15

    .line 142
    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_15

    .line 151
    :catch_2d
    move-exception v0

    .line 152
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot modify system properties"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->mergePropertySets()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Environment$Variable;

    .line 147
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment$Variable;->validate()V

    .line 148
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment$Variable;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment$Variable;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 150
    :cond_5e
    invoke-static {v1}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_61} :catch_2d

    .line 153
    return-void
.end method

.method public size()I
    .registers 3

    .line 126
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->mergePropertySets()Ljava/util/Properties;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->variables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
