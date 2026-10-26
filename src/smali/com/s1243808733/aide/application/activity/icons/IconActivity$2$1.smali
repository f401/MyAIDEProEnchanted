.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

.field final val$view_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->val$view_editor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 158
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$projectResPath:Ljava/io/File;

    const-string v3, "drawable"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u6dfb\u52a0\u81f3\uff1a%s"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$projectResPath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    :cond_0
    const-string v0, "Added to: %s"

    goto :goto_0
.end method
