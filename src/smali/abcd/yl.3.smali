.class Labcd/yl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Cl;->KD()V
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

    const-class v0, Labcd/yl;

    const-wide v2, -0x20d2e6e11ba0079cL    # -2.9765480524345248E150

    const-wide v4, 0x4a761bcb8d490dbL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Cl;)V
    .registers 2

    iput-object p1, p0, Labcd/yl;->FH:Labcd/Cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2061e2b938a32f44L
    .end annotation

    const-wide v4, -0x5c21f8b88ec6b298L    # -6.455273550752087E-136

    :try_start_0
    sget-boolean v0, Labcd/yl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5c21f8b88ec6b298L    # -6.455273550752087E-136

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/yl;->FH:Labcd/Cl;

    iget-object v1, p0, Labcd/yl;->FH:Labcd/Cl;

    invoke-static {v1}, Labcd/Cl;->gn(Labcd/Cl;)Lcom/aide/ui/trainer/g$i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Cl;->j6(Lcom/aide/ui/trainer/g$i;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
