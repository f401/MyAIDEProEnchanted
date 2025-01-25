.class public final synthetic Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Ant;

.field public final f$1:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Ant;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Ant;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Ant;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/Ant;->lambda$addAlmostAll$3$Ant(Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
