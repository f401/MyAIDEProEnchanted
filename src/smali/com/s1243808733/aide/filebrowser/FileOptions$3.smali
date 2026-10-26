.class Lcom/s1243808733/aide/filebrowser/FileOptions$3;
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


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$3;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
