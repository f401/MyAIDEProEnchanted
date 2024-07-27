.class public Labcd/ld;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x6ce871bc78dfa13L
    .end annotation
.end field

.field private final Hw:Labcd/nd;
    .annotation runtime Labcd/ru;
        field = 0x329b37e559f2adfcL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x2e7d7d5e242adb29L
    .end annotation
.end field

.field private Zo:Labcd/Sa;
    .annotation runtime Labcd/ru;
        field = -0xf2c3a4ff763ce24L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x32f6ec06e8ad0548L
    .end annotation
.end field

.field private u7:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x32dde3e76897ecc8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb",
            "<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/Ta;
    .annotation runtime Labcd/ru;
        field = -0xf32145f908f9b80L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x10a2e60bace6907cL

    const-class v0, Labcd/ld;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/nd;)V
    .registers 10

    const-wide v2, -0x160e037f9354fe98L    # -2.2028238600552355E202

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x160e037f9354fe98L    # -2.2028238600552355E202

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/ld;->u7:Labcd/wb;

    iput-object p1, p0, Labcd/ld;->FH:Labcd/La;

    iput-object p2, p0, Labcd/ld;->Hw:Labcd/nd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ld;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x206d6d26dde96f25L
    .end annotation

    const-wide v4, 0x42a41125f63f0d48L    # 1.103194194727064E13

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x42a41125f63f0d48L    # 1.103194194727064E13

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/ld;->VH:I

    iget-object v1, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v1, v2, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Labcd/ld;->gn:I

    iget-object v1, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v1, v2, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x488465792c57d000L
    .end annotation

    const-wide v10, -0x33185ad49c35088dL    # -3.039708857558614E62

    const/4 v6, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33185ad49c35088dL    # -3.039708857558614E62

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ld;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->P8(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->Hw(Labcd/Sa;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v7, p0, Labcd/ld;->u7:Labcd/wb;

    iget-object v0, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v8

    new-instance v0, Labcd/qa$a;

    iget-object v1, p0, Labcd/ld;->Hw:Labcd/nd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1f4

    invoke-direct/range {v0 .. v5}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v7, v8, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->we(I)I

    move-result v1

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1, v0}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/ld;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    :goto_1
    iget-object v0, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result v0

    if-gt v7, v0, :cond_1

    iget-object v8, p0, Labcd/ld;->u7:Labcd/wb;

    new-instance v0, Labcd/qa$a;

    iget-object v1, p0, Labcd/ld;->Hw:Labcd/nd;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-direct/range {v0 .. v5}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v8, v7, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v10, v11, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public DW(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb",
            "<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1f16e3c580d7b090L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p3, p0, Labcd/ld;->gn:I

    iput p4, p0, Labcd/ld;->VH:I

    iput-object p2, p0, Labcd/ld;->v5:Labcd/Ta;

    iput-object p1, p0, Labcd/ld;->Zo:Labcd/Sa;

    iget-object v0, p0, Labcd/ld;->u7:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/ld;->j6(I)V

    iget-object v0, p0, Labcd/ld;->u7:Labcd/wb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ld;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x1f16e3c580d7b090L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb",
            "<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xd69f264970c128bL    # -9.411247356621002E243

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/ld;->DW(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ld;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0xd69f264970c128bL    # -9.411247356621002E243

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Sa;Labcd/Ta;II)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x21b32a0c5591298fL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ld;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->Hw()Labcd/va;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/va;->j6(Labcd/na;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Labcd/md;->j6:Labcd/md;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3, p4}, Labcd/Sa;->J8(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/ld;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string v6, "* "

    move v4, v2

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ld;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x21b32a0c5591298fL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
