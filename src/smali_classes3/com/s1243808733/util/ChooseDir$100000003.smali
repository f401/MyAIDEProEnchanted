.class Lcom/s1243808733/util/ChooseDir$100000003;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir;

.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$100000003;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$100000003;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$100000003;)Lcom/s1243808733/util/ChooseDir;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000003;->this$0:Lcom/s1243808733/util/ChooseDir;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/util/ChooseDir$100000003;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/s1243808733/util/ChooseDir$100000003;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v3, -0x2

    invoke-virtual {v0, v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/s1243808733/util/ChooseDir$100000003;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/s1243808733/util/ChooseDir$100000003$100000001;

    invoke-direct {v3, p0, v2, v0}, Lcom/s1243808733/util/ChooseDir$100000003$100000001;-><init>(Lcom/s1243808733/util/ChooseDir$100000003;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/s1243808733/util/ChooseDir$100000003$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/ChooseDir$100000003$100000002;-><init>(Lcom/s1243808733/util/ChooseDir$100000003;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
