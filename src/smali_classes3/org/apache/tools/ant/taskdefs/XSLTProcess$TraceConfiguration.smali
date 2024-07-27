.class public final Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TraceConfiguration"
.end annotation


# instance fields
.field private elements:Z

.field private extension:Z

.field private generation:Z

.field private selection:Z

.field private templates:Z

.field final this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V
    .registers 2

    .line 1670
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElements()Z
    .registers 2

    .line 1690
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->elements:Z

    return v0
.end method

.method public getExtension()Z
    .registers 2

    .line 1710
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->extension:Z

    return v0
.end method

.method public getGeneration()Z
    .registers 2

    .line 1730
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->generation:Z

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 1779
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    return-object v0
.end method

.method public getSelection()Z
    .registers 2

    .line 1750
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->selection:Z

    return v0
.end method

.method public getTemplates()Z
    .registers 2

    .line 1770
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->templates:Z

    return v0
.end method

.method public setElements(Z)V
    .registers 2

    .line 1680
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->elements:Z

    .line 1681
    return-void
.end method

.method public setExtension(Z)V
    .registers 2

    .line 1700
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->extension:Z

    .line 1701
    return-void
.end method

.method public setGeneration(Z)V
    .registers 2

    .line 1720
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->generation:Z

    .line 1721
    return-void
.end method

.method public setSelection(Z)V
    .registers 2

    .line 1740
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->selection:Z

    .line 1741
    return-void
.end method

.method public setTemplates(Z)V
    .registers 2

    .line 1760
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;->templates:Z

    .line 1761
    return-void
.end method
