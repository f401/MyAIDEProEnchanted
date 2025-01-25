.class public Lorg/apache/tools/ant/taskdefs/LoadFile;
.super Lorg/apache/tools/ant/taskdefs/LoadResource;
.source "LoadFile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;-><init>()V

    return-void
.end method


# virtual methods
.method public final setSrcFile(Ljava/io/File;)V
    .registers 3

    .line 39
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/LoadFile;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 40
    return-void
.end method
