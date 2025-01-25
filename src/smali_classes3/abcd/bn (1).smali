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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_25

    if-eqz p2, :cond_1d

    iput-object p1, p0, Labcd/bn;->j6:Labcd/Tm;

    invoke-virtual {p2}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object p1

    iput-object p1, p0, Labcd/bn;->DW:Labcd/Lm;

    invoke-virtual {p2}, Labcd/Mm;->u7()Labcd/Qm;

    move-result-object p1

    iput-object p1, p0, Labcd/bn;->FH:Labcd/Qm;

    new-instance p1, Labcd/bn$a;

    invoke-direct {p1, p0}, Labcd/bn$a;-><init>(Labcd/bn;)V

    iput-object p1, p0, Labcd/bn;->Hw:Labcd/bn$a;

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "machine == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic DW(Labcd/bn;)Labcd/Qm;
    .registers 1

    iget-object p0, p0, Labcd/bn;->FH:Labcd/Qm;

    return-object p0
.end method

.method private static DW(Labcd/Qs;Labcd/Qs;)Labcd/Qs;
    .registers 3

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    if-ne p0, v0, :cond_1e

    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->vy()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object p1

    :cond_1e
    sget-object v0, Labcd/Qs;->FH:Labcd/Qs;

    if-ne p0, v0, :cond_27

    sget-object v0, Labcd/Qs;->vy:Labcd/Qs;

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p0

    return-object p0
.end method

.method private static DW()Labcd/an;
    .registers 2

    new-instance v0, Labcd/an;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;
    .registers 2

    invoke-static {p0, p1}, Labcd/bn;->DW(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/bn;)Labcd/Tm;
    .registers 1

    iget-object p0, p0, Labcd/bn;->j6:Labcd/Tm;

    return-object p0
.end method

.method static synthetic j6()Labcd/an;
    .registers 1

    invoke-static {}, Labcd/bn;->DW()Labcd/an;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public j6(Labcd/Hm;Labcd/Om;)V
    .registers 6

    invoke-virtual {p1}, Labcd/Hm;->FH()I

    move-result v0

    iget-object v1, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v1, p2}, Labcd/bn$a;->j6(Labcd/Om;)V

    :try_start_9
    invoke-virtual {p1}, Labcd/Hm;->Hw()I

    move-result p1

    :goto_d
    if-ge p1, v0, :cond_1e

    iget-object v1, p0, Labcd/bn;->DW:Labcd/Lm;

    iget-object v2, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v1, p1, v2}, Labcd/Lm;->j6(ILabcd/Lm$c;)I

    move-result v1

    iget-object v2, p0, Labcd/bn;->Hw:Labcd/bn$a;

    invoke-virtual {v2, p1}, Labcd/bn$a;->j6(I)V
    :try_end_1c
    .catch Labcd/an; {:try_start_9 .. :try_end_1c} :catch_1f

    add-int/2addr p1, v1

    goto :goto_d

    :cond_1e
    return-void

    :catch_1f
    move-exception p1

    invoke-virtual {p2, p1}, Labcd/Om;->j6(Labcd/Vt;)V

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method
