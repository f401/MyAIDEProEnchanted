.class Lcom/aide/ui/build/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/w;->j6(Z)V
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

.field final Hw:Lcom/aide/ui/build/android/w;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/u;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a10a8a09ac8b103L    # -7.759729874152476E28

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/w;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iput-boolean p2, p0, Lcom/aide/ui/build/android/u;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x85cb4496aca42b9L
    .end annotation

    const-wide v4, 0x4f2c677c01b87dccL    # 2.5092970451054283E73

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/u;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f2c677c01b87dccL    # 2.5092970451054283E73

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/android/u;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v0, v0, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v0, v0, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    iget-object v1, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v1, v1, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v1}, Lcom/aide/ui/build/android/B;->EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v2, v2, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->J0(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/u;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
