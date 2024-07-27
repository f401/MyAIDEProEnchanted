.class public Lcom/s1243808733/aide/util/ConverProject;
.super Ljava/lang/Object;
.source "ConverProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;,
        Lcom/s1243808733/aide/util/ConverProject$Listener;
    }
.end annotation


# instance fields
.field private project:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject;->project:Ljava/io/File;

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    if-nez p2, :cond_0

    .line 24
    const-string v0, "project == null"

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\u8f6c\u6362\u4e3aAppCompat\u5de5\u7a0b"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u8f6c\u6362\u4e3aAndroidX\u5de5\u7a0b"

    aput-object v1, v0, v3

    .line 30
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Convert to appcompat project"

    aput-object v1, v0, v2

    const-string v1, "Convert to AndroidX project"

    aput-object v1, v0, v3

    .line 33
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/util/ConverProject$100000001;

    invoke-direct {v2, p2, p0}, Lcom/s1243808733/aide/util/ConverProject$100000001;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public converToAndroidX(Lcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/util/ConverProject$Listener;",
            ")V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject;->project:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;-><init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public converToAppCompat(Lcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/util/ConverProject$Listener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject;->project:Ljava/io/File;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;-><init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
