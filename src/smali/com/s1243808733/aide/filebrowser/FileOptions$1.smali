.class Lcom/s1243808733/aide/filebrowser/FileOptions$1;
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
.field final val$context:Landroid/content/Context;

.field final val$file:Ljava/io/File;

.field final val$finalpkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 147
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;

    invoke-direct {p1, p0}, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileOptions$1;)V

    .line 176
    invoke-virtual {p1}, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->start()V

    return-void
.end method
