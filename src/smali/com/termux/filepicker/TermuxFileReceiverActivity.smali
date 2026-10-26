.class public Lcom/termux/filepicker/TermuxFileReceiverActivity;
.super Landroid/app/Activity;
.source "TermuxFileReceiverActivity.java"


# static fields
.field static final EDITOR_PROGRAM:Ljava/lang/String;

.field static final TERMUX_RECEIVEDIR:Ljava/lang/String;

.field static final URL_OPENER_PROGRAM:Ljava/lang/String;


# instance fields
.field mFinishOnDismissNameDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/home/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/termux-file-editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->EDITOR_PROGRAM:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/termux-url-opener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->URL_OPENER_PROGRAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    return-void
.end method


# virtual methods
.method handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_2

    .line 106
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 108
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 105
    :goto_0
    if-eqz v1, :cond_0

    .line 110
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez v0, :cond_3

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :goto_2
    return-void

    .line 108
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 105
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to handle shared content:\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleContentUri(uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "termux"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 105
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 110
    goto :goto_1
.end method

.method handleUrlAndFinish(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    .line 198
    sget-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->URL_OPENER_PROGRAM:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const-string v0, "The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as only argument."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 209
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.termux.service_execute"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    const-class v0, Lcom/termux/app/TermuxService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    const-string v0, "com.termux.execute.arguments"

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 51
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 55
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleUrlAndFinish(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 64
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    const-string v0, "Send action without content - nothing to save."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_5
    const-string v0, "content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_7
    const-string v0, "Unable to receive any file or URL."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    .line 123
    const-string v0, "file_received_title"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    const-string v0, "file_received_edit_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    .line 149
    const-string v0, "file_received_open_folder_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;

    invoke-direct {v6, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v8, Lcom/termux/filepicker/TermuxFileReceiverActivity$5;

    invoke-direct {v8, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$5;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    new-instance v9, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;

    invoke-direct {v9, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    .line 123
    const/high16 v7, 0x1040000

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    .line 175
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create directory: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-object v0

    .line 181
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 185
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 186
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v1

    .line 182
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error saving file:\n\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 192
    const-string v2, "termux"

    const-string v3, "Error saving file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object v0, v1

    goto :goto_0

    .line 182
    :catchall_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method showErrorDialogAndQuit(Ljava/lang/String;)V
    .locals 3

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;

    invoke-direct {v1, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;

    invoke-direct {v1, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    .line 92
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
