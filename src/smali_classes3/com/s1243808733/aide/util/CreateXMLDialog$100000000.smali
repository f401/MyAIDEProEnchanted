.class Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$abVar:Lcom/aide/common/ab;

.field private final val$createInDirFile:Ljava/io/File;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$createInDirFile:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$abVar:Lcom/aide/common/ab;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$createInDirFile:Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$100000000;->val$abVar:Lcom/aide/common/ab;

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/aide/util/CreateXMLDialog;->access$1000005(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    return-void
.end method
