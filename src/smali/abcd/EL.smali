.class public abstract Labcd/EL;
.super Labcd/yL;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/yL;-><init>()V

    return-void
.end method

.method public static j6([B)Labcd/EL;
    .registers 3

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p0}, Labcd/vL;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 1

    return-object p0
.end method

.method VH()Labcd/EL;
    .registers 1

    return-object p0
.end method

.method abstract Zo()Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Labcd/qL;

    if-eqz v1, :cond_2

    check-cast p1, Labcd/qL;

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/EL;->j6(Labcd/EL;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method gn()Labcd/EL;
    .registers 1

    return-object p0
.end method

.method abstract j6(Labcd/CL;)V
.end method

.method abstract j6(Labcd/EL;)Z
.end method

.method abstract v5()I
.end method
