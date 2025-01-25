.class Labcd/Vs;
.super Labcd/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ws;->j6(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/bs;

.field final FH:Labcd/Ws;

.field final j6:Labcd/bs;


# direct methods
.method constructor <init>(Labcd/Ws;Labcd/bs;Labcd/bs;)V
    .registers 4

    iput-object p1, p0, Labcd/Vs;->FH:Labcd/Ws;

    iput-object p2, p0, Labcd/Vs;->j6:Labcd/bs;

    iput-object p3, p0, Labcd/Vs;->DW:Labcd/bs;

    invoke-direct {p0}, Labcd/qt;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/Vs;->FH:Labcd/Ws;

    invoke-static {v0}, Labcd/Ws;->j6(Labcd/Ws;)Labcd/yt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Vs;->j6:Labcd/bs;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Labcd/Vs;->DW:Labcd/bs;

    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/bs;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object p1

    :cond_16
    return-object p1
.end method
