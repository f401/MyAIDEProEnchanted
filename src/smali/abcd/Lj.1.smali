.class Labcd/Lj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$b;->call()Ljava/lang/Void;
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

.field final Hw:Labcd/Kj$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Lj;

    const-wide v2, 0x18a49cdb4ef23149L    # 5.782931895036349E-190

    const-wide v4, -0x9c08b8746eb6d08L    # -3.869060214786842E261

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$b;Z)V
    .registers 3

    iput-object p1, p0, Labcd/Lj;->Hw:Labcd/Kj$b;

    iput-boolean p2, p0, Labcd/Lj;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2b414d67e7f8869L
    .end annotation

    const-wide v2, 0x31a0adc44bf99eddL    # 1.208301179373236E-69

    :try_start_0
    sget-boolean v0, Labcd/Lj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x31a0adc44bf99eddL    # 1.208301179373236E-69

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Lj;->Hw:Labcd/Kj$b;

    iget-object v0, v0, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-boolean v0, p0, Labcd/Lj;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Lj;->Hw:Labcd/Kj$b;

    invoke-static {v0}, Labcd/Kj$b;->j6(Labcd/Kj$b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Lj;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
