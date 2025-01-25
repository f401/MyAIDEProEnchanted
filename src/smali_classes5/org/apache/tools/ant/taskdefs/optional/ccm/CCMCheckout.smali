.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckout;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;
.source "CCMCheckout.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;-><init>()V

    .line 32
    const-string v0, "co"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckout;->setCcmAction(Ljava/lang/String;)V

    .line 33
    return-void
.end method
