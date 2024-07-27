.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;)Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
