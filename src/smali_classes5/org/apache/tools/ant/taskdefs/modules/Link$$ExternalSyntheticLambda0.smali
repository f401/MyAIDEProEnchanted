.class public final synthetic Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/CompositeMapper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/CompositeMapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/CompositeMapper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/CompositeMapper;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->lambda$execute$0(Lorg/apache/tools/ant/util/CompositeMapper;Ljava/nio/file/Path;)V

    return-void
.end method
