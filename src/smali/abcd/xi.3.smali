.class Labcd/xi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Di;->run()V
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
.field final FH:Labcd/Jw;

.field final Hw:Labcd/Di;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/xi;

    const-wide v2, 0x3cc87a6d76bb9749L    # 6.7940744100194515E-16

    const-wide v4, 0x71b3e2d72404a69L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Di;Labcd/Jw;)V
    .registers 3

    iput-object p1, p0, Labcd/xi;->Hw:Labcd/Di;

    iput-object p2, p0, Labcd/xi;->FH:Labcd/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2b5ea331f6d3ae0L
    .end annotation

    const-wide v2, -0x327ea6952f61a800L    # -2.2838663496478736E65

    :try_start_0
    sget-boolean v0, Labcd/xi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x327ea6952f61a800L    # -2.2838663496478736E65

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/xi;->Hw:Labcd/Di;

    iget-object v0, v0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v0}, Labcd/Ji;->tp(Labcd/Ji;)Labcd/Ji$b;

    move-result-object v0

    iget-object v1, p0, Labcd/xi;->FH:Labcd/Jw;

    invoke-interface {v0, v1}, Labcd/Ji$b;->j6(Labcd/Jw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
