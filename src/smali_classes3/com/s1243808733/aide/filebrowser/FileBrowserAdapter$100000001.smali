.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final val$finalconverView:Landroid/view/View;

.field private final val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;->val$finalconverView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;->val$finalconverView:Landroid/view/View;

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;Landroid/view/View;Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
