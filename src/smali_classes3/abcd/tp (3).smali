.class public abstract Labcd/tp;
.super Labcd/up;


# instance fields
.field private final DW:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;)V
    .registers 3

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/tp;->DW:Labcd/Ks;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final aM()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/tp;->DW:Labcd/Ks;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 3

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object p1

    iget-object v0, p0, Labcd/tp;->DW:Labcd/Ks;

    invoke-virtual {p1, v0}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    return-void
.end method
