.class Lcom/s1243808733/util/View2Java$100000003;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$xmlcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/View2Java$100000003;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/util/View2Java$100000003;->val$xmlcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/util/View2Java$100000003;->val$activity:Landroid/app/Activity;

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

    .line 54
    invoke-static {}, Lcom/s1243808733/util/View2Java;->access$L1000002()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/s1243808733/util/View2Java;->access$L1000002()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root View \u548c root Activity \u4e0d\u80fd\u540c\u65f6\u9009\u62e9"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_1
    return-void

    .line 55
    :cond_0
    const-string v0, "Root view and root activity cannot be selected at the same time"

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003;->val$xmlcode:Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/util/View2Java;->access$L1000002()[Z

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/util/View2Java;->getCode(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u751f\u6210\u7ed3\u679c(\u957f\u6309\u53ef\u590d\u5236)"

    :goto_2
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no code"

    :goto_3
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/View2Java$100000003$100000001;

    iget-object v3, p0, Lcom/s1243808733/util/View2Java$100000003;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v2, p0, v1, v3}, Lcom/s1243808733/util/View2Java$100000003$100000001;-><init>(Lcom/s1243808733/util/View2Java$100000003;Ljava/lang/String;Landroid/app/AlertDialog;)V

    const v1, 0x1040001

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 77
    new-instance v1, Lcom/s1243808733/util/View2Java$100000003$100000002;

    iget-object v2, p0, Lcom/s1243808733/util/View2Java$100000003;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/util/View2Java$100000003$100000002;-><init>(Lcom/s1243808733/util/View2Java$100000003;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 88
    iget-object v2, p0, Lcom/s1243808733/util/View2Java$100000003;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u89e3\u6790XML\u5e03\u5c40\u51fa\u9519"

    :goto_4
    invoke-static {v2, v0, v1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 62
    :cond_2
    const-string v0, "Generate results (long press to copy)"

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    .line 88
    :cond_4
    const-string v0, "Error parsing XML layout"

    goto :goto_4

    :catch_1
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/s1243808733/util/View2Java$100000003;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
