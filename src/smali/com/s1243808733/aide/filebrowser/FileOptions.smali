.class public Lcom/s1243808733/aide/filebrowser/FileOptions;
.super Ljava/lang/Object;
.source "FileOptions.java"


# static fields
.field private static pd:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$sfgetpd()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputpd(Landroid/app/ProgressDialog;)V
    .locals 0

    sput-object p0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMsg(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)Ljava/lang/CharSequence;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v2

    .line 188
    const v0, 0x1010212

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 189
    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/high16 v5, 0x43340000    # 180.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v0, v1, v5}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 196
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/SpanUtils;->appendLine()Lcom/blankj/utilcode/util/SpanUtils;

    .line 202
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/SpanUtils;->get()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/SpanUtils;->appendLine()Lcom/blankj/utilcode/util/SpanUtils;

    .line 206
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 209
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 210
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCnFast()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\uff1a"

    :goto_1
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 212
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 213
    invoke-virtual {v2, v6}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 217
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 218
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 219
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v1, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    invoke-virtual {v2, v0}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, ": "

    goto :goto_1

    .line 226
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setHorizontalAlign(Landroid/text/Layout$Alignment;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 227
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinSdkVersion(Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 235
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 236
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "uses-sdk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 237
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 238
    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "minSdkVersion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    const/4 v3, -0x1

    invoke-interface {v1, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    .line 257
    const-string v0, "file is null"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6587\u4ef6\u672a\u627e\u5230\uff1a%s"

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const-string v0, "File not found:%s"

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    const-string v0, "It\'s not a file."

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {p1}, Lcom/blankj/utilcode/util/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static openImage(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 48
    invoke-static {p1}, Lcom/s1243808733/aide/application/FileProvider;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    :goto_0
    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_1
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 57
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static rootInstall(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "pm_install.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {p0, v2}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm install -r "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 298
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 300
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 302
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    .line 327
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    :goto_1
    return v0

    .line 311
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 319
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    if-nez v4, :cond_0

    .line 321
    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_1
.end method

.method public static showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;
    .locals 14

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "APK\u4e0d\u5b58\u5728\u6216\u635f\u574f"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 70
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 182
    :goto_3
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "APK does not exist or is corrupted"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 75
    :cond_4
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    :try_start_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 80
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 82
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    move-object v3, v0

    .line 91
    :goto_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7

    .line 92
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v7, :cond_6

    .line 94
    const-string v0, "\u5305\u540d"

    :goto_5
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 95
    const-string v0, "\u7248\u672c\u53f7"

    :goto_6
    const-string v5, "%s (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v10

    if-eqz v7, :cond_8

    .line 99
    const-string v0, "\u5e94\u7528\u5927\u5c0f"

    :goto_7
    const-string v5, "%s (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 100
    const-string v0, "\u6700\u5c0f\u652f\u6301SDK"

    :goto_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v5, v9, :cond_a

    invoke-static {v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ApplicationInfo;)I

    move-result v5

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_b

    .line 101
    const-string v0, "\u76ee\u6807SDK\u7248\u672c"

    :goto_a
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_c

    .line 109
    const-string v0, "\u4fee\u6539\u65f6\u95f4"

    :goto_b
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/s1243808733/aide/filebrowser/FileOptions;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_d

    .line 112
    const-string v0, "\u6765\u6e90\u8def\u5f84"

    :goto_c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-static {p0, v2, v8}, Lcom/s1243808733/aide/filebrowser/FileOptions;->buildMsg(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u5b89\u88c5"

    :goto_d
    new-instance v5, Lcom/s1243808733/aide/filebrowser/FileOptions$3;

    invoke-direct {v5, p0, p1}, Lcom/s1243808733/aide/filebrowser/FileOptions$3;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 121
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v4, :cond_f

    .line 130
    const-string v0, "\u6253\u5f00"

    const-string v5, "Open"

    invoke-static {v0, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_e
    new-instance v5, Lcom/s1243808733/aide/filebrowser/FileOptions$2;

    invoke-direct {v5, v4, v3}, Lcom/s1243808733/aide/filebrowser/FileOptions$2;-><init>(ZLandroid/content/pm/PackageInfo;)V

    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 140
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u9759\u9ed8\u5b89\u88c5"

    :goto_f
    new-instance v3, Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    invoke-direct {v3, p1, p0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions$1;-><init>(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 139
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 182
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    .line 87
    :goto_10
    const/4 v4, 0x0

    move-object v3, v0

    goto/16 :goto_4

    .line 82
    :catchall_0
    move-exception v0

    move-object v0, v1

    .line 86
    :goto_11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_10

    .line 94
    :cond_6
    const-string v0, "packageName"

    goto/16 :goto_5

    .line 95
    :cond_7
    const-string v0, "version"

    goto/16 :goto_6

    .line 99
    :cond_8
    const-string v0, "apkSize"

    goto/16 :goto_7

    .line 100
    :cond_9
    const-string v0, "minSdkVersion"

    goto/16 :goto_8

    :cond_a
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v5}, Lcom/s1243808733/aide/filebrowser/FileOptions;->getMinSdkVersion(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_9

    .line 101
    :cond_b
    const-string v0, "targetSdkVersion"

    goto/16 :goto_a

    .line 109
    :cond_c
    const-string v0, "lastModified"

    goto/16 :goto_b

    .line 112
    :cond_d
    const-string v0, "sourcePath"

    goto/16 :goto_c

    .line 122
    :cond_e
    const-string v0, "Install"

    goto :goto_d

    .line 130
    :cond_f
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 140
    :cond_10
    const-string v0, "RootInstall"

    goto :goto_f

    .line 182
    :catchall_1
    move-exception v3

    goto :goto_11
.end method

.method public static showLoadDialog(Landroid/content/Context;)V
    .locals 3

    .line 359
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    .line 361
    const-string v0, "\u6b63\u5728\u9759\u9ed8\u5b89\u88c5\u4e2d..."

    const-string v2, "Silent installation in progress..."

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 363
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileOptions$4;

    invoke-direct {v1}, Lcom/s1243808733/aide/filebrowser/FileOptions$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 379
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileOptions;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static startAc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 340
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
