.class Labcd/wl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Cl;->vJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final FH:Labcd/Cl;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/wl;

    const-wide v2, -0x20d2e6e11ba0079cL    # -2.9765480524345248E150

    const-wide v4, 0x4a6f9f0b1a51223L    # 3.017830007203463E-286

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Cl;)V
    .registers 2

    iput-object p1, p0, Labcd/wl;->FH:Labcd/Cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x677f2bd3b0e6430L
    .end annotation

    const-wide v12, -0x4ca60853670fe3acL    # -2.524937631998156E-61

    :try_start_0
    sget-boolean v0, Labcd/wl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ca60853670fe3acL    # -2.524937631998156E-61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->KD()Labcd/Dl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Dl;->DW()Z

    move-result v2

    iget-object v0, p0, Labcd/wl;->FH:Labcd/Cl;

    invoke-static {v0}, Labcd/Cl;->j6(Labcd/Cl;)Lcom/aide/ui/trainer/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->KD()Labcd/Dl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->tp()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->Zo()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v8

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Labcd/Dl;->j6(ZLjava/lang/String;JJI[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v12, v13, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method
