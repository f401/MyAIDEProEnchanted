.class public Lcom/s1243808733/aide/filebrowser/FileOptions;
.super Ljava/lang/Object;
.source "FileOptions.java"


# static fields
.field private static pd:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$sfgetpd()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputpd(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMsg(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)Ljava/lang/CharSequence;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    .line 188
    const v1, 0x1010212

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 189
    const v2, 0x1010036

    invoke-static {p0, v2}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 195
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 p1, 0x43a00000  # 320.0f

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result p1

    const/high16 v3, 0x43340000  # 180.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 196
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendLine()Lcom/blankj/utilcode/util/SpanUtils;

    .line 202
    :cond_37
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->get()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_58

    .line 204
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendLine()Lcom/blankj/utilcode/util/SpanUtils;

    .line 206
    :cond_58
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 209
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 210
    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCnFast()Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p1, "："

    goto :goto_71

    :cond_6f
    const-string p1, ": "

    :goto_71
    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 212
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x21

    invoke-virtual {v4, p1, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 213
    invoke-virtual {v0, v4}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 217
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 218
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 219
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    goto :goto_3f

    .line 226
    :cond_9e
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/SpanUtils;->setHorizontalAlign(Landroid/text/Layout$Alignment;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 227
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 3

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinSdkVersion(Ljava/lang/String;)I
    .registers 8

    .line 232
    const/4 v0, 0x1

    :try_start_1
    const-class v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAssetPath"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 234
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v1, p0, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 235
    :cond_2e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_64

    .line 236
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uses-sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    .line 237
    :goto_48
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 238
    invoke-interface {p0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "minSdkVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 239
    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_63

    return p0

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :catchall_63
    move-exception p0

    :cond_64
    return v0
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    if-nez p1, :cond_8

    .line 257
    const-string p0, "file is null"

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    .line 259
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 260
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "文件未找到：%s"

    goto :goto_19

    :cond_17
    const-string p0, "File not found:%s"

    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    .line 262
    :cond_2b
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_37

    .line 263
    const-string p0, "It\'s not a file."

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    .line 267
    :cond_37
    invoke-static {p1}, Lcom/blankj/utilcode/util/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    .line 268
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static openImage(Landroid/content/Context;Ljava/io/File;)V
    .registers 5

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1b

    .line 48
    invoke-static {p1}, Lcom/s1243808733/aide/application/FileProvider;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1f

    .line 51
    :cond_1b
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 53
    :goto_1f
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :try_start_24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    .line 57
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method public static rootInstall(Ljava/lang/String;)Z
    .registers 8

    .line 276
    const-string v0, "\n"

    .line 284
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "pm_install.apk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {p0, v3}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "pm install -r "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 292
    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 294
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 298
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 300
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 302
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    :goto_5a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 311
    :cond_73
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 317
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 319
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    if-nez v0, :cond_98

    .line 321
    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_89} :catch_8d

    const/4 v0, -0x1

    if-eq p0, v0, :cond_98

    return v2

    :catch_8d
    move-exception p0

    .line 327
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_98
    return v1
.end method

.method public static showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;
    .registers 19

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_22

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    goto :goto_23

    :cond_22
    :goto_22
    move-object v5, v0

    :goto_23
    if-nez v5, :cond_57

    .line 68
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "APK不存在或损坏"

    goto :goto_35

    :cond_33
    const-string v1, "APK does not exist or is corrupted"

    :goto_35
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v2, :cond_3d

    move-object v2, v0

    goto :goto_41

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 70
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-object v0

    .line 75
    :cond_57
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    const/4 v7, 0x1

    :try_start_5a
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 80
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_6e

    if-eqz v0, :cond_6c

    .line 82
    :try_start_66
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_6a

    const/4 v0, 0x1

    goto :goto_7d

    .line 182
    :catchall_6a
    move-exception v0

    goto :goto_70

    .line 82
    :cond_6c
    move-object v8, v5

    goto :goto_7c

    :catchall_6e
    move-exception v0

    move-object v8, v5

    .line 86
    :goto_70
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_7c
    const/4 v0, 0x0

    .line 91
    :goto_7d
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v9

    .line 92
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v9, :cond_8b

    .line 94
    const-string v11, "包名"

    goto :goto_8d

    :cond_8b
    const-string v11, "packageName"

    :goto_8d
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_97

    .line 95
    const-string v11, "版本号"

    goto :goto_99

    :cond_97
    const-string v11, "version"

    :goto_99
    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-static {v8}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "%s (%d)"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v15

    if-eqz v9, :cond_c0

    .line 99
    const-string v11, "应用大小"

    goto :goto_c2

    :cond_c0
    const-string v11, "apkSize"

    :goto_c2
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v7

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_dc

    .line 100
    const-string v4, "最小支持SDK"

    goto :goto_de

    :cond_dc
    const-string v4, "minSdkVersion"

    :goto_de
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v7, v11, :cond_e9

    invoke-static {v6}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    goto :goto_ef

    :cond_e9
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7}, Lcom/s1243808733/aide/filebrowser/FileOptions;->getMinSdkVersion(Ljava/lang/String;)I

    move-result v7

    :goto_ef
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_fb

    .line 101
    const-string v4, "目标SDK版本"

    goto :goto_fd

    :cond_fb
    const-string v4, "targetSdkVersion"

    :goto_fd
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_10b

    .line 109
    const-string v4, "修改时间"

    goto :goto_10d

    :cond_10b
    const-string v4, "lastModified"

    :goto_10d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/s1243808733/aide/filebrowser/FileOptions;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_11d

    .line 112
    const-string v4, "来源路径"

    goto :goto_11f

    :cond_11d
    const-string v4, "sourcePath"

    :goto_11f
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 119
    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 120
    invoke-static {v1, v6, v10}, Lcom/s1243808733/aide/filebrowser/FileOptions;->buildMsg(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 122
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_14c

    const-string v4, "安装"

    goto :goto_14e

    :cond_14c
    const-string v4, "Install"

    :goto_14e
    new-instance v6, Lcom/s1243808733/aide/filebrowser/FileOptions$3;

    invoke-direct {v6, v1, v2}, Lcom/s1243808733/aide/filebrowser/FileOptions$3;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 121
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v0, :cond_164

    .line 130
    const-string v4, "打开"

    const-string v6, "Open"

    invoke-static {v4, v6}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_16a

    :cond_164
    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_16a
    new-instance v6, Lcom/s1243808733/aide/filebrowser/FileOptions$2;

    invoke-direct {v6, v0, v8}, Lcom/s1243808733/aide/filebrowser/FileOptions$2;-><init>(ZLandroid/content/pm/PackageInfo;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_17c

    const-string v3, "静默安装"

    goto :goto_17e

    :cond_17c
    const-string v3, "RootInstall"

    :goto_17e
    new-instance v4, Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    invoke-direct {v4, v2, v1, v5}, Lcom/s1243808733/aide/filebrowser/FileOptions$1;-><init>(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 139
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 182
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method public static showLoadDialog(Landroid/content/Context;)V
    .registers 3

    .line 359
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    .line 361
    const-string p0, "正在静默安装中..."

    const-string v1, "Silent installation in progress..."

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    sget-object p0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 363
    sget-object p0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/s1243808733/aide/filebrowser/FileOptions$4;

    invoke-direct {v0}, Lcom/s1243808733/aide/filebrowser/FileOptions$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 379
    sget-object p0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static startAc(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 340
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 344
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method
