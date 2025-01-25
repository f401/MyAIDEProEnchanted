.class Lcom/aide/ui/build/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/r;->j6()V
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
.field final FH:Lcom/aide/ui/build/android/r;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a103f6761cb70d0L

    const-class v4, Lcom/aide/ui/build/android/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/r;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1f0a681bb1627cddL
    .end annotation

    const-wide v0, 0x4ac38baff738c32cL  # 1.4625794556360334E52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Sf()V

    iget-object v2, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->v5(Lcom/aide/ui/build/android/B;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->gn(Lcom/aide/ui/build/android/B;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    goto :goto_35

    :cond_2e
    iget-object v2, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->we(Lcom/aide/ui/build/android/B;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :goto_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/p;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
