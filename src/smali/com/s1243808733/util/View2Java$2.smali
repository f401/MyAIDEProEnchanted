.class Lcom/s1243808733/util/View2Java$2;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/View2Java;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$xmlcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/s1243808733/util/View2Java$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/s1243808733/util/View2Java$2;->val$xmlcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/util/View2Java$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 54
    invoke-static {}, Lcom/s1243808733/util/View2Java;->-$$Nest$sfgetcheckedItems()[Z

    move-result-object p1

    const/4 v0, 0x3

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/s1243808733/util/View2Java;->-$$Nest$sfgetcheckedItems()[Z

    move-result-object p1

    const/4 v0, 0x4

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_25

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "root View 和 root Activity 不能同时选择"

    goto :goto_1d

    :cond_1b
    const-string p1, "Root view and root activity cannot be selected at the same time"

    :goto_1d
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 58
    :cond_25
    iget-object p1, p0, Lcom/s1243808733/util/View2Java$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->hide()V

    .line 60
    :try_start_2a
    iget-object p1, p0, Lcom/s1243808733/util/View2Java$2;->val$xmlcode:Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/util/View2Java;->-$$Nest$sfgetcheckedItems()[Z

    move-result-object v0

    invoke-static {p1, v0}, Lcom/s1243808733/util/View2Java;->getCode(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/util/View2Java$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_3f} :catch_89
    .catchall {:try_start_2a .. :try_end_3f} :catchall_82

    if-eqz v1, :cond_44

    const-string v1, "生成结果(长按可复制)"

    goto :goto_46

    :cond_44
    const-string v1, "Generate results (long press to copy)"

    :goto_46
    :try_start_46
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_52} :catch_89
    .catchall {:try_start_46 .. :try_end_52} :catchall_82

    if-nez v1, :cond_57

    const-string v1, "no code"

    goto :goto_58

    :cond_57
    move-object v1, p1

    :goto_58
    :try_start_58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/View2Java$2$1;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/util/View2Java$2$1;-><init>(Lcom/s1243808733/util/View2Java$2;Ljava/lang/String;)V

    .line 65
    const p1, 0x1040001

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 77
    new-instance v0, Lcom/s1243808733/util/View2Java$2$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/util/View2Java$2$2;-><init>(Lcom/s1243808733/util/View2Java$2;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_81} :catch_89
    .catchall {:try_start_58 .. :try_end_81} :catchall_82

    goto :goto_9a

    :catchall_82
    move-exception p1

    .line 90
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_9a

    :catch_89
    move-exception p1

    .line 88
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_95

    const-string v1, "解析XML布局出错"

    goto :goto_97

    :cond_95
    const-string v1, "Error parsing XML layout"

    :goto_97
    invoke-static {v0, v1, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    return-void
.end method
