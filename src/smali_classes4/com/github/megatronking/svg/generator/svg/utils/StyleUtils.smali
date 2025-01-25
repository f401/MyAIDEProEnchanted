.class public Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStyleString2Map(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    :cond_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_a

    aget-object v4, v3, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public static fill2Map(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;-><init>()V

    :try_start_e
    new-instance v1, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;

    invoke-direct {v1, p1}, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parse(Ljava/lang/String;Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v0

    goto :goto_8
.end method
