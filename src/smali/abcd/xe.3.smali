.class public Labcd/xe;
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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x3a4486e2a8cbb8c1L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0x396bbeed326dcf17L
    .end annotation
.end field

.field private v5:Landroid/view/ViewGroup;
    .annotation runtime Labcd/ru;
        field = 0x143d48ea397feef1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x181d7d84ed03e5afL    # -2.639042612073206E192

    const-class v0, Labcd/xe;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x25b2e20b5327c200L    # 4.358654988592203E-127

    :try_start_0
    sget-boolean v0, Labcd/xe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25b2e20b5327c200L    # 4.358654988592203E-127

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/xe;->Hw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Labcd/xe;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/xe;->v5:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xe;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x54c343704c7a39cL

    :try_start_0
    sget-boolean v0, Labcd/xe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x54c343704c7a39cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/xe;->Hw:Z

    iget-object v0, p0, Labcd/xe;->v5:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xe;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, -0xc2f5b8912216037L    # -7.44720674959191E249

    :try_start_0
    sget-boolean v0, Labcd/xe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc2f5b8912216037L    # -7.44720674959191E249

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Labcd/xe;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xe;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
