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

    if-nez p2, :cond_c

    .line 24
    const-string p0, "project == null"

    invoke-static {p0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 29
    :cond_c
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "转换为AppCompat工程"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "转换为AndroidX工程"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 30
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-nez v2, :cond_29

    .line 31
    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Convert to appcompat project"

    aput-object v0, v1, v3

    const-string v0, "Convert to AndroidX project"

    aput-object v0, v1, v4

    .line 33
    :cond_29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$1;

    invoke-direct {v0, p2, p0}, Lcom/s1243808733/aide/util/ConverProject$1;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public converToAndroidX(Lcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 5

    .line 94
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject;->project:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;-><init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public converToAppCompat(Lcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 5

    .line 90
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject;->project:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;-><init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
