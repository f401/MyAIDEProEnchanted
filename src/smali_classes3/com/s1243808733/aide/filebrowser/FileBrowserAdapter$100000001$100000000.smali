.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;

.field private final val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final val$finalconverView:Landroid/view/View;

.field private final val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;Landroid/view/View;Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$finalconverView:Landroid/view/View;

    iput-object p3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iput-object p4, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;)Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 394
    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 395
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 396
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 400
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$finalconverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001$100000000;->val$THIS:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
