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
    .registers 5

    const-wide v0, -0x20d2e6e11ba0079cL  # -2.9765480524345248E150

    const-wide v2, 0x4a761bcb8d490dbL

    const-class v4, Labcd/yl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2061e2b938a32f44L
    .end annotation

    const-wide v0, -0x5c21f8b88ec6b298L  # -6.455273550752087E-136

    :try_start_5
    sget-boolean v2, Labcd/yl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yl;->FH:Labcd/Cl;

    invoke-static {v2}, Labcd/Cl;->gn(Labcd/Cl;)Lcom/aide/ui/trainer/g$i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Labcd/Cl;->j6(Lcom/aide/ui/trainer/g$i;Z)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/yl;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
