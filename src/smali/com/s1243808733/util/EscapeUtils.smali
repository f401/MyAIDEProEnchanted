.class public abstract Lcom/s1243808733/util/EscapeUtils;
.super Ljava/lang/Object;
.source "EscapeUtils.java"


# static fields
.field public static final XML:Lcom/s1243808733/util/EscapeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/s1243808733/util/XMLEscape;

    invoke-direct {v0}, Lcom/s1243808733/util/XMLEscape;-><init>()V

    sput-object v0, Lcom/s1243808733/util/EscapeUtils;->XML:Lcom/s1243808733/util/EscapeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/s1243808733/util/EscapeUtils;)V
    .locals 2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/s1243808733/util/EscapeUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract escapeText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x2

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 28
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    invoke-virtual {v0, v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 35
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v2, v0, v4, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 38
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "XML\u8f6c\u4e49"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8f6c\u4e49"

    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 43
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u53cd\u8f6c\u4e49"

    :goto_2
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    const v2, 0x1040001

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    new-instance v2, Lcom/s1243808733/util/EscapeUtils$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/util/EscapeUtils$1;-><init>(Lcom/s1243808733/util/EscapeUtils;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 57
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/EscapeUtils$2;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/util/EscapeUtils$2;-><init>(Lcom/s1243808733/util/EscapeUtils;Landroid/widget/EditText;)V

    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/EscapeUtils$3;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/util/EscapeUtils$3;-><init>(Lcom/s1243808733/util/EscapeUtils;Landroid/widget/EditText;)V

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/EscapeUtils$4;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/util/EscapeUtils$4;-><init>(Lcom/s1243808733/util/EscapeUtils;Landroid/widget/EditText;)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 39
    :cond_1
    const-string v0, "XML escape"

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "Escape"

    goto :goto_1

    .line 43
    :cond_3
    const-string v0, "Invert escape"

    goto :goto_2
.end method

.method public abstract unEscapeText(Ljava/lang/String;)Ljava/lang/String;
.end method
