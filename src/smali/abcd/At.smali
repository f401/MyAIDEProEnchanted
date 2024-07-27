.class Labcd/At;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ot$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bt$a;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Bt$a;


# direct methods
.method constructor <init>(Labcd/Bt$a;)V
    .registers 2

    iput-object p1, p0, Labcd/At;->j6:Labcd/Bt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/ot;)V
    .registers 5

    invoke-virtual {p1}, Labcd/ot;->rN()I

    move-result v0

    iget-object v1, p0, Labcd/At;->j6:Labcd/Bt$a;

    iget-object v1, v1, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1, v0}, Labcd/Bt;->DW(Labcd/Bt;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/At;->j6:Labcd/Bt$a;

    invoke-static {v1}, Labcd/Bt$a;->DW(Labcd/Bt$a;)[Labcd/bs;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Labcd/At;->j6:Labcd/Bt$a;

    iget-object v1, v1, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v2

    invoke-static {v1, v2}, Labcd/Bt;->FH(Labcd/Bt;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/At;->j6:Labcd/Bt$a;

    invoke-static {v1}, Labcd/Bt$a;->j6(Labcd/Bt$a;)Labcd/tt;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/ot;->j6(Labcd/bs;Labcd/tt;)V

    goto :goto_0
.end method
