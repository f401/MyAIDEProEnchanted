.class public final Labcd/mm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Ks;

.field private final FH:Labcd/Hs;


# direct methods
.method public constructor <init>(Labcd/Ks;Labcd/Hs;)V
    .registers 5

    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/mm;->DW:Labcd/Ks;

    iput-object p2, p0, Labcd/mm;->FH:Labcd/Hs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Hs;
    .registers 2

    iget-object v0, p0, Labcd/mm;->FH:Labcd/Hs;

    return-object v0
.end method

.method public Hw()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public j6()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/mm;->DW:Labcd/Ks;

    return-object v0
.end method
