.class Labcd/Zj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ck;->DW(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)V
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

.field final Hw:Labcd/ck;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x650845e636406143L  # 4.91803584000971E178

    const-wide v2, 0x43fac95b219be3fbL  # 3.0882785843398816E19

    const-class v4, Labcd/Zj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ck;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/Zj;->Hw:Labcd/ck;

    iput-object p2, p0, Labcd/Zj;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x9c460a270d71223L
    .end annotation

    const-wide v0, 0x7be72ed2bed9d29L

    :try_start_5
    sget-boolean v2, Labcd/Zj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zj;->Hw:Labcd/ck;

    iget-object v3, p0, Labcd/Zj;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/ck;->FH(Labcd/ck;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Zj;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
