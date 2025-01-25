.class Labcd/wt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yt;->FH(I)Labcd/vt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/yt;


# direct methods
.method constructor <init>(Labcd/yt;)V
    .registers 2

    iput-object p1, p0, Labcd/wt;->j6:Labcd/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Labcd/wt;->j6:Labcd/yt;

    invoke-static {v0}, Labcd/yt;->j6(Labcd/yt;)[Labcd/vt;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    aput-object p1, v0, v1

    :cond_16
    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 4

    iget-object v0, p0, Labcd/wt;->j6:Labcd/yt;

    invoke-static {v0}, Labcd/yt;->j6(Labcd/yt;)[Labcd/vt;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 4

    iget-object v0, p0, Labcd/wt;->j6:Labcd/yt;

    invoke-static {v0}, Labcd/yt;->j6(Labcd/yt;)[Labcd/vt;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method
