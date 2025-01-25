.class public Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;
.super Ljava/lang/Object;
.source "InstanceOf.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final ONE_ONLY:Ljava/lang/String; = "Exactly one of class|type must be set."


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private project:Lorg/apache/tools/ant/Project;

.field private type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_35

    move v0, v1

    :goto_7
    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    if-nez v4, :cond_37

    move v3, v1

    :goto_c
    if-eq v0, v3, :cond_56

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    .line 110
    if-eqz v4, :cond_2c

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_4e

    .line 115
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_40

    .line 121
    :try_start_28
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_2b} :catch_39

    move-result-object v0

    .line 126
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    :cond_35
    move v0, v2

    .line 106
    goto :goto_7

    :cond_37
    move v3, v2

    goto :goto_c

    .line 122
    :catch_39
    move-exception v0

    .line 123
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :cond_40
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "type %s not found."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_4e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No project set for InstanceOf ResourceSelector; the type attribute is invalid."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_56
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Exactly one of class|type must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->clazz:Ljava/lang/Class;

    .line 57
    return-void

    .line 54
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The class attribute has already been set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->project:Lorg/apache/tools/ant/Project;

    .line 46
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->type:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/InstanceOf;->uri:Ljava/lang/String;

    .line 73
    return-void
.end method
