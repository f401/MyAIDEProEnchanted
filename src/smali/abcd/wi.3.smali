.class Labcd/wi;
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
.field final FH:Ljava/util/List;

.field final Hw:Labcd/Di;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/wi;

    const-wide v2, 0x3cc87a6d76bb9749L    # 6.7940744100194515E-16

    const-wide v4, 0x71b0c0f6c9f2618L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Di;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Labcd/wi;->Hw:Labcd/Di;

    iput-object p2, p0, Labcd/wi;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x567603b46376b5bL
    .end annotation

    const-wide v2, -0x32850ba9027470a9L    # -1.7741469684872657E65

    :try_start_0
    sget-boolean v0, Labcd/wi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32850ba9027470a9L    # -1.7741469684872657E65

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/wi;->Hw:Labcd/Di;

    iget-object v0, v0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v0}, Labcd/Ji;->tp(Labcd/Ji;)Labcd/Ji$b;

    move-result-object v0

    iget-object v1, p0, Labcd/wi;->FH:Ljava/util/List;

    invoke-interface {v0, v1}, Labcd/Ji$b;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
