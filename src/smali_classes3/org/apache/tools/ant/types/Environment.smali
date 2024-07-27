.class public Lorg/apache/tools/ant/types/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Environment$Variable;
    }
.end annotation


# instance fields
.field protected variables:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    .line 138
    return-void
.end method

.method static synthetic lambda$getVariables$0(I)[Ljava/lang/String;
    .registers 2

    .line 159
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public getVariables()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariablesVector()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    return-object v0
.end method
