.class Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;
.super Ljava/lang/Object;
.source "FileOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final val$file:Ljava/io/File;

.field private final val$finalpkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 147
    new-instance v0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;-><init>(Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->start()V

    return-void
.end method
