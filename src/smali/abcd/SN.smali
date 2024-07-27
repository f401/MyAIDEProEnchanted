.class public Labcd/SN;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/AN;

.field private j6:Labcd/yN;


# direct methods
.method public constructor <init>(Labcd/yN;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/SN;->j6:Labcd/yN;

    invoke-virtual {p1}, Labcd/yN;->VH()Labcd/DN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/DN;->v5()Labcd/AN;

    move-result-object v0

    iput-object v0, p0, Labcd/SN;->DW:Labcd/AN;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-static {p1}, Labcd/SN;->j6([B)Labcd/yN;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/SN;-><init>(Labcd/yN;)V

    return-void
.end method

.method private static j6([B)Labcd/yN;
    .registers 4

    :try_start_0
    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/yN;->j6(Ljava/lang/Object;)Labcd/yN;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/RN;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/RN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/RN;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/RN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Labcd/SN;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Labcd/SN;

    iget-object v0, p0, Labcd/SN;->j6:Labcd/yN;

    iget-object v1, p1, Labcd/SN;->j6:Labcd/yN;

    invoke-virtual {v0, v1}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/SN;->j6:Labcd/yN;

    invoke-virtual {v0}, Labcd/yL;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6()Labcd/yN;
    .registers 2

    iget-object v0, p0, Labcd/SN;->j6:Labcd/yN;

    return-object v0
.end method
