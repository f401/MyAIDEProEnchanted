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
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 153
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_14
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x6

    if-ne p2, p1, :cond_3e

    .line 155
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/util/CreateClassDialog;->onClick(Landroid/view/View;)V

    .line 157
    :cond_3e
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
