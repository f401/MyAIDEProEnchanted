.class public abstract Labcd/GF;
.super Ljava/lang/Object;


# instance fields
.field private effectiveLocale:Ljava/util/Locale;

.field private resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/util/Locale;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Labcd/GF;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_e} :catch_55

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Labcd/GF;->effectiveLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-lt v3, v2, :cond_1d

    return-void

    :cond_1d
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    :try_start_2b
    iget-object v5, p0, Labcd/GF;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/util/MissingResourceException; {:try_start_2b .. :try_end_38} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_38} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_52

    :catch_39
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_40
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_47
    move-exception v1

    new-instance v2, Labcd/xD;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3, v1}, Labcd/xD;-><init>(Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :catch_55
    move-exception v1

    new-instance v2, Labcd/wD;

    invoke-direct {v2, v0, p1, v1}, Labcd/wD;-><init>(Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/Exception;)V

    goto :goto_5d

    :goto_5c
    throw v2

    :goto_5d
    goto :goto_5c
.end method
