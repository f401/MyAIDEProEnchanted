.class Lsun/misc/PathPermissions$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/PathPermissions;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/PathPermissions;


# direct methods
.method constructor <init>(Lsun/misc/PathPermissions;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7

    const/4 v1, 0x0

    .line 516
    move v0, v1

    :goto_2
    iget-object v2, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-static {v2}, Lsun/misc/PathPermissions;->access$000(Lsun/misc/PathPermissions;)[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_b6

    .line 517
    iget-object v2, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-static {v2}, Lsun/misc/PathPermissions;->access$000(Lsun/misc/PathPermissions;)[Ljava/io/File;

    move-result-object v2

    aget-object v3, v2, v0

    .line 520
    :try_start_13
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_58

    move-result-object v2

    .line 524
    :goto_17
    if-nez v0, :cond_26

    .line 525
    iget-object v4, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lsun/misc/Launcher;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    iput-object v5, v4, Lsun/misc/PathPermissions;->codeBase:Ljava/net/URL;

    .line 527
    :cond_26
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 528
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 529
    iget-object v3, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-static {v3}, Lsun/misc/PathPermissions;->access$100(Lsun/misc/PathPermissions;)Ljava/security/Permissions;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/FilePermission;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "read"

    invoke-direct {v2, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 516
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 521
    :catch_58
    move-exception v2

    .line 522
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 532
    :cond_5e
    iget-object v3, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-static {v3}, Lsun/misc/PathPermissions;->access$100(Lsun/misc/PathPermissions;)Ljava/security/Permissions;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/FilePermission;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "read"

    invoke-direct {v2, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_55

    .line 537
    :cond_85
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 538
    const/4 v4, -0x1

    if-eq v3, v4, :cond_55

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    iget-object v3, p0, Lsun/misc/PathPermissions$1;->this$0:Lsun/misc/PathPermissions;

    invoke-static {v3}, Lsun/misc/PathPermissions;->access$100(Lsun/misc/PathPermissions;)Ljava/security/Permissions;

    move-result-object v3

    new-instance v4, Ljava/io/FilePermission;

    const-string v5, "read"

    invoke-direct {v4, v2, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_55

    .line 547
    :cond_b6
    const/4 v0, 0x0

    return-object v0
.end method
