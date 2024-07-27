.class Lcom/s1243808733/aide/util/CreateClassDialog$100000001;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/util/CreateClassDialog$100000001;)Lcom/s1243808733/aide/util/CreateClassDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->access$L1000005(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->access$L1000005(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->access$L1000005(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->onClick(Landroid/view/View;)V

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->access$L1000005(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
