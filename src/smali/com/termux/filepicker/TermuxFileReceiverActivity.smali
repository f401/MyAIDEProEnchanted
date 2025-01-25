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
    .registers 2

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
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    return-void
.end method


# virtual methods
.method handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10

    .line 102
    const-string v0, "_display_name"

    .line 104
    nop

    .line 105
    :try_start_3
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_4a

    if-eqz v1, :cond_34

    .line 106
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 107
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_34

    .line 108
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    goto :goto_35

    :catchall_28
    move-exception p2

    if-eqz v1, :cond_33

    .line 105
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-static {p2, v0}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw p2

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v1, :cond_3a

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3a
    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object p2, v0

    .line 114
    :goto_3e
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_4a

    goto :goto_78

    :catch_4a
    move-exception p2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to handle shared content:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleContentUri(uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "termux"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_78
    return-void
.end method

.method handleUrlAndFinish(Ljava/lang/String;)V
    .registers 6

    .line 198
    sget-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->URL_OPENER_PROGRAM:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_13

    .line 200
    const-string p1, "The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as only argument."

    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_13
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/File;->setExecutable(Z)Z

    .line 209
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.termux.service_execute"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    const-class v0, Lcom/termux/app/TermuxService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "com.termux.execute.arguments"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 6

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.intent.extra.TITLE"

    if-eqz v1, :cond_7e

    if-eqz v2, :cond_7e

    .line 51
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v1, :cond_6e

    .line 55
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 56
    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleUrlAndFinish(Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 58
    :cond_40
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4c

    .line 59
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4c
    if-eqz v2, :cond_5f

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_5f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_d5

    :cond_6e
    if-eqz v2, :cond_78

    .line 64
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_d5

    .line 66
    :cond_78
    const-string v0, "Send action without content - nothing to save."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto :goto_d5

    .line 68
    :cond_7e
    const-string v1, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_d5

    .line 70
    :cond_92
    const-string v1, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    :try_start_a7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_b3} :catch_b4

    goto :goto_d5

    :catch_b4
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

    goto :goto_d5

    .line 81
    :cond_d0
    const-string v0, "Unable to receive any file or URL."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    :goto_d5
    return-void
.end method

.method promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 14

    .line 123
    const-string v0, "file_received_title"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    const-string v0, "file_received_edit_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;

    invoke-direct {v5, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    .line 149
    const-string v0, "file_received_open_folder_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;

    invoke-direct {v7, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v9, Lcom/termux/filepicker/TermuxFileReceiverActivity$5;

    invoke-direct {v9, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$5;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    new-instance v10, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;

    invoke-direct {v10, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    .line 123
    const/high16 v8, 0x1040000

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v10}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 175
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot create directory: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    return-object v2

    .line 181
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_51

    .line 183
    const/16 v0, 0x1000

    :try_start_36
    new-array v0, v0, [B

    .line 185
    :goto_38
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_43

    .line 186
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_47

    goto :goto_38

    .line 188
    :cond_43
    :try_start_43
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_51

    return-object v1

    :catchall_47
    move-exception p1

    .line 182
    :try_start_48
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p2

    :try_start_4d
    invoke-static {p1, p2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_50
    throw p1
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error saving file:\n\n"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 192
    const-string p2, "termux"

    const-string v0, "Error saving file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method showErrorDialogAndQuit(Ljava/lang/String;)V
    .registers 4

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    .line 92
    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
