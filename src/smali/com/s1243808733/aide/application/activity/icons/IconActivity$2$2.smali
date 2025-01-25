.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 176
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
