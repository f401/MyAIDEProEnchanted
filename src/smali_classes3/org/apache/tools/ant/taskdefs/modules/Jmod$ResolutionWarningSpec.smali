.class public Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;
.super Ljava/lang/Object;
.source "Jmod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Jmod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolutionWarningSpec"
.end annotation


# instance fields
.field private reason:Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;)V
    .registers 2

    .line 947
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;Ljava/lang/String;)V
    .registers 4

    .line 960
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->setReason(Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;)V

    .line 962
    return-void
.end method


# virtual methods
.method public getReason()Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;
    .registers 2

    .line 970
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->reason:Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    return-object v0
.end method

.method public setReason(Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;)V
    .registers 2

    .line 979
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->reason:Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    .line 980
    return-void
.end method

.method public validate()V
    .registers 4

    .line 988
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->reason:Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    if-eqz v0, :cond_0

    .line 992
    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;

    .line 990
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "reason attribute is required"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
