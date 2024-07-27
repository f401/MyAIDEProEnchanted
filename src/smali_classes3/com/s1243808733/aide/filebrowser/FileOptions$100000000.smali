.class Lcom/s1243808733/aide/filebrowser/FileOptions$100000000;
.super Ljava/lang/Object;
.source "FileOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000000;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000000;->val$file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000000;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000000;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
