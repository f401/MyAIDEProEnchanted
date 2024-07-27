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
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_5

    if-ltz p2, :cond_4

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-ltz p6, :cond_2

    iput p1, p0, Labcd/Qm$a;->j6:I

    iput p2, p0, Labcd/Qm$a;->DW:I

    iput-object p3, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iput-object p4, p0, Labcd/Qm$a;->Hw:Labcd/Js;

    iput-object p5, p0, Labcd/Qm$a;->v5:Labcd/Js;

    iput p6, p0, Labcd/Qm$a;->Zo:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "(descriptor == null) && (signature == null)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Qm$a;->v5:Labcd/Js;

    return-object v0
.end method

.method static synthetic j6(Labcd/Qm$a;)Labcd/Js;
    .registers 2

    invoke-direct {p0}, Labcd/Qm$a;->FH()Labcd/Js;

    move-result-object v0

    return-object v0
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

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/Qm$a;->DW:I

    iget v1, p1, Labcd/Qm$a;->DW:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/Qm$a;->Zo:I

    iget v1, p1, Labcd/Qm$a;->Zo:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iget-object v1, p1, Labcd/Qm$a;->FH:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/Js;)Labcd/Qm$a;
    .registers 9

    new-instance v0, Labcd/Qm$a;

    iget v1, p0, Labcd/Qm$a;->j6:I

    iget v2, p0, Labcd/Qm$a;->DW:I

    iget-object v3, p0, Labcd/Qm$a;->FH:Labcd/Js;

    iget-object v4, p0, Labcd/Qm$a;->Hw:Labcd/Js;

    iget v6, p0, Labcd/Qm$a;->Zo:I

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Labcd/Qm$a;-><init>(IILabcd/Js;Labcd/Js;Labcd/Js;I)V

    return-object v0
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
    .registers 5

    iget v0, p0, Labcd/Qm$a;->Zo:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Labcd/Qm$a;->j6:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Labcd/Qm$a;->DW:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
