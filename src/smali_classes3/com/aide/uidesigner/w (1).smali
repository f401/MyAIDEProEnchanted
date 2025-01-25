.class final Lcom/aide/uidesigner/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/L;->Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/uidesigner/s;

.field final Zo:Ljava/lang/String;

.field final v5:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1dd98fa673d10c90L  # -6.460833633665477E164

    const-wide v2, 0x30186b156a135017L  # 5.272012895698324E-77

    const-class v4, Lcom/aide/uidesigner/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/uidesigner/w;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/uidesigner/w;->Hw:Lcom/aide/uidesigner/s;

    iput-object p3, p0, Lcom/aide/uidesigner/w;->v5:Lcom/aide/uidesigner/a;

    iput-object p4, p0, Lcom/aide/uidesigner/w;->Zo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd935b304cf1a14dL
    .end annotation

    const-wide v0, -0x1646a81c7add3038L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/w;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2e2022fc803d9c44L
    .end annotation

    const-wide v0, -0x212536941e05564dL  # -8.562858146868106E148

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android/R.attr.html#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/uidesigner/w;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/w;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28a63dfe953f179fL
    .end annotation

    const-wide v0, 0x1c9f903338c78000L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/w;->Zo:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/w;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2eb7594479b33b58L
    .end annotation

    const-wide v0, -0x9f26a9565f0897bL  # -4.548604093936732E260

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/w;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7d1b98dacd00af7L
    .end annotation

    const-wide v0, 0x5ede4d411cb2128L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/w;->FH:Landroid/app/Activity;

    iget-object v3, p0, Lcom/aide/uidesigner/w;->Hw:Lcom/aide/uidesigner/s;

    iget-object v4, p0, Lcom/aide/uidesigner/w;->v5:Lcom/aide/uidesigner/a;

    invoke-static {v2, v3, v4}, Lcom/aide/uidesigner/ka;->v5(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/w;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
