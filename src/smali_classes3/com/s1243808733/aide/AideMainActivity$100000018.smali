.class Lcom/s1243808733/aide/AideMainActivity$100000018;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field private final val$activity:Landroid/app/Activity;

.field private final val$currentProject:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->val$currentProject:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000018;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->val$activity:Landroid/app/Activity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity$100000018;->val$currentProject:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/util/ConverProject;->showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/io/File;)V

    .line 1186
    const/4 v0, 0x0

    return v0
.end method
