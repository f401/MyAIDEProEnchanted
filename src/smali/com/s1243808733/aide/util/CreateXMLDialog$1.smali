.class Lcom/s1243808733/aide/util/CreateXMLDialog$1;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 58
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$createInDirFile:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$abVar:Lcom/aide/common/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 62
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$createInDirFile:Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;->val$abVar:Lcom/aide/common/ab;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/aide/util/CreateXMLDialog;->-$$Nest$smcreateXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    return-void
.end method
