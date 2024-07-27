.class public Labcd/DM;
.super Labcd/CL;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/qL;)V
    .registers 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
