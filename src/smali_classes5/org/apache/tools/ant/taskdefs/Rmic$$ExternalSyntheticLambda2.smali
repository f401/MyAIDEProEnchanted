.class public final synthetic Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Rmic;

.field public final f$1:Ljava/io/File;

.field public final f$2:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Rmic;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Rmic;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$2:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Rmic;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;->f$2:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->lambda$execute$0$Rmic(Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;Ljava/lang/String;)V

    return-void
.end method
