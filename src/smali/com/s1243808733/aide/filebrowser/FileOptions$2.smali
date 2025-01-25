.class Lcom/s1243808733/aide/filebrowser/FileOptions$2;
.super Ljava/lang/Object;
.source "FileOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$_pkgInfo:Landroid/content/pm/PackageInfo;

.field final val$finalInstalled:Z


# direct methods
.method constructor <init>(ZLandroid/content/pm/PackageInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-boolean p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$2;->val$finalInstalled:Z

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$2;->val$_pkgInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 134
    iget-boolean p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$2;->val$finalInstalled:Z

    if-eqz p1, :cond_b

    .line 135
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$2;->val$_pkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/blankj/utilcode/util/AppUtils;->launchApp(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
