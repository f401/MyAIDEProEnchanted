.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->val$pictures:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    .line 194
    new-instance v3, Ljava/io/File;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->val$pictures:Ljava/io/File;

    const-string v1, "png"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v4, "drawable"

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mexportToPNG(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method
