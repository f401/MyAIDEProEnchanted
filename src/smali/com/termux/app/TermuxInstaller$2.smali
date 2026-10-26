.class Lcom/termux/app/TermuxInstaller$2;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$PREFIX_FILE:Ljava/io/File;

.field final val$activity:Landroid/app/Activity;

.field final val$progress:Landroid/app/ProgressDialog;

.field final val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2;->val$PREFIX_FILE:Ljava/io/File;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$2;->val$whenDone:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/usr-staging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {v3}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    .line 91
    :cond_0
    const/16 v2, 0x1fa0

    new-array v2, v2, [B

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->determineZipUrl()Ljava/net/URL;

    move-result-object v5

    .line 95
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 97
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 98
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SYMLINKS.txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 102
    const-string v8, "\u2190"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 103
    array-length v9, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 105
    aget-object v7, v8, v11

    .line 106
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v1

    .line 95
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v1

    .line 147
    :try_start_5
    const-string v2, "termux"

    const-string v3, "Bootstrap error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/TermuxInstaller$2$2;

    invoke-direct {v3, p0, v1}, Lcom/termux/app/TermuxInstaller$2$2;-><init>(Lcom/termux/app/TermuxInstaller$2;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 172
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    :goto_3
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 104
    :cond_2
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed symlink line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_3
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 111
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    :goto_4
    :try_start_7
    invoke-virtual {v6, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 119
    const/4 v10, 0x0

    invoke-virtual {v5, v2, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 123
    :catchall_1
    move-exception v1

    .line 116
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_5
    :try_start_9
    throw v1

    .line 120
    :cond_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 121
    const-string v5, "bin/"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "libexec"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "lib/apt/methods"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1c0

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 116
    :catchall_2
    move-exception v2

    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 128
    :cond_7
    :try_start_a
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 130
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 132
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0

    .line 133
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 95
    :catchall_3
    move-exception v1

    .line 172
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v3, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    throw v1

    .line 136
    :cond_8
    :try_start_b
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2;->val$PREFIX_FILE:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/TermuxInstaller$2$1;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$2$1;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 172
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    goto/16 :goto_3

    .line 137
    :cond_9
    :try_start_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to rename staging folder"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No SYMLINKS.txt encountered"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :catchall_4
    move-exception v2

    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2
.end method
