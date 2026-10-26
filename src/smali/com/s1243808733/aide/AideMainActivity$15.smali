.class Lcom/s1243808733/aide/AideMainActivity$15;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1132
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$15;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$15;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/JavaEscape;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
