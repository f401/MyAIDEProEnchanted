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
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 583
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    const-string v0, ".aar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 584
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    return-void

    .line 587
    :cond_19
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$7;->val$match:Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    return-void
.end method
