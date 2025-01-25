.class public Lorg/apache/tools/ant/taskdefs/EchoXML;
.super Lorg/apache/tools/ant/util/XMLFragment;
.source "EchoXML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;
    }
.end annotation


# static fields
.field private static final ERROR_NO_XML:Ljava/lang/String; = "No nested XML specified"


# instance fields
.field private append:Z

.field private file:Ljava/io/File;

.field private namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/util/XMLFragment;-><init>()V

    .line 47
    sget-object v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/EchoXML;->getFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/DocumentFragment;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_49

    .line 84
    new-instance v2, Lorg/apache/tools/ant/util/DOMElementWriter;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->getPolicy()Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V

    .line 85
    :try_start_19
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->file:Ljava/io/File;

    if-nez v1, :cond_2e

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V
    :try_end_23
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_19 .. :try_end_23} :catch_40
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_42

    .line 87
    :goto_23
    :try_start_23
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_39

    .line 88
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 92
    :cond_2d
    return-void

    .line 86
    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    invoke-static {v1, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;
    :try_end_37
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2a .. :try_end_37} :catch_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_42

    move-result-object v1

    goto :goto_23

    .line 85
    :catchall_39
    move-exception v0

    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_51

    :cond_3f
    :goto_3f
    :try_start_3f
    throw v0
    :try_end_40
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3f .. :try_end_40} :catch_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_42

    .line 88
    :catch_40
    move-exception v0

    .line 89
    throw v0

    .line 90
    :catch_42
    move-exception v0

    .line 91
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No nested XML specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catchall_51
    move-exception v1

    goto :goto_3f
.end method

.method public setAppend(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    .line 73
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->file:Ljava/io/File;

    .line 56
    return-void
.end method

.method public setNamespacePolicy(Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    .line 65
    return-void
.end method
