.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field private final val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field private final val$projectResPath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->val$projectResPath:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x0

    .line 132
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000046(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->val$projectResPath:Ljava/io/File;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000000;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v7, ".png"

    invoke-virtual {v5, v7}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000035(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    return v6
.end method
