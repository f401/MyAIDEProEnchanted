.class public Lcom/github/megatronking/svg/generator/utils/SCU;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static parseByte(Ljava/lang/String;B)B
    .registers 3

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .registers 4

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-wide p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .registers 3

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    goto :goto_7

    :catch_16
    move-exception v1

    goto :goto_7
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .registers 4

    invoke-static {p0}, Lcom/github/megatronking/svg/generator/utils/SCU;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-wide p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method
