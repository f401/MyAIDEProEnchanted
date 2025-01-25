.class public final synthetic Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Ant;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Ant;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Ant;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Ant;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V

    return-void
.end method
