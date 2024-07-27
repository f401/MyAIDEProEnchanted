.class public final synthetic Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Rmic;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Rmic;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Rmic;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Rmic;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;)V

    return-void
.end method
