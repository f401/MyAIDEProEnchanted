.class Lcom/s1243808733/aide/util/CreateClassDialog$2;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, -0x1

    .line 153
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->onClick(Landroid/view/View;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
