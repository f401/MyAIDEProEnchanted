.class public Lorg/apache/tools/ant/attribute/IfSetAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfSetAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfSetAttribute$Unless;
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
    invoke-virtual {p0}, Lorg/apache/tools/ant/attribute/IfSetAttribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/attribute/IfSetAttribute;->convertResult(Z)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method
