.class public abstract Labcd/tp;
.super Labcd/up;


# instance fields
.field private final DW:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;)V
    .registers 4

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/tp;->DW:Labcd/Ks;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aM()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/tp;->DW:Labcd/Ks;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    iget-object v1, p0, Labcd/tp;->DW:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    return-void
.end method
