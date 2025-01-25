.class public Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtensionInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private path:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public createPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 204
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    .line 206
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->name:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 180
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->path:Lorg/apache/tools/ant/types/Path;

    .line 184
    :goto_6
    return-void

    .line 182
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 215
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 216
    return-void
.end method
