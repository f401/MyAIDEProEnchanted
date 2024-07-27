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
.field private final this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;)V
    .registers 3

    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;)Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 691
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 693
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 694
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v2, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 697
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 698
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 702
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 703
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;->this$0:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
