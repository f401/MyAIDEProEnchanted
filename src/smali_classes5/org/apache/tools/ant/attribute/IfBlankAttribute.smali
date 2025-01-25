.class public Lorg/apache/tools/ant/attribute/IfBlankAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfBlankAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfBlankAttribute$Unless;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z
    .registers 4

    .line 37
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/attribute/IfBlankAttribute;->convertResult(Z)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method
