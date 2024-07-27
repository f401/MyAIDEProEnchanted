.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

.field private final val$btn:Landroid/widget/Button;

.field private final val$dirs:[Ljava/io/File;

.field private final val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$l:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$dirs:[Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v0, "\u786e\u5b9a\u8981\u6e05\u9664\u6b64\u6570\u636e\u5417?"

    const-string v2, "Do you want to clear this data?"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$l:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$btn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->val$dirs:[Ljava/io/File;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/widget/Button;[Ljava/io/File;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
