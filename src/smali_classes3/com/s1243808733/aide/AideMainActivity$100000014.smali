.class Lcom/s1243808733/aide/AideMainActivity$100000014;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000014;->val$activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1134
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$100000014;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/s1243808733/util/JavaEscape;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x0

    return v0
.end method
