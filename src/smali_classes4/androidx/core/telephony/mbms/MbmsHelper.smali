.class public final Landroidx/core/telephony/mbms/MbmsHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;
    .registers 8

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_8

    :cond_7
    :goto_7
    return-object v2

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_40
    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_49

    move-object v0, v2

    :goto_47
    move-object v2, v0

    goto :goto_7

    :cond_49
    invoke-virtual {p1, v0}, Landroid/telephony/mbms/ServiceInfo;->getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_47
.end method
