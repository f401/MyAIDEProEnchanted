.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

.field final val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 408
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 413
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1$1;->val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
