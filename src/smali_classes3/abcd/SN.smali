.class public Labcd/SN;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/AN;

.field private j6:Labcd/yN;


# direct methods
.method public constructor <init>(Labcd/yN;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/SN;->j6:Labcd/yN;

    invoke-virtual {p1}, Labcd/yN;->VH()Labcd/DN;

    move-result-object p1

    invoke-virtual {p1}, Labcd/DN;->v5()Labcd/AN;

    move-result-object p1

    iput-object p1, p0, Labcd/SN;->DW:Labcd/AN;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-static {p1}, Labcd/SN;->j6([B)Labcd/yN;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/SN;-><init>(Labcd/yN;)V

    return-void
.end method

.method private static j6([B)Labcd/yN;
    .registers 3

    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/yN;->j6(Ljava/lang/Object;)Labcd/yN;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/RN;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Labcd/RN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_22
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/RN;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Labcd/RN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Labcd/SN;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Labcd/SN;

    iget-object v0, p0, Labcd/SN;->j6:Labcd/yN;

    iget-object p1, p1, Labcd/SN;->j6:Labcd/yN;

    invoke-virtual {v0, p1}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
