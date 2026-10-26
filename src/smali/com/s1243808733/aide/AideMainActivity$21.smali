.class Lcom/s1243808733/aide/AideMainActivity$21;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1217
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$21;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$21;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x41c00000    # 24.0f

    .line 1221
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$21;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1222
    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1223
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity$21;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1224
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1225
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity$21;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v2}, Lcom/s1243808733/aide/AideMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/s1243808733/aide/AideMainActivity$21;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1228
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1229
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$21$1;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/AideMainActivity$21$1;-><init>(Lcom/s1243808733/aide/AideMainActivity$21;Landroid/widget/EditText;)V

    .line 1230
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1239
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v4
.end method
