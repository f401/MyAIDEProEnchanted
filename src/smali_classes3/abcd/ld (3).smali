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
            "Lwb<",
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
    .registers 3

    const-class v0, Labcd/ld;

    const-wide v1, 0x10a2e60bace6907cL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/nd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x160e037f9354fe98L  # -2.2028238600552355E202

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/ld;->u7:Labcd/wb;

    iput-object p1, p0, Labcd/ld;->FH:Labcd/La;

    iput-object p2, p0, Labcd/ld;->Hw:Labcd/nd;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x160e037f9354fe98L  # -2.2028238600552355E202

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private DW(I)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x206d6d26dde96f25L
    .end annotation

    const-wide v0, 0x42a41125f63f0d48L  # 1.103194194727064E13

    :try_start_5
    sget-boolean v2, Labcd/ld;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/ld;->VH:I

    iget-object v3, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v3

    if-lt v2, v3, :cond_27

    iget v2, p0, Labcd/ld;->gn:I

    iget-object v3, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_29

    if-le v2, p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/ld;->DW:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method private j6(I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x488465792c57d000L
    .end annotation

    const-wide v0, -0x33185ad49c35088dL  # -3.039708857558614E62

    :try_start_5
    sget-boolean v2, Labcd/ld;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/ld;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, v4, p1}, Labcd/Ta;->Hw(Labcd/Sa;I)I

    move-result v2

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Labcd/ld;->u7:Labcd/wb;

    iget-object v3, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v3

    new-instance v10, Labcd/qa$a;

    iget-object v5, p0, Labcd/ld;->Hw:Labcd/nd;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x1f4

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v2, v3, v10}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_71

    :cond_40
    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_71

    iget-object v2, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v2

    add-int/2addr v2, v3

    :goto_52
    iget-object v3, p0, Labcd/ld;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result v3

    if-gt v2, v3, :cond_71

    iget-object v3, p0, Labcd/ld;->u7:Labcd/wb;

    new-instance v10, Labcd/qa$a;

    iget-object v5, p0, Labcd/ld;->Hw:Labcd/nd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v3, v2, v10}, Labcd/wb;->DW(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_71
    :goto_71
    iget-object v2, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_78
    if-ge v3, v2, :cond_86

    iget-object v4, p0, Labcd/ld;->Zo:Labcd/Sa;

    invoke-virtual {v4, p1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, v4}, Labcd/ld;->j6(I)V
    :try_end_83
    .catchall {:try_start_5 .. :try_end_83} :catchall_87

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    :cond_86
    return-void

    :catchall_87
    move-exception v2

    sget-boolean v3, Labcd/ld;->DW:Z

    if-eqz v3, :cond_94

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_94
    goto :goto_96

    :goto_95
    throw v2

    :goto_96
    goto :goto_95
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
            "Lwb<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1f16e3c580d7b090L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput p3, p0, Labcd/ld;->gn:I

    iput p4, p0, Labcd/ld;->VH:I

    iput-object p2, p0, Labcd/ld;->v5:Labcd/Ta;

    iput-object p1, p0, Labcd/ld;->Zo:Labcd/Sa;

    iget-object v0, p0, Labcd/ld;->u7:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/ld;->j6(I)V

    iget-object p1, p0, Labcd/ld;->u7:Labcd/wb;
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-object p1

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, 0x1f16e3c580d7b090L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public FH(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xd69f264970c128bL  # -9.411247356621002E243

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/ld;->DW(Labcd/Sa;Labcd/Ta;II)Labcd/wb;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0xd69f264970c128bL  # -9.411247356621002E243

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public j6(Labcd/Sa;Labcd/Ta;II)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/ld;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21b32a0c5591298fL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
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

    if-eqz v0, :cond_4f

    invoke-virtual {p1, p3, p4}, Labcd/Sa;->J8(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Labcd/ld;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    add-int/lit8 v5, p3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const-string v7, "* "

    move v3, v5

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_50

    :cond_4f
    return-void

    :catchall_50
    move-exception v0

    sget-boolean v1, Labcd/ld;->DW:Z

    if-eqz v1, :cond_6b

    const-wide v2, 0x21b32a0c5591298fL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v0
.end method
