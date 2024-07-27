.class Lcom/termux/app/TermuxInstaller$100000006;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# instance fields
.field private final val$PREFIX_FILE:Ljava/io/File;

.field private final val$activity:Landroid/app/Activity;

.field private final val$progress:Landroid/app/ProgressDialog;

.field private final val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$PREFIX_FILE:Ljava/io/File;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$whenDone:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$progress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/usr-staging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {v4}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    .line 91
    :cond_0
    const/16 v1, 0x1fa0

    new-array v5, v1, [B

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0x32

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->determineZipUrl()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 95
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 97
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No SYMLINKS.txt encountered"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    :catch_0
    move-exception v1

    .line 147
    :try_start_4
    const-string v2, "termux"

    const-string v3, "Bootstrap error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/TermuxInstaller$100000006$100000004;

    iget-object v4, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {v3, p0, v4, v1, v5}, Lcom/termux/app/TermuxInstaller$100000006$100000004;-><init>(Lcom/termux/app/TermuxInstaller$100000006;Landroid/app/Activity;Ljava/lang/Exception;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/TermuxInstaller$100000006$100000005;

    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, v3}, Lcom/termux/app/TermuxInstaller$100000006$100000005;-><init>(Lcom/termux/app/TermuxInstaller$100000006;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 98
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SYMLINKS.txt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 99
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 102
    const-string v9, "\u2190"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 103
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Malformed symlink line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    :try_start_6
    invoke-interface {v7}, Ljava/lang/AutoCloseable;->close()V

    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    :goto_3
    if-nez v3, :cond_e

    move-object v1, v2

    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 148
    :catchall_2
    move-exception v1

    .line 172
    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/TermuxInstaller$100000006$100000005;

    iget-object v4, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {v3, p0, v4}, Lcom/termux/app/TermuxInstaller$100000006$100000005;-><init>(Lcom/termux/app/TermuxInstaller$100000006;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v1

    .line 105
    :cond_5
    aget-object v8, v9, v13

    .line 106
    :try_start_8
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v9, v9, v11

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 111
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 116
    :cond_7
    :try_start_9
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 118
    :goto_5
    :try_start_a
    invoke-virtual {v7, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 121
    :cond_8
    :try_start_b
    const-string v6, "bin/"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "libexec"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "lib/apt/methods"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1c0

    invoke-static {v6, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 119
    :cond_a
    const/4 v11, 0x0

    :try_start_c
    invoke-virtual {v6, v5, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    .line 118
    :catchall_3
    move-exception v1

    if-eqz v6, :cond_b

    :try_start_d
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    :cond_b
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v2

    :goto_6
    if-nez v1, :cond_d

    move-object v1, v2

    :cond_c
    :goto_7
    :try_start_e
    throw v1

    :cond_d
    if-eq v1, v2, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 97
    :cond_e
    if-eq v3, v2, :cond_12

    :try_start_f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v1, v3

    goto/16 :goto_4

    .line 132
    :cond_f
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    .line 136
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$PREFIX_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to rename staging folder"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    goto :goto_8

    .line 140
    :cond_11
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/TermuxInstaller$100000006$100000001;

    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$100000006;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {v2, p0, v3}, Lcom/termux/app/TermuxInstaller$100000006$100000001;-><init>(Lcom/termux/app/TermuxInstaller$100000006;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    .line 97
    :catchall_5
    move-exception v1

    move-object v2, v1

    goto/16 :goto_3

    .line 118
    :catchall_6
    move-exception v2

    move-object v1, v3

    goto :goto_6

    :cond_12
    move-object v1, v3

    goto/16 :goto_4
.end method
