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
    .registers 5

    const-wide v0, -0x20d2e6e11ba0079cL  # -2.9765480524345248E150

    const-wide v2, 0x4a6f9f0b1a51223L  # 3.017830007203463E-286

    const-class v4, Labcd/wl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x677f2bd3b0e6430L
    .end annotation

    const-wide v0, -0x4ca60853670fe3acL  # -2.524937631998156E-61

    :try_start_5
    sget-boolean v2, Labcd/wl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {}, Lcom/aide/ui/U;->KD()Labcd/Dl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Dl;->DW()Z

    move-result v2

    iget-object v3, p0, Labcd/wl;->FH:Labcd/Cl;

    invoke-static {v3}, Labcd/Cl;->j6(Labcd/Cl;)Lcom/aide/ui/trainer/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g;->Hw()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_28
    :goto_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->KD()Labcd/Dl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->tp()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->Zo()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v10

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v11

    move-object v3, v4

    move v4, v2

    invoke-virtual/range {v3 .. v11}, Labcd/Dl;->j6(ZLjava/lang/String;JJI[Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_59

    goto :goto_28

    :cond_58
    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Labcd/wl;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    goto :goto_63

    :goto_62
    throw v2

    :goto_63
    goto :goto_62
.end method
