.class public abstract Lorg/apache/tools/ant/dispatch/DispatchTask;
.super Lorg/apache/tools/ant/Task;
.source "DispatchTask.java"

# interfaces
.implements Lorg/apache/tools/ant/dispatch/Dispatchable;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/dispatch/DispatchTask;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionParameterName()Ljava/lang/String;
    .registers 2

    .line 41
    const-string v0, "action"

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/dispatch/DispatchTask;->action:Ljava/lang/String;

    .line 50
    return-void
.end method
