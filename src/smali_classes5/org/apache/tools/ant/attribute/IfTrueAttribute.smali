.class public Lorg/apache/tools/ant/attribute/IfTrueAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfTrueAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfTrueAttribute$Unless;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z
    .registers 4

    .line 39
    invoke-static {p2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/attribute/IfTrueAttribute;->convertResult(Z)Z

    move-result v0

    return v0
.end method
