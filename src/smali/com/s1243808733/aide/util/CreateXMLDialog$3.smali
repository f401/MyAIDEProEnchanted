.class Lcom/s1243808733/aide/util/CreateXMLDialog$3;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CreateXMLDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$abVar:Lcom/aide/common/ab;

.field final val$createInDirFile:Ljava/io/File;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$createInDirFile:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$abVar:Lcom/aide/common/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x6

    if-ne p2, p1, :cond_e

    .line 93
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$dialog:Landroid/app/AlertDialog;

    iget-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$input:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$createInDirFile:Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$abVar:Lcom/aide/common/ab;

    invoke-static {p1, p2, p3, v0}, Lcom/s1243808733/aide/util/CreateXMLDialog;->-$$Nest$smcreateXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    .line 95
    :cond_e
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$3;->val$dialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method
