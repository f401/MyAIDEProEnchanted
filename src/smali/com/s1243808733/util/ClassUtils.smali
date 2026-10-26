.class public Lcom/s1243808733/util/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredFieldCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public static getDeclaredMethodCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public static getFieldCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public static getMethodCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public static getSuperClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x0

    .line 14
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7c7b\u540d"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v0, -0x2

    invoke-virtual {v1, v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 19
    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v0, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 21
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6307\u5b9a\u7c7b\u5206\u6790"

    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 24
    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 28
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/ClassUtils$1;

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/util/ClassUtils$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 17
    :cond_0
    const-string v0, "Class name"

    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "Specify class analysis"

    goto :goto_1
.end method
