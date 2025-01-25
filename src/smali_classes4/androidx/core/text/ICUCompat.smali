.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3b

    :try_start_7
    const-string v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v1, "getScript"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const-string v1, "addLikelySubtags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    sput-object v5, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    sput-object v5, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2f

    :try_start_41
    const-string v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addLikelySubtags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_57} :catch_58

    goto :goto_2f

    :catch_58
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    sget-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    sget-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v2, "ICUCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    move-object v0, v1

    goto :goto_17

    :catch_20
    move-exception v0

    const-string v2, "ICUCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    sget-object v0, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_14} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_14} :catch_15

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v2, "ICUCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    move-object v0, v1

    goto :goto_14

    :catch_1d
    move-exception v0

    const-string v2, "ICUCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_14

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_40

    :try_start_1a
    sget-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_2c} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2c} :catch_2e

    move-result-object v0

    goto :goto_13

    :catch_2e
    move-exception v0

    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :catch_39
    move-exception v0

    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :cond_40
    invoke-static {p0}, Landroidx/core/text/ICUCompat;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, Landroidx/core/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
