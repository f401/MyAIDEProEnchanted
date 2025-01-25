.class Labcd/at;
.super Labcd/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/dt;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/bs;

.field final FH:Labcd/dt;

.field final j6:Labcd/bs;


# direct methods
.method constructor <init>(Labcd/dt;Labcd/bs;Labcd/bs;)V
    .registers 4

    iput-object p1, p0, Labcd/at;->FH:Labcd/dt;

    iput-object p2, p0, Labcd/at;->j6:Labcd/bs;

    iput-object p3, p0, Labcd/at;->DW:Labcd/bs;

    invoke-direct {p0}, Labcd/qt;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/at;->FH:Labcd/dt;

    invoke-static {v0}, Labcd/dt;->j6(Labcd/dt;)Labcd/yt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/at;->j6:Labcd/bs;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_e

    iget-object p1, p0, Labcd/at;->DW:Labcd/bs;

    :cond_e
    return-object p1
.end method
