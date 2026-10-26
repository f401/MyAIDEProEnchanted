.class public Labcd/ZM;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# instance fields
.field j6:Labcd/EL;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

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

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x79e

    if-lt v0, v2, :cond_0

    const/16 v2, 0x801

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v0, Labcd/jM;

    invoke-direct {v0, v1}, Labcd/jM;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Labcd/ZM;->j6:Labcd/EL;

    return-void

    :cond_1
    new-instance v0, Labcd/zM;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/zM;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .locals 1

    iget-object v0, p0, Labcd/ZM;->j6:Labcd/EL;

    return-object v0
.end method
