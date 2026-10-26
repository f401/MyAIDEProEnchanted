.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field final val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field final val$pictures:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->val$pictures:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->val$pictures:Ljava/io/File;

    const-string v3, "vector"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u5bfc\u51fa\u81f3"

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "Exported to"

    goto :goto_0
.end method
