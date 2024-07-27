.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field private final val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field private final val$pictures:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$pictures:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 194
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$pictures:Ljava/io/File;

    const-string v2, "png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000046(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000004;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000035(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method
