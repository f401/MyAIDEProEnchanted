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
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a10a8a09ac8b103L  # -7.759729874152476E28

    const-class v4, Lcom/aide/ui/build/android/u;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x85cb4496aca42b9L
    .end annotation

    const-wide v0, 0x4f2c677c01b87dccL  # 2.5092970451054283E73

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/android/u;->FH:Z

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v2, v2, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v2, v2, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    iget-object v3, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v3, v3, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v3}, Lcom/aide/ui/build/android/B;->EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/build/android/u;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v4, v4, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v4}, Lcom/aide/ui/build/android/B;->J0(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/u;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
