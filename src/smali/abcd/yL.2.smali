.class public abstract Labcd/yL;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qL;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract DW()Labcd/EL;
.end method

.method public Hw()[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/CL;

    invoke-direct {v1, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Labcd/CL;->j6(Labcd/qL;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Labcd/qL;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Labcd/qL;

    invoke-virtual {p0}, Labcd/yL;->DW()Labcd/EL;

    move-result-object v0

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Labcd/yL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yL;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;)[B
    .registers 4

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/rM;

    invoke-direct {v1, v0}, Labcd/rM;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Labcd/rM;->j6(Labcd/qL;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/DM;

    invoke-direct {v1, v0}, Labcd/DM;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Labcd/DM;->j6(Labcd/qL;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/yL;->Hw()[B

    move-result-object v0

    goto :goto_0
.end method
