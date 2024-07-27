.class public Lorg/apache/tools/ant/types/optional/ScriptMapper;
.super Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.source "ScriptMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public addMappedName(Ljava/lang/String;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public clear()V
    .registers 3

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->initScriptRunner()V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->clear()V

    .line 85
    const-string v0, "ant_mapper"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->executeScript(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 40
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 49
    return-void
.end method
