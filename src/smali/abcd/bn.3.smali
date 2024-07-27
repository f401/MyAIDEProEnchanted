.class public Labcd/bn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bn$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/Lm;

.field private final FH:Labcd/Qm;

.field private final Hw:Labcd/bn$a;

.field private final j6:Labcd/Tm;


# direct methods
.method public constructor <init>(Labcd/Tm;Labcd/Mm;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Labcd/bn;->j6:Labcd/Tm;

    invoke-virtual {p2}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v0

    iput-object v0, p0, Labcd/bn;->DW:Labcd/Lm;

    invoke-virtual {p2}, Labcd/Mm;->u7()Labcd/Qm;

    move-result-object v0

    iput-object v0, p0, Labcd/bn;->FH:Labcd/Qm;

    new-instance v0, Labcd/bn$a;

    invoke-direct {v0, p0}, Labcd/bn$a;-><init>(Labcd/bn;)V

    iput-object v0, p0, Labcd/bn;->Hw:Labcd/bn$a;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "machine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic DW(Labcd/bn;)Labcd/Qm;
    .registers 2

    iget-object v0, p0, Labcd/bn;->FH:Labcd/Qm;

    return-object v0
.end method

.method private static DW(Labcd/Qs;Labcd/Qs;)Labcd/Qs;
    .registers 3

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->vy()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Labcd/Qs;->FH:Labcd/Qs;

    if-ne p0, v0, :cond_3

    sget-object v0, Labcd/Qs;->vy:Labcd/Qs;

    if-ne p1, v0, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p1

    goto :goto_0
.end method

.method private static DW()Labcd/an;
    .registers 2

    new-instance v0, Labcd/an;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;
    .registers 3

    invoke-static {p0, p1}, Labcd/bn;->DW(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/bn;)Labcd/Tm;
    .registers 2

    iget-object v0, p0, Labcd/bn;->j6:Labcd/Tm;

    return-object v0
.end method

.method static synthetic j6()Labcd/an;
    .registers 1

    invoke-static {}, Labcd/bn;->DW()Labcd/an;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public j6(Labcd/Hm;Labcd/Om;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Hm;->FH()I

    move-result v1

    iget-object v0, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v0, p2}, Labcd/bn$a;->j6(Labcd/Om;)V

    :try_start_0
    invoke-virtual {p1}, Labcd/Hm;->Hw()I

    move-result v0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/bn;->DW:Labcd/Lm;

    iget-object v3, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v2, v0, v3}, Labcd/Lm;->j6(ILabcd/Lm$c;)I

    move-result v2

    iget-object v3, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v3, v0}, Labcd/bn$a;->j6(I)V
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Labcd/Om;->j6(Labcd/Vt;)V

    throw v0

    :cond_0
    return-void
.end method
