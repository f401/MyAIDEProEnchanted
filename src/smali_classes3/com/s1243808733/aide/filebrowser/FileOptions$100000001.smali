.class Lcom/s1243808733/aide/filebrowser/FileOptions$100000001;
.super Ljava/lang/Object;
.source "FileOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$_pkgInfo:Landroid/content/pm/PackageInfo;

.field private final val$finalInstalled:Z


# direct methods
.method constructor <init>(ZLandroid/content/pm/PackageInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000001;->val$finalInstalled:Z

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000001;->val$_pkgInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000001;->val$finalInstalled:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000001;->val$_pkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->launchApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
