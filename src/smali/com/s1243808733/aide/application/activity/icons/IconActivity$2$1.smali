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
    .registers 3
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
    .registers 6

    .line 158
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$projectResPath:Ljava/io/File;

    const-string v1, "drawable"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_32

    const-string p2, "已添加至：%s"

    goto :goto_34

    :cond_32
    const-string p2, "Added to: %s"

    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$projectResPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method
