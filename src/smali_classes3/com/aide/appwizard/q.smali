.class Lcom/aide/appwizard/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Lcom/aide/appwizard/r;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, 0x12b70ac1ea2df16cL  # 1.63186313817039E-218

    const-class v4, Lcom/aide/appwizard/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/r;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/appwizard/q;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x334dc9be5792ee0L
    .end annotation

    const-wide v0, 0x21c360bb7498bfb0L  # 4.849510826757E-146

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/appwizard/p;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/p;-><init>(Lcom/aide/appwizard/q;)V

    invoke-virtual {v2, p1}, Lcom/aide/appwizard/p;->j6(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/q;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
