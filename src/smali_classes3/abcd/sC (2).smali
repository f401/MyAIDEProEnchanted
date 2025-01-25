.class public Labcd/sC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sC$a;,
        Labcd/sC$a$a;,
        Labcd/sC$a$b;,
        Labcd/sC$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j6:Labcd/eC;


# instance fields
.field protected DW:Labcd/kC;

.field protected FH:Labcd/mC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LmC<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected Hw:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field Zo:Labcd/sC$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LsC<",
            "TS;>.a;"
        }
    .end annotation
.end field

.field protected v5:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/rC;

    invoke-direct {v0}, Labcd/rC;-><init>()V

    sput-object v0, Labcd/sC;->j6:Labcd/eC;

    return-void
.end method

.method private constructor <init>(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/kC;",
            "LmC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "Labcd/jC;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/sC$a;

    invoke-direct {v0, p0}, Labcd/sC$a;-><init>(Labcd/sC;)V

    iput-object v0, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iput-object p1, p0, Labcd/sC;->DW:Labcd/kC;

    iput-object p2, p0, Labcd/sC;->FH:Labcd/mC;

    iput-object p3, p0, Labcd/sC;->Hw:Labcd/lC;

    iput-object p4, p0, Labcd/sC;->v5:Labcd/lC;

    invoke-direct {p0, p5}, Labcd/sC;->j6(Labcd/jC;)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;Labcd/sC;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Labcd/sC;-><init>(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V

    return-void
.end method

.method private j6(Labcd/jC;)V
    .registers 6

    iget-object v0, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iget v1, p1, Labcd/jC;->j6:I

    iget v2, p1, Labcd/jC;->DW:I

    iget v3, p1, Labcd/jC;->FH:I

    iget p1, p1, Labcd/jC;->Hw:I

    invoke-virtual {v0, v1, v2, v3, p1}, Labcd/sC$a;->DW(IIII)V

    iget-object p1, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iget v0, p1, Labcd/sC$a;->FH:I

    iget v1, p1, Labcd/sC$a;->Hw:I

    if-lt v0, v1, :cond_1c

    iget v0, p1, Labcd/sC$a;->v5:I

    iget p1, p1, Labcd/sC$a;->Zo:I

    if-lt v0, p1, :cond_1c

    return-void

    :cond_1c
    iget-object p1, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iget v0, p1, Labcd/sC$a;->FH:I

    iget v1, p1, Labcd/sC$a;->Hw:I

    iget v2, p1, Labcd/sC$a;->v5:I

    iget p1, p1, Labcd/sC$a;->Zo:I

    invoke-virtual {p0, v0, v1, v2, p1}, Labcd/sC;->j6(IIII)V

    return-void
.end method


# virtual methods
.method protected j6(IIII)V
    .registers 9

    iget-object v0, p0, Labcd/sC;->Zo:Labcd/sC$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Labcd/sC$a;->j6(IIII)Labcd/jC;

    move-result-object v0

    iget v1, v0, Labcd/jC;->j6:I

    if-lt p1, v1, :cond_e

    iget v1, v0, Labcd/jC;->FH:I

    if-ge p3, v1, :cond_1f

    :cond_e
    iget v1, v0, Labcd/jC;->FH:I

    iget v2, v0, Labcd/jC;->j6:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iget-object v3, v3, Labcd/sC$a;->DW:Labcd/sC$a$b;

    invoke-virtual {v3, v1, v2}, Labcd/sC$a$b;->VH(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, p3, v1}, Labcd/sC;->j6(IIII)V

    :cond_1f
    invoke-virtual {v0}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object p1

    sget-object p3, Labcd/jC$a;->Hw:Labcd/jC$a;

    if-eq p1, p3, :cond_30

    iget-object p1, p0, Labcd/sC;->DW:Labcd/kC;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_30
    iget p1, v0, Labcd/jC;->DW:I

    if-gt p2, p1, :cond_38

    iget p1, v0, Labcd/jC;->Hw:I

    if-le p4, p1, :cond_49

    :cond_38
    iget p1, v0, Labcd/jC;->Hw:I

    iget p3, v0, Labcd/jC;->DW:I

    sub-int/2addr p1, p3

    iget-object v0, p0, Labcd/sC;->Zo:Labcd/sC$a;

    iget-object v0, v0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {v0, p1, p3}, Labcd/sC$a$b;->VH(II)I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p3, p2, p1, p4}, Labcd/sC;->j6(IIII)V

    :cond_49
    return-void
.end method
