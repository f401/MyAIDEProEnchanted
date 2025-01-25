.class Lcom/aide/ui/build/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/m;->j6(Z)V
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
.field final FH:Z

.field final Hw:Lcom/aide/ui/build/android/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a0fd62b6e9347dfL  # -8.003727904083244E28

    const-class v4, Lcom/aide/ui/build/android/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/m;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iput-boolean p2, p0, Lcom/aide/ui/build/android/k;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1373172974f887fdL
    .end annotation

    const-wide v0, 0x315b2a1d227c763dL  # 6.149826456841983E-71

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/android/k;->FH:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->v5(Lcom/aide/ui/build/android/B;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_52

    :cond_3b
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Sf()V

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->gn(Lcom/aide/ui/build/android/B;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    goto :goto_81

    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_82

    if-eqz v4, :cond_5f

    const-string v4, "运行 aidl..."

    goto :goto_61

    .line 99
    :cond_5f
    const-string v4, "Running aidl..."

    .line 0
    :goto_61
    const/16 v5, 0xa

    :try_start_63
    invoke-static {v2, v4, v5, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->VH(Lcom/aide/ui/build/android/B;)Lcom/aide/ui/build/android/a;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v3, v3, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v3}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/a;->j6(Ljava/util/List;)V

    goto :goto_81

    :cond_7a
    iget-object v2, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v2, v2, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->u7(Lcom/aide/ui/build/android/B;)V
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_82

    :goto_81
    return-void

    .line 99
    :catchall_82
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/k;->DW:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    throw v2
.end method
