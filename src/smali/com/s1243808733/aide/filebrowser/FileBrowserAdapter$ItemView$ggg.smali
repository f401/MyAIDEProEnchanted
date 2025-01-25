.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;
.super Landroid/graphics/drawable/ColorDrawable;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ggg"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 703
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 709
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 712
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    .line 714
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 715
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 716
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 717
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 720
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 721
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object p1, p1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object p1, p1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object p1, p1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
