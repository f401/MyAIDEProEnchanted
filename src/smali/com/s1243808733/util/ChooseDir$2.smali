.class Lcom/s1243808733/util/ChooseDir$2;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ChooseDir;

.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$2;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/util/ChooseDir$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/s1243808733/util/ChooseDir$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/widget/Button;

    .line 70
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const v2, 0x104000a

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/ChooseDir$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/s1243808733/util/ChooseDir$2$1;-><init>(Lcom/s1243808733/util/ChooseDir$2;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/s1243808733/util/ChooseDir$2$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/ChooseDir$2$2;-><init>(Lcom/s1243808733/util/ChooseDir$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
