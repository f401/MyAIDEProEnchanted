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
    .registers 5

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
    .registers 12

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usr-staging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 88
    invoke-static {v1}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    .line 91
    :cond_21
    const/16 v2, 0x1fa0

    new-array v2, v2, [B

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->determineZipUrl()Ljava/net/URL;

    move-result-object v4

    .line 95
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_16a
    .catchall {:try_start_0 .. :try_end_39} :catchall_168

    .line 97
    :cond_39
    :goto_39
    :try_start_39
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_10f

    .line 98
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SYMLINKS.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9e

    .line 99
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    :goto_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 102
    const-string v8, "←"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 103
    array-length v9, v8
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_15e

    const/4 v10, 0x2

    if-ne v9, v10, :cond_87

    .line 105
    aget-object v6, v8, v7

    .line 106
    :try_start_68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 104
    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed symlink line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_9e
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 111
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 113
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_b4

    goto :goto_39

    .line 114
    :cond_b4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_cf
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d4
    .catchall {:try_start_68 .. :try_end_d4} :catchall_15e

    .line 118
    :goto_d4
    :try_start_d4
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_df

    .line 119
    invoke-virtual {v4, v2, v7, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_105

    goto :goto_d4

    .line 120
    :cond_df
    :try_start_df
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 121
    const-string v4, "bin/"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fa

    const-string v4, "libexec"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fa

    const-string v4, "lib/apt/methods"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 123
    :cond_fa
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1c0

    invoke-static {v4, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_103
    .catchall {:try_start_df .. :try_end_103} :catchall_15e

    goto/16 :goto_39

    :catchall_105
    move-exception v0

    .line 116
    :try_start_106
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10a

    goto :goto_10e

    :catchall_10a
    move-exception v1

    :try_start_10b
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_10e
    throw v0
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_15e

    .line 128
    :cond_10f
    :try_start_10f
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 130
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 133
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    .line 136
    :cond_134
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2;->val$PREFIX_FILE:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 140
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/TermuxInstaller$2$1;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2$1;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_146} :catch_16a
    .catchall {:try_start_10f .. :try_end_146} :catchall_168

    .line 172
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    goto :goto_183

    .line 137
    :cond_14e
    :try_start_14e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to rename staging folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No SYMLINKS.txt encountered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_15e} :catch_16a
    .catchall {:try_start_14e .. :try_end_15e} :catchall_168

    :catchall_15e
    move-exception v0

    .line 95
    :try_start_15f
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_167

    :catchall_163
    move-exception v1

    :try_start_164
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_167
    throw v0
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_168} :catch_16a
    .catchall {:try_start_164 .. :try_end_168} :catchall_168

    :catchall_168
    move-exception v0

    goto :goto_187

    :catch_16a
    move-exception v0

    .line 147
    :try_start_16b
    const-string v1, "termux"

    const-string v2, "Bootstrap error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/TermuxInstaller$2$2;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxInstaller$2$2;-><init>(Lcom/termux/app/TermuxInstaller$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_17c
    .catchall {:try_start_16b .. :try_end_17c} :catchall_168

    .line 172
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    :goto_183
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_187
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/TermuxInstaller$2$3;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$2$3;-><init>(Lcom/termux/app/TermuxInstaller$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    goto :goto_193

    :goto_192
    throw v0

    :goto_193
    goto :goto_192
.end method
