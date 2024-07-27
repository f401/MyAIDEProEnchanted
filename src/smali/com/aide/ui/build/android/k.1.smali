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
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/k;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a0fd62b6e9347dfL    # -8.003727904083244E28

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, 0x315b2a1d227c763dL    # 6.149826456841983E-71

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x315b2a1d227c763dL    # 6.149826456841983E-71

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/android/k;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->v5(Lcom/aide/ui/build/android/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v1, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u8fd0\u884c aidl..."

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v0, v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->VH(Lcom/aide/ui/build/android/B;)Lcom/aide/ui/build/android/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v1, v1, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v1}, Lcom/aide/ui/build/android/B;->Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/android/a;->j6(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->gn(Lcom/aide/ui/build/android/B;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/k;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    .line 4294967295
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/android/k;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->u7(Lcom/aide/ui/build/android/B;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 99
    :cond_6
    const-string v0, "Running aidl..."

    goto :goto_0
.end method
