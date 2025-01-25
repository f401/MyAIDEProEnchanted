.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$dumpDependencies$4$Depend(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
