.class public Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;
.super Ljava/lang/Object;
.source "ResourcesMatch.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private asText:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 56
    if-nez p1, :cond_3

    .line 61
    :goto_2
    return-void

    .line 59
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    :cond_c
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 60
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_2
.end method

.method public eval()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_5a

    .line 74
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v0

    if-le v0, v2, :cond_58

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    move-object v1, v0

    .line 79
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 82
    :try_start_24
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    invoke-static {v1, v0, v4}, Lorg/apache/tools/ant/util/ResourceUtils;->contentEquals(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_30

    move-result v1

    if-nez v1, :cond_2e

    .line 83
    const/4 v0, 0x0

    .line 92
    :goto_2d
    return v0

    :cond_2e
    move-object v1, v0

    .line 88
    goto :goto_18

    .line 85
    :catch_30
    move-exception v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "when comparing resources "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_58
    move v0, v2

    .line 92
    goto :goto_2d

    .line 71
    :cond_5a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify one or more nested resource collections"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsText(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    .line 49
    return-void
.end method
