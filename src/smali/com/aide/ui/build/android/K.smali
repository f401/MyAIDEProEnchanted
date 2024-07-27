.class Lcom/aide/ui/build/android/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Labcd/Be$j;Lcom/aide/ui/build/android/O$a;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/build/android/O$a;

.field final v5:Lcom/aide/ui/build/android/O;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/K;

    const-wide v2, 0xea1aba3161df184L    # 3.392042040222766E-238

    const-wide v4, -0x293b7bc24e6c25bdL    # -9.636805954722333E109

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/O;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/build/android/K;->v5:Lcom/aide/ui/build/android/O;

    iput-object p2, p0, Lcom/aide/ui/build/android/K;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/android/K;->Hw:Lcom/aide/ui/build/android/O$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xd5c1e5dbc77b15dL
    .end annotation

    const-wide v4, 0x68ebff970947f4cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/K;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x68ebff970947f4cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/K;->v5:Lcom/aide/ui/build/android/O;

    iget-object v1, p0, Lcom/aide/ui/build/android/K;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/build/android/K;->Hw:Lcom/aide/ui/build/android/O$a;

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/K;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
