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
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 8

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/s1243808733/util/ChooseDir;->chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    if-nez p2, :cond_b

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 44
    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "选择"

    goto :goto_2f

    :cond_2d
    const-string v1, "choose"

    :goto_2f
    new-instance v2, Lcom/s1243808733/util/ChooseDir$1;

    invoke-direct {v2, p0, p3}, Lcom/s1243808733/util/ChooseDir$1;-><init>(Lcom/s1243808733/util/ChooseDir;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 55
    const/high16 v0, 0x1040000

    invoke-virtual {p3, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 56
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "新建文件夹"

    goto :goto_49

    :cond_47
    const-string v0, "New folder"

    :goto_49
    invoke-virtual {p3, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 57
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    .line 59
    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    .line 61
    const/4 v0, -0x3

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/ChooseDir$2;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/util/ChooseDir$2;-><init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/Activity;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Lcom/s1243808733/util/ChooseDir$3;

    invoke-direct {v0, p0, p3}, Lcom/s1243808733/util/ChooseDir$3;-><init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 118
    new-instance v0, Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-direct {v0, p1, p3}, Lcom/s1243808733/util/ChooseDir$FileAdapter;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;)V

    iput-object v0, p0, Lcom/s1243808733/util/ChooseDir;->adapter:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    .line 119
    invoke-virtual {v0, p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 4

    .line 35
    new-instance v0, Lcom/s1243808733/util/ChooseDir;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/util/ChooseDir;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    return-void
.end method
