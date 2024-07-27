.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003;

.field private final val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field private final val$projectResPath:Ljava/io/File;

.field private final val$view_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003;Ljava/io/File;Landroid/widget/EditText;Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$projectResPath:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$view_editor:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;)Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 158
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$projectResPath:Ljava/io/File;

    const-string v3, "drawable"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u6dfb\u52a0\u81f3\uff1a%s"

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000003$100000001;->val$projectResPath:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v5, v0}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    :cond_0
    const-string v0, "Added to: %s"

    move-object v1, v0

    goto :goto_0
.end method
