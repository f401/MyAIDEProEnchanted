.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;
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


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 257
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;

    move-result-object p1

    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    .line 259
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7$1;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;Ljava/lang/String;)V

    .line 261
    const p1, 0x1040001

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 268
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
