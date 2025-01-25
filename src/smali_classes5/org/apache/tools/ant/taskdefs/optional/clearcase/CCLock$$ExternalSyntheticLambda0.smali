.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getObjselect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
