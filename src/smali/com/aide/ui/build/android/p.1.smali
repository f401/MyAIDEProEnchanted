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
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/p;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a103f6761cb70d0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1f0a681bb1627cddL
    .end annotation

    const-wide v4, 0x4ac38baff738c32cL    # 1.4625794556360334E52

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ac38baff738c32cL    # 1.4625794556360334E52

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V

    iget-object v0, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v0, v0, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->v5(Lcom/aide/ui/build/android/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v0, v0, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->gn(Lcom/aide/ui/build/android/B;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v0, v0, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/android/p;->FH:Lcom/aide/ui/build/android/r;

    iget-object v0, v0, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->we(Lcom/aide/ui/build/android/B;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/p;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
