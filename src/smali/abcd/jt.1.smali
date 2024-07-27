.class Labcd/jt;
.super Labcd/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/kt;->DW(Labcd/mt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/bs;

.field final FH:Labcd/kt;

.field final j6:Labcd/bs;


# direct methods
.method constructor <init>(Labcd/kt;Labcd/bs;Labcd/bs;)V
    .registers 4

    iput-object p1, p0, Labcd/jt;->FH:Labcd/kt;

    iput-object p2, p0, Labcd/jt;->j6:Labcd/bs;

    iput-object p3, p0, Labcd/jt;->DW:Labcd/bs;

    invoke-direct {p0}, Labcd/qt;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/jt;->FH:Labcd/kt;

    iget-object v0, v0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v0}, Labcd/lt;->j6(Labcd/lt;)Labcd/yt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/jt;->j6:Labcd/bs;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Labcd/jt;->DW:Labcd/bs;

    :cond_0
    return-object p1
.end method
