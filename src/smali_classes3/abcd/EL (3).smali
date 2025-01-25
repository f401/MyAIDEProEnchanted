.class public abstract Labcd/EL;
.super Labcd/yL;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/yL;-><init>()V

    return-void
.end method

.method public static j6([B)Labcd/EL;
    .registers 2

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p0}, Labcd/vL;-><init>([B)V

    :try_start_5
    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Labcd/qL;

    if-eqz v1, :cond_15

    check-cast p1, Labcd/qL;

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/EL;->j6(Labcd/EL;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v0

    :cond_15
    const/4 p1, 0x0

    return p1
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
