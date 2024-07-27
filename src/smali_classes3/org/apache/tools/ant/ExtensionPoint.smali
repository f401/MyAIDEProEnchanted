.class public Lorg/apache/tools/ant/ExtensionPoint;
.super Lorg/apache/tools/ant/Target;
.source "ExtensionPoint.java"


# static fields
.field private static final NO_CHILDREN_ALLOWED:Ljava/lang/String; = "you must not nest child elements into an extension-point"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Target;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Target;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final addDataType(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 4

    .line 57
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must not nest child elements into an extension-point"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addTask(Lorg/apache/tools/ant/Task;)V
    .registers 4

    .line 49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must not nest child elements into an extension-point"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
