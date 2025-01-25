.class public Lcom/github/megatronking/svg/generator/utils/Dimen;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_VALUE:F = 0.0f

.field private static final UNIT1:Ljava/lang/String; = "dp"

.field private static final UNIT2:Ljava/lang/String; = "dip"

.field private static final UNIT3:Ljava/lang/String; = "px"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)F
    .registers 5

    const/high16 v2, -0x40800000  # -1.0f

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0, v2}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_54

    const-string v1, "dp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "dp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_6

    :cond_26
    const-string v1, "dip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "dip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_6

    :cond_3d
    const-string v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_6

    :cond_54
    move v0, v1

    goto :goto_6
.end method

.method public static isDip(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    const-string v0, "dp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "dip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isPx(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
