.class Lcom/sun/tools/javac/Server$CwdFileManager;
.super Ljavax/tools/ForwardingJavaFileManager;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CwdFileManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/tools/ForwardingJavaFileManager",
        "<",
        "Ljavax/tools/JavaFileManager;",
        ">;"
    }
.end annotation


# instance fields
.field cwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/tools/JavaFileManager;)V
    .registers 2

    .line 208
    invoke-direct {p0, p1}, Ljavax/tools/ForwardingJavaFileManager;-><init>(Ljavax/tools/JavaFileManager;)V

    .line 209
    return-void
.end method


# virtual methods
.method getAbsoluteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 212
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/Server$CwdFileManager;->cwd:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
