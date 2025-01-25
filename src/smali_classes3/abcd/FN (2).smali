.class public Labcd/FN;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# instance fields
.field j6:Labcd/EL;


# direct methods
.method public constructor <init>(Labcd/EL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    instance-of v0, p1, Labcd/zM;

    if-nez v0, :cond_14

    instance-of v0, p1, Labcd/jM;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    iput-object p1, p0, Labcd/FN;->j6:Labcd/EL;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 7

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_46

    const/16 v1, 0x801

    if-le v0, v1, :cond_3b

    goto :goto_46

    :cond_3b
    new-instance v0, Labcd/zM;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/zM;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :cond_46
    :goto_46
    new-instance v0, Labcd/jM;

    invoke-direct {v0, p1}, Labcd/jM;-><init>(Ljava/lang/String;)V

    :goto_4b
    iput-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/FN;
    .registers 3

    if-eqz p0, :cond_3b

    instance-of v0, p0, Labcd/FN;

    if-eqz v0, :cond_7

    goto :goto_3b

    :cond_7
    instance-of v0, p0, Labcd/zM;

    if-eqz v0, :cond_13

    new-instance v0, Labcd/FN;

    check-cast p0, Labcd/zM;

    invoke-direct {v0, p0}, Labcd/FN;-><init>(Labcd/EL;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Labcd/jM;

    if-eqz v0, :cond_1f

    new-instance v0, Labcd/FN;

    check-cast p0, Labcd/jM;

    invoke-direct {v0, p0}, Labcd/FN;-><init>(Labcd/EL;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in factory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    check-cast p0, Labcd/FN;

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    instance-of v1, v0, Labcd/zM;

    if-eqz v1, :cond_d

    check-cast v0, Labcd/zM;

    invoke-virtual {v0}, Labcd/zM;->tp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    check-cast v0, Labcd/jM;

    invoke-virtual {v0}, Labcd/jM;->tp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/FN;->Zo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/util/Date;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    instance-of v1, v0, Labcd/zM;

    if-eqz v1, :cond_d

    check-cast v0, Labcd/zM;

    invoke-virtual {v0}, Labcd/zM;->u7()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_d
    check-cast v0, Labcd/jM;

    invoke-virtual {v0}, Labcd/jM;->u7()Ljava/util/Date;

    move-result-object v0
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid date string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
