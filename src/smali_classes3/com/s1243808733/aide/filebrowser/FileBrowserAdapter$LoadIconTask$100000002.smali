.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;)Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 575
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
