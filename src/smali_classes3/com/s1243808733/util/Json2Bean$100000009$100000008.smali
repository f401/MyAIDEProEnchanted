.class Lcom/s1243808733/util/Json2Bean$100000009$100000008;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009;

.field private final val$activity:Landroid/app/Activity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$result:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000008;)Lcom/s1243808733/util/Json2Bean$100000009;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040001

    new-instance v2, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;

    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$result:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000008;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 215
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    .line 216
    new-instance v1, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000007;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000007;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000008;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 223
    const/4 v0, 0x0

    return v0
.end method
