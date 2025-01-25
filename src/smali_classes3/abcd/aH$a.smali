.class Labcd/aH$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final DW:J

.field final FH:I

.field final Hw:I

.field final j6:Labcd/aH$a;

.field final v5:J


# direct methods
.method constructor <init>(Labcd/aH$a;JIIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/aH$a;->j6:Labcd/aH$a;

    iput-wide p2, p0, Labcd/aH$a;->DW:J

    iput p4, p0, Labcd/aH$a;->FH:I

    iput p5, p0, Labcd/aH$a;->Hw:I

    iput-wide p6, p0, Labcd/aH$a;->v5:J

    return-void
.end method

.method private DW(Labcd/aH;Labcd/wH;)Labcd/FE;
    .registers 12

    new-instance v8, Labcd/OG;

    iget-wide v1, p0, Labcd/aH$a;->DW:J

    iget-wide v3, p0, Labcd/aH$a;->v5:J

    iget v5, p0, Labcd/aH$a;->Hw:I

    iget-object v7, p2, Labcd/wH;->v5:Labcd/GG;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Labcd/OG;-><init>(JJILabcd/aH;Labcd/GG;)V

    return-object v8
.end method


# virtual methods
.method j6(Labcd/aH;Labcd/wH;)Labcd/FE;
    .registers 5

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Labcd/aH$a;->j6:Labcd/aH$a;

    if-nez v1, :cond_a

    invoke-direct {v0, p1, p2}, Labcd/aH$a;->DW(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object p1

    return-object p1

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method
