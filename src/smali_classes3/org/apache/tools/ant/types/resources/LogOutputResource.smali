.class public Lorg/apache/tools/ant/types/resources/LogOutputResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "LogOutputResource.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/Appendable;


# static fields
.field private static final NAME:Ljava/lang/String; = "[Ant log]"


# instance fields
.field private outputStream:Lorg/apache/tools/ant/taskdefs/LogOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 3

    .line 41
    const-string v0, "[Ant log]"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LogOutputResource;->outputStream:Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;I)V
    .registers 4

    .line 51
    const-string v0, "[Ant log]"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LogOutputResource;->outputStream:Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    .line 53
    return-void
.end method


# virtual methods
.method public getAppendOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LogOutputResource;->outputStream:Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LogOutputResource;->outputStream:Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    return-object v0
.end method
