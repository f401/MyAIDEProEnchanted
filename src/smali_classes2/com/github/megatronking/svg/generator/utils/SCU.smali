.class public Lcom/github/megatronking/svg/generator/utils/SCU;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseByte(Ljava/lang/String;B)B
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 1

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
