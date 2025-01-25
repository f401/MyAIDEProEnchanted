.class public final Lcom/termux/styling/TermuxStyleActivity;
.super Lcom/termux/styling/BaseTermuxStyleActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/styling/TermuxStyleActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a(Lcom/termux/styling/TermuxStyleActivity$a;Z)V
    .registers 14

    const-string v0, "com.termux.app.reload_style"

    if-eqz p2, :cond_7

    const-string v1, "colors.properties"

    goto :goto_9

    :cond_7
    const-string v1, "font.ttf"

    :goto_9
    const-string v2, "colors"

    if-eqz p2, :cond_f

    move-object v3, v2

    goto :goto_11

    :cond_f
    const-string v3, "fonts"

    :goto_11
    const/4 v4, 0x1

    :try_start_12
    const-string v5, "com.aide.ui"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    const-string v8, "context"

    invoke-static {v5, v8}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v8, "home"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v8, ".termux"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_55

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_55

    :cond_3d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create termux dir="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    :goto_55
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/File;->setWritable(Z)Z

    const-string v7, "destinationFile"

    invoke-static {v5, v7}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/io/File;->setWritable(Z)Z

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/io/File;->setExecutable(Z)Z

    const/4 v7, 0x0

    if-eqz p1, :cond_f0

    invoke-virtual {p1}, Lcom/termux/styling/TermuxStyleActivity$a;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Default"

    invoke-static {v8, v9}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    if-eqz v8, :cond_a4

    if-eqz p2, :cond_d5

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "StandardCharsets.UTF_8"

    invoke-static {p1, v3}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "# Using default color theme."

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_d5

    :cond_a4
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/styling/TermuxStyleActivity$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_c4} :catch_f4

    :try_start_c4
    const-string v3, "it"

    invoke-static {p1, v3}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "out"

    invoke-static {v5, v3}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, v5, v3, v6, v7}, Lcom/termux/yinli_a/j/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_e9

    :try_start_d2
    invoke-static {p1, v7}, Lcom/termux/yinli_a/j/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    invoke-virtual {v9, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_dd} :catch_f4

    if-eqz p2, :cond_e0

    goto :goto_e2

    :cond_e0
    const-string v2, "font"

    :goto_e2
    :try_start_e2
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e8} :catch_f4

    goto :goto_117

    :catchall_e9
    move-exception p2

    :try_start_ea
    throw p2
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception v0

    :try_start_ec
    invoke-static {p1, p2}, Lcom/termux/yinli_a/j/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_f0
    invoke-static {}, Lcom/termux/yinli_a/k/b/c;->a()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f3} :catch_f4

    throw v7

    :catch_f4
    move-exception p1

    const-string p2, "Failed to write "

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "termux"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_117
    return-void
.end method

.method public static final synthetic a(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/termux/styling/TermuxStyleActivity;->a(Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    return-void
.end method

.method private final b(Lcom/termux/styling/TermuxStyleActivity$a;Z)V
    .registers 10

    if-eqz p2, :cond_5

    const-string p2, "colors"

    goto :goto_7

    :cond_5
    const-string p2, "fonts"

    :goto_7
    :try_start_7
    invoke-virtual {p1}, Lcom/termux/styling/TermuxStyleActivity$a;->b()Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/termux/yinli_a/n/e;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    if-eqz v6, :cond_26

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v0, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v6, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2e

    :cond_26
    new-instance p1, Lcom/termux/yinli_a/f;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5b} :catch_b9

    :try_start_5b
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/termux/yinli_a/n/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/termux/styling/TermuxStyleActivity$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_aa

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-object p1, Lcom/termux/yinli_a/g;->a:Lcom/termux/yinli_a/g;
    :try_end_a6
    .catchall {:try_start_5b .. :try_end_a6} :catchall_b2

    :try_start_a6
    invoke-static {p2, v1}, Lcom/termux/yinli_a/j/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b9

    goto :goto_ba

    :cond_aa
    :try_start_aa
    new-instance p1, Lcom/termux/yinli_a/f;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception p1

    :try_start_b3
    throw p1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    :try_start_b5
    invoke-static {p2, p1}, Lcom/termux/yinli_a/j/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b9} :catch_b9

    :catch_b9
    move-exception p1

    :goto_ba
    return-void
.end method

.method public static final synthetic b(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/termux/styling/TermuxStyleActivity;->b(Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x64fd0000

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    const/high16 v0, -0x64fe0000

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, -0x64fdffff

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-direct {v4, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v6, Lcom/termux/styling/TermuxStyleActivity$b;

    invoke-direct {v6, v1, v4}, Lcom/termux/styling/TermuxStyleActivity$b;-><init>(Lcom/termux/styling/TermuxStyleActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/termux/styling/TermuxStyleActivity$c;

    invoke-direct {v5, v1, v0}, Lcom/termux/styling/TermuxStyleActivity$c;-><init>(Lcom/termux/styling/TermuxStyleActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4c
    if-ge v7, v2, :cond_c8

    new-array v8, v2, [Ljava/lang/String;

    const-string v9, "colors"

    aput-object v9, v8, v6

    const-string v10, "fonts"

    const/4 v11, 0x1

    aput-object v10, v8, v11

    aget-object v8, v8, v7

    invoke-static {v8, v9}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    const-string v10, ".properties"

    goto :goto_66

    :cond_64
    const-string v10, ".ttf"

    :goto_66
    if-eqz v9, :cond_6a

    move-object v9, v3

    goto :goto_6b

    :cond_6a
    move-object v9, v5

    :goto_6b
    new-instance v11, Lcom/termux/styling/TermuxStyleActivity$a;

    const-string v12, "Default"

    invoke-direct {v11, v12}, Lcom/termux/styling/TermuxStyleActivity$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    if-eqz v8, :cond_bd

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v8
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_86} :catch_c1

    const/4 v14, 0x0

    :goto_87
    const-string v15, "it"

    if-ge v14, v13, :cond_9e

    aget-object v2, v8, v14

    :try_start_8d
    invoke-static {v2, v15}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x2

    invoke-static {v2, v10, v6, v15, v11}, Lcom/termux/yinli_a/n/e;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9a

    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9a
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x2

    goto :goto_87

    :cond_9e
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ba

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lcom/termux/styling/TermuxStyleActivity$a;

    invoke-static {v10, v15}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v10}, Lcom/termux/styling/TermuxStyleActivity$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_bd
    invoke-static {}, Lcom/termux/yinli_a/k/b/c;->a()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c0} :catch_c1

    throw v11

    :catch_c1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_c8
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
