.class public Labcd/FN;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# instance fields
.field j6:Labcd/EL;


# direct methods
.method public constructor <init>(Labcd/EL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    instance-of v0, p1, Labcd/zM;

    if-nez v0, :cond_0

    instance-of v0, p1, Labcd/jM;

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Labcd/FN;->j6:Labcd/EL;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    invoke-direct {v0, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x79e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x801

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Labcd/jM;

    invoke-direct {v1, v0}, Labcd/jM;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Labcd/FN;->j6:Labcd/EL;

    :goto_0
    return-void

    :cond_1
    new-instance v1, Labcd/zM;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/zM;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Labcd/FN;->j6:Labcd/EL;

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/FN;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/FN;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/FN;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Labcd/zM;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/FN;

    check-cast p0, Labcd/zM;

    invoke-direct {v0, p0}, Labcd/FN;-><init>(Labcd/EL;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Labcd/jM;

    if-eqz v0, :cond_3

    new-instance v0, Labcd/FN;

    check-cast p0, Labcd/jM;

    invoke-direct {v0, p0}, Labcd/FN;-><init>(Labcd/EL;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in factory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

    if-eqz v1, :cond_0

    check-cast v0, Labcd/zM;

    invoke-virtual {v0}, Labcd/zM;->tp()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Labcd/jM;

    invoke-virtual {v0}, Labcd/jM;->tp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    instance-of v0, v0, Labcd/zM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    check-cast v0, Labcd/zM;

    invoke-virtual {v0}, Labcd/zM;->u7()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/FN;->j6:Labcd/EL;

    check-cast v0, Labcd/jM;

    invoke-virtual {v0}, Labcd/jM;->u7()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
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
