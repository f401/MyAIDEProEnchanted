.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;
.source "CCMCheckinDefault.java"


# static fields
.field public static final DEFAULT_TASK:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;-><init>()V

    .line 34
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;->setCcmAction(Ljava/lang/String;)V

    .line 35
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;->setTask(Ljava/lang/String;)V

    .line 36
    return-void
.end method
