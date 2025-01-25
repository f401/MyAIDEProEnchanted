.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;
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

.field final val$projectResPath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->val$projectResPath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    .line 132
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;->val$projectResPath:Ljava/io/File;

    const-string v4, "drawable"

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mexportToPNG(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method
