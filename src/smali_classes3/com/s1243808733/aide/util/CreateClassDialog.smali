.class public Lcom/s1243808733/aide/util/CreateClassDialog;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateBasicClass;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateEnum;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateInterface;,
        Lcom/s1243808733/aide/util/CreateClassDialog$CreateService;,
        Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;,
        Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;,
        Lcom/s1243808733/aide/util/CreateClassDialog$Item;
    }
.end annotation


# instance fields
.field private final mAbVar:Lcom/aide/common/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/s1243808733/aide/util/CreateClassDialog$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

.field private final mCreateInDir:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    .line 68
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mCreateInDir:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAbVar:Lcom/aide/common/ab;

    return-void
.end method

.method static synthetic access$1000015(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/util/CreateClassDialog;->getSimpleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/aide/util/CreateClassDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mCreateInDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/s1243808733/aide/util/CreateClassDialog;)Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$S1000003(Lcom/s1243808733/aide/util/CreateClassDialog;Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/s1243808733/aide/util/CreateClassDialog;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private addAdapterData(Landroid/widget/ArrayAdapter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/s1243808733/aide/util/CreateClassDialog$Item;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v1, "Class - \u7c7b"

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBasicClass;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBasicClass;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v2, "Activity - \u6d3b\u52a8"

    new-instance v3, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;ZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v1, "Interface - \u63a5\u53e3"

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$CreateInterface;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateInterface;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v1, "Enum - \u679a\u4e3e"

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$CreateEnum;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateEnum;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v1, "Service - \u670d\u52a1"

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$CreateService;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateService;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    const-string v1, "BroadcastReceiver - \u5e7f\u64ad\u63a5\u6536\u5668"

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/s1243808733/aide/util/CreateClassDialog$Item;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    .line 202
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    .line 202
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    .line 203
    iget-object v2, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    if-lez v2, :cond_0

    .line 205
    iget-object v3, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getBasicLayoutCode()Ljava/lang/String;
    .registers 9

    .line 300
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n<LinearLayout"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n    xmlns:android=\"http://schemas.android.com/apk/res/android\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n    xmlns:app=\"http://schemas.android.com/apk/res-auto\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n    android:orientation=\"vertical\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n    android:layout_width=\"match_parent\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n    android:layout_height=\"match_parent\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n</LinearLayout>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimpleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 213
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_0
    return-object p1
.end method

.method private initDialogView()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    .line 182
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x1090003

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 183
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->addAdapterData(Landroid/widget/ArrayAdapter;)V

    .line 184
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public static isEnableClassHeaderAnnotation()Z
    .registers 3

    .line 176
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "class_header_annotation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/aide/util/CreateClassDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->showDialog()V

    return-void
.end method

.method private upConfiguration()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->getInputContent()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mCreateInDir:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iput-object v0, v3, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->getInputContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".java"

    invoke-direct {p0, v0, v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->getSimpleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 330
    if-ltz v3, :cond_0

    .line 331
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iput-object v0, v3, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    .line 337
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, v3, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->isAddTag:Z

    .line 338
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v3, v3, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v3, v3, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->abstractModifier:Z

    .line 340
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000018(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->autoAdd:Z

    .line 342
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000019(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000022(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000021(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->layoutName:Ljava/lang/String;

    return-void

    .line 318
    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mCreateInDir:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 337
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

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

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 223
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->getInputContent()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v2, ".java"

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->getSimpleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mCreateInDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ".java"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v2, v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    .line 239
    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog;->upConfiguration()V

    .line 242
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-boolean v2, v2, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    if-eqz v2, :cond_6

    .line 244
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    iget-object v4, v4, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->layoutName:Ljava/lang/String;

    const-string v5, ".xml"

    invoke-direct {p0, v4, v5}, Lcom/s1243808733/aide/util/CreateClassDialog;->getSimpleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ".xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v4

    const-string v5, "layout"

    invoke-static {v4, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 247
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000021(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u6587\u4ef6\u5df2\u5b58\u5728"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 293
    :cond_2
    :goto_1
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u65e0\u6cd5\u5199\u5165"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, "Unable to write"

    goto :goto_2

    .line 249
    :cond_4
    const-string v0, "The file already exists"

    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/aide/util/CreateClassDialog;->getBasicLayoutCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6
    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->createClass:Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mConfiguration:Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;->makeCode(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {}, Lcom/s1243808733/aide/util/CreateClassDialog;->isEnableClassHeaderAnnotation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    new-instance v4, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;

    invoke-direct {v4}, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;-><init>()V

    .line 262
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "class_header_annotation_author_name"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->author:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->describe:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "class_header_annotation_date_format"

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    const-string v0, "yyyy/MM/dd HH:mm"

    .line 269
    :cond_7
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->date:Ljava/lang/String;

    .line 271
    invoke-virtual {v4}, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 273
    const-string v1, "public "

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "public "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAbVar:Lcom/aide/common/ab;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 287
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 289
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 293
    :cond_8
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;

    .line 360
    iget-boolean v1, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->autoAdd:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000018(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 365
    :goto_0
    iget-boolean v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->addLayout:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000019(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    :goto_1
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000018(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->access$L1000019(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public showDialog()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v4, 0x18

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 79
    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog;->initDialogView()V

    .line 81
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    int-to-float v2, v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    int-to-float v3, v6

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->setPadding(IIII)V

    .line 83
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v5, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 85
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u6dfb\u52a0\u65b0\u7c7b"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u521b\u5efa"

    :goto_1
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    .line 91
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 95
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    new-instance v1, Lcom/s1243808733/aide/util/CreateClassDialog$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$100000000;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    new-instance v1, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$100000001;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    invoke-static {}, Lcom/s1243808733/aide/util/CreateClassDialog;->isEnableClassHeaderAnnotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialogView:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iget-object v0, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarLightMode(Landroid/view/Window;Z)V

    .line 169
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 85
    :cond_1
    const-string v0, "Add New Class"

    goto :goto_0

    :cond_2
    const-string v0, "Create"

    goto :goto_1
.end method
