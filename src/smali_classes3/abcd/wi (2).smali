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
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, 0x71b0c0f6c9f2618L

    const-class v4, Labcd/wi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x32850ba9027470a9L  # -1.7741469684872657E65

    :try_start_5
    sget-boolean v2, Labcd/wi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/wi;->Hw:Labcd/Di;

    iget-object v2, v2, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->tp(Labcd/Ji;)Labcd/Ji$b;

    move-result-object v2

    iget-object v3, p0, Labcd/wi;->FH:Ljava/util/List;

    invoke-interface {v2, v3}, Labcd/Ji$b;->j6(Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/wi;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method
