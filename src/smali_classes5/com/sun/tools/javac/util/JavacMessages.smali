.class public Lcom/sun/tools/javac/util/JavacMessages;
.super Ljava/lang/Object;
.source "JavacMessages.java"

# interfaces
.implements Lcom/sun/tools/javac/api/Messages;


# static fields
.field private static defaultBundle:Ljava/util/ResourceBundle; = null

.field private static final defaultBundleName:Ljava/lang/String; = "com.sun.tools.javac.resources.compiler"

.field private static defaultMessages:Lcom/sun/tools/javac/util/JavacMessages;

.field public static final messagesKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/util/JavacMessages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/util/ResourceBundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private bundleNames:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentBundles:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/JavacMessages;->messagesKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 102
    const-string v0, "com.sun.tools.javac.resources.compiler"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 80
    const-string v1, "com.sun.tools.javac.resources.compiler"

    const-class v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->messagesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleNames:Lcom/sun/tools/javac/util/List;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    .line 97
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/JavacMessages;->add(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/util/JavacMessages;->setCurrentLocale(Ljava/util/Locale;)V

    .line 99
    return-void
.end method

.method public static getDefaultBundle()Ljava/util/ResourceBundle;
    .registers 3

    .line 174
    :try_start_0
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_c

    .line 175
    const-string v0, "com.sun.tools.javac.resources.compiler"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;

    .line 176
    :cond_c
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 178
    :catch_f
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Fatal: Resource for compiler is missing"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs getDefaultLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 161
    invoke-static {}, Lcom/sun/tools/javac/util/JavacMessages;->getDefaultBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Lcom/sun/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultMessages()Lcom/sun/tools/javac/util/JavacMessages;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultMessages:Lcom/sun/tools/javac/util/JavacMessages;

    if-nez v0, :cond_d

    .line 168
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "com.sun.tools.javac.resources.compiler"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultMessages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 169
    :cond_d
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->defaultMessages:Lcom/sun/tools/javac/util/JavacMessages;

    return-object v0
.end method

.method private static varargs getLocalizedString(Lcom/sun/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/util/ResourceBundle;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    .line 188
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/util/ResourceBundle;

    .line 190
    :try_start_d
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_10} :catch_15

    move-result-object v0

    .line 187
    :goto_11
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 192
    :catch_15
    move-exception v0

    move-object v0, v1

    goto :goto_11

    .line 196
    :cond_18
    if-nez v1, :cond_30

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compiler message file broken: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " arguments={0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_30
    invoke-static {v1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;
    .registers 2

    .line 52
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->messagesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JavacMessages;

    .line 53
    if-nez v0, :cond_f

    .line 54
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 55
    :cond_f
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleNames:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleNames:Lcom/sun/tools/javac/util/List;

    .line 107
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 108
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentBundles:Lcom/sun/tools/javac/util/List;

    .line 110
    return-void
.end method

.method public getBundles(Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    if-ne p1, v0, :cond_9

    iget-object v1, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentBundles:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_9

    .line 129
    :cond_8
    :goto_8
    return-object v1

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 116
    if-nez v0, :cond_37

    const/4 v1, 0x0

    .line 117
    :goto_14
    if-nez v1, :cond_8

    .line 118
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleNames:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :try_start_2d
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_34
    .catch Ljava/util/MissingResourceException; {:try_start_2d .. :try_end_34} :catch_3f

    move-result-object v0

    move-object v1, v0

    .line 125
    goto :goto_21

    .line 116
    :cond_37
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_14

    .line 123
    :catch_3f
    move-exception v0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find javac resource bundle for locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_57
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 139
    if-nez p1, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    .line 141
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getBundles(Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Lcom/sun/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    .line 70
    if-nez p1, :cond_6

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 73
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getBundles(Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentBundles:Lcom/sun/tools/javac/util/List;

    .line 74
    iput-object p1, p0, Lcom/sun/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    .line 75
    return-void
.end method
