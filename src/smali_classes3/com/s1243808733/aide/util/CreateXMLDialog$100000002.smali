.class Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final val$abVar:Lcom/aide/common/ab;

.field private final val$createInDirFile:Ljava/io/File;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$createInDirFile:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$abVar:Lcom/aide/common/ab;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 92
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$createInDirFile:Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$abVar:Lcom/aide/common/ab;

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/aide/util/CreateXMLDialog;->access$1000005(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000002;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
