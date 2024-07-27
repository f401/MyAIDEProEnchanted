.class Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;
.super Ljava/lang/Object;
.source "FileBrowserListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$adapterView:Landroid/widget/AdapterView;

.field private final val$itemid:J

.field private final val$j:Ljava/lang/Object;

.field private final val$position:I

.field private final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$j:Ljava/lang/Object;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$adapterView:Landroid/widget/AdapterView;

    iput-object p3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$position:I

    iput-wide p5, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$itemid:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$j:Ljava/lang/Object;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$view:Landroid/view/View;

    iget v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$position:I

    iget-wide v4, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$100000000;->val$itemid:J

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->onFileBrowserItemClick2(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 254
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->appendOpenFile(Ljava/io/File;I)V

    .line 256
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 259
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->notifyDataSetChanged()V

    return-void
.end method
