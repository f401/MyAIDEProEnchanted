.class public final synthetic Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Parallel;->lambda$spinThreads$0$Parallel(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    move-result-object v0

    return-object v0
.end method
