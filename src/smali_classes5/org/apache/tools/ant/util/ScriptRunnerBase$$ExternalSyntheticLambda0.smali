.class public final synthetic Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->lambda$addBeans$0$ScriptRunnerBase(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
