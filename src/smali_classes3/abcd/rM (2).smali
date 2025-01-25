.class public Labcd/rM;
.super Labcd/CL;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method DW()Labcd/CL;
    .registers 1

    return-object p0
.end method

.method j6()Labcd/CL;
    .registers 1

    return-object p0
.end method

.method public j6(Labcd/qL;)V
    .registers 3

    if-eqz p1, :cond_e

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/EL;->VH()Labcd/EL;

    move-result-object p1

    invoke-virtual {p1, p0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
