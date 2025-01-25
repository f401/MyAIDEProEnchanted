.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$finalconverView:Landroid/view/View;

.field final val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$finalconverView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;

    invoke-direct {v1, p0, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
