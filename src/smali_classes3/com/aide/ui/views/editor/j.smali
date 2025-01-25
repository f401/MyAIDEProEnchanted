.class public Lcom/aide/ui/views/editor/j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static final DW:Lcom/aide/ui/views/editor/j;

.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final FH:Lcom/aide/ui/views/editor/j;

.field public static final Hw:Lcom/aide/ui/views/editor/j;

.field public static final VH:Lcom/aide/ui/views/editor/j;

.field public static final Zo:Lcom/aide/ui/views/editor/j;

.field public static final gn:Lcom/aide/ui/views/editor/j;

.field public static final j6:Lcom/aide/ui/views/editor/j;

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final u7:Lcom/aide/ui/views/editor/j;

.field public static final v5:Lcom/aide/ui/views/editor/j;


# instance fields
.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x2917ceefad638f9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x19567b0580d287ddL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2b00a57a3f254bc8L

    :try_start_6
    const-class v3, Lcom/aide/ui/views/editor/j;

    const-wide v4, 0x5a18e5b0ef71afacL  # 1.0533416450826525E126

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/views/editor/j;

    const/16 v4, -0x100

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->j6:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const/high16 v5, -0x10000

    invoke-direct {v3, v5}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->DW:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const v5, -0xff0100

    invoke-direct {v3, v5}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->FH:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->Hw:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const v4, -0xffff01

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->v5:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->Zo:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const v4, -0x555556

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->VH:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->gn:Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/aide/ui/views/editor/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    sput-object v3, Lcom/aide/ui/views/editor/j;->u7:Lcom/aide/ui/views/editor/j;
    :try_end_67
    .catchall {:try_start_6 .. :try_end_67} :catchall_68

    return-void

    :catchall_68
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v4, :cond_70

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_70
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x435a16572e01390L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/ui/views/editor/j;->we:I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public constructor <init>(III)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x50923075f208f88L  # 2.1130250006099184E-284

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/editor/j;->we:I
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x50923075f208f88L  # 2.1130250006099184E-284

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x61ff81a002adfb0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/j;->we:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0xf05253e69f465b5L  # 2.597831835538909E-236

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/j;->we:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0xfc48d2221cbfa53L  # -4.2614600156864733E232

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/j;->we:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const-wide v0, -0x30f78e03fa3ba98L  # -6.597381165307802E293

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/ui/views/editor/j;

    if-eqz v2, :cond_1b

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/views/editor/j;

    iget v2, v2, Lcom/aide/ui/views/editor/j;->we:I

    iget p1, p0, Lcom/aide/ui/views/editor/j;->we:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1d

    if-ne v2, p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x60874400ee55180L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/j;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/editor/j;->we:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/j;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
