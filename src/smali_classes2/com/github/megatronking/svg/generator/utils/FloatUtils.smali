.class public Lcom/github/megatronking/svg/generator/utils/FloatUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format2String(F)Ljava/lang/String;
    .registers 3

    float-to-long v0, p0

    long-to-float v0, v0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    float-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
