.class public Lcom/s1243808733/util/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredFieldCount(Ljava/lang/Class;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    .line 98
    :cond_8
    array-length p0, p0

    :goto_9
    return p0
.end method

.method public static getDeclaredMethodCount(Ljava/lang/Class;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    .line 88
    :cond_8
    array-length p0, p0

    :goto_9
    return p0
.end method

.method public static getFieldCount(Ljava/lang/Class;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    .line 93
    :cond_8
    array-length p0, p0

    :goto_9
    return p0
.end method

.method public static getMethodCount(Ljava/lang/Class;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    .line 84
    :cond_8
    array-length p0, p0

    :goto_9
    return p0
.end method

.method public static getSuperClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
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
    :goto_c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 75
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 78
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 7

    .line 14
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "类名"

    goto :goto_1e

    :cond_1c
    const-string v2, "Class name"

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 19
    const/high16 v2, 0x41c00000  # 24.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 21
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "指定类分析"

    goto :goto_44

    :cond_42
    const-string v4, "Specify class analysis"

    :goto_44
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 24
    const v2, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 28
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/ClassUtils$1;

    invoke-direct {v2, v1, p0}, Lcom/s1243808733/util/ClassUtils$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
