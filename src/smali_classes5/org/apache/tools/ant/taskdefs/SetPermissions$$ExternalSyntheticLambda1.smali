.class public final synthetic Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/SetPermissions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/SetPermissions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/SetPermissions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/SetPermissions;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->$r8$lambda$X14yI0DKSIkku-nNGcfd2Se_NAM(Lorg/apache/tools/ant/taskdefs/SetPermissions;Ljava/nio/file/Path;)V

    return-void
.end method
