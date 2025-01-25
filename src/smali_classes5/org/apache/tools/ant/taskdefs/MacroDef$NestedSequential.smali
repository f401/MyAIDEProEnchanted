.class public Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;
.super Ljava/lang/Object;
.source "MacroDef.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedSequential"
.end annotation


# instance fields
.field private nested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public getNested()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    return-object v0
.end method

.method public similar(Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;)Z
    .registers 7

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 165
    iget-object v0, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_11

    move v0, v2

    .line 175
    :goto_10
    return v0

    :cond_11
    move v3, v2

    .line 168
    :goto_12
    if-ge v3, v4, :cond_30

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 170
    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->nested:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    .line 171
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v2

    .line 172
    goto :goto_10

    .line 168
    :cond_2c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    .line 175
    :cond_30
    const/4 v0, 0x1

    goto :goto_10
.end method
