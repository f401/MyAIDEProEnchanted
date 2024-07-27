.class public Lcom/s1243808733/util/ChooseDir;
.super Ljava/lang/Object;
.source "ChooseDir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/ChooseDir$ChooseListener;,
        Lcom/s1243808733/util/ChooseDir$FileAdapter;,
        Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;,
        Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

.field private chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/s1243808733/util/ChooseDir;->chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    .line 40
    if-nez p2, :cond_0

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 44
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u9009\u62e9"

    :goto_0
    new-instance v3, Lcom/s1243808733/util/ChooseDir$100000000;

    invoke-direct {v3, p0, p3}, Lcom/s1243808733/util/ChooseDir$100000000;-><init>(Lcom/s1243808733/util/ChooseDir;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u65b0\u5efa\u6587\u4ef6\u5939"

    :goto_1
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 61
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/util/ChooseDir$100000003;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/util/ChooseDir$100000003;-><init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Lcom/s1243808733/util/ChooseDir$100000004;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/util/ChooseDir$100000004;-><init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 118
    new-instance v1, Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-direct {v1, p1, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;)V

    iput-object v1, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    .line 119
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-virtual {v0, p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    return-void

    .line 44
    :cond_1
    const-string v0, "choose"

    goto :goto_0

    :cond_2
    const-string v0, "New folder"

    goto :goto_1
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/util/ChooseDir;Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/io/File;",
            "Lcom/s1243808733/util/ChooseDir$ChooseListener;",
            ")V"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/s1243808733/util/ChooseDir;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/util/ChooseDir;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    return-void
.end method
