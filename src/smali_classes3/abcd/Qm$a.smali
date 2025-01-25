.class public Labcd/Qm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Labcd/Js;

.field private final Hw:Labcd/Js;

.field private final Zo:I

.field private final j6:I

.field private final v5:Labcd/Js;


# direct methods
.method public constructor <init>(IILabcd/Js;Labcd/Js;Labcd/Js;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_3d

    if-ltz p2, :cond_35

    if-eqz p3, :cond_2d

    if-nez p4, :cond_16

    if-eqz p5, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(descriptor == null) && (signature == null)"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    if-ltz p6, :cond_25

    iput p1, p0, Labcd/Qm$a;->j6:I

    iput p2, p0, Labcd/Qm$a;->DW:I

    iput-object p3, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iput-object p4, p0, Labcd/Qm$a;->Hw:Labcd/Js;

    iput-object p5, p0, Labcd/Qm$a;->v5:Labcd/Js;

    iput p6, p0, Labcd/Qm$a;->Zo:I

    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Qm$a;->v5:Labcd/Js;

    return-object v0
.end method

.method static synthetic j6(Labcd/Qm$a;)Labcd/Js;
    .registers 1

    invoke-direct {p0}, Labcd/Qm$a;->FH()Labcd/Js;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/Qm$a;->Hw:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public DW(Labcd/Qm$a;)Z
    .registers 4

    iget v0, p0, Labcd/Qm$a;->j6:I

    iget v1, p1, Labcd/Qm$a;->j6:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Labcd/Qm$a;->DW:I

    iget v1, p1, Labcd/Qm$a;->DW:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Labcd/Qm$a;->Zo:I

    iget v1, p1, Labcd/Qm$a;->Zo:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iget-object p1, p1, Labcd/Qm$a;->FH:Labcd/Js;

    invoke-virtual {v0, p1}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public j6(Labcd/Js;)Labcd/Qm$a;
    .registers 10

    new-instance v7, Labcd/Qm$a;

    iget v1, p0, Labcd/Qm$a;->j6:I

    iget v2, p0, Labcd/Qm$a;->DW:I

    iget-object v3, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iget-object v4, p0, Labcd/Qm$a;->Hw:Labcd/Js;

    iget v6, p0, Labcd/Qm$a;->Zo:I

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Labcd/Qm$a;-><init>(IILabcd/Js;Labcd/Js;Labcd/Js;I)V

    return-object v7
.end method

.method public j6()Labcd/Vr;
    .registers 3

    iget-object v0, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iget-object v1, p0, Labcd/Qm$a;->v5:Labcd/Js;

    invoke-static {v0, v1}, Labcd/Vr;->j6(Labcd/Js;Labcd/Js;)Labcd/Vr;

    move-result-object v0

    return-object v0
.end method

.method public j6(II)Z
    .registers 4

    iget v0, p0, Labcd/Qm$a;->Zo:I

    if-ne p2, v0, :cond_f

    iget p2, p0, Labcd/Qm$a;->j6:I

    if-lt p1, p2, :cond_f

    iget v0, p0, Labcd/Qm$a;->DW:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method
