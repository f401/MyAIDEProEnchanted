.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$1;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getProjectAppIcon()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
