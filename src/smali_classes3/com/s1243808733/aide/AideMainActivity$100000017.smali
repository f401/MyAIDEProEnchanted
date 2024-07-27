.class Lcom/s1243808733/aide/AideMainActivity$100000017;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000017;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000017;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000017;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000017;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1173
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$100000017;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Json2Bean;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1174
    const/4 v0, 0x0

    return v0
.end method
