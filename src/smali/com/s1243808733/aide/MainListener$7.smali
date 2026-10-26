.class Lcom/s1243808733/aide/MainListener$7;
.super Landroid/text/style/ClickableSpan;
.source "MainListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener;->addProjectInfoDialogMoreButton(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$match:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    const-string v1, ".aar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    goto :goto_0
.end method
