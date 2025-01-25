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
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, 0x71b3e2d72404a69L

    const-class v4, Labcd/xi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x327ea6952f61a800L  # -2.2838663496478736E65

    :try_start_5
    sget-boolean v2, Labcd/xi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/xi;->Hw:Labcd/Di;

    iget-object v2, v2, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->tp(Labcd/Ji;)Labcd/Ji$b;

    move-result-object v2

    iget-object v3, p0, Labcd/xi;->FH:Labcd/Jw;

    invoke-interface {v2, v3}, Labcd/Ji$b;->j6(Labcd/Jw;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/xi;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method
