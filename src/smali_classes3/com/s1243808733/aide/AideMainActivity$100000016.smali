.class Lcom/s1243808733/aide/AideMainActivity$100000016;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field private final val$activity:Landroid/app/Activity;

.field private final val$currentProject:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/io/File;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->val$currentProject:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000016;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->val$currentProject:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1162
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$100000016;->val$activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/s1243808733/util/BatchReplace;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1163
    const/4 v0, 0x0

    return v0

    .line 1162
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
