.class Labcd/Bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ch;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V
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

.field final Hw:Ljava/lang/String;

.field final VH:Labcd/Ch;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Labcd/Sk$a;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Bh;

    const-wide v2, -0x5d17df730569d4b9L    # -1.58284387075899E-140

    const-wide v4, -0x40a2e0f983cfa00L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V
    .registers 6

    iput-object p1, p0, Labcd/Bh;->VH:Labcd/Ch;

    iput-object p2, p0, Labcd/Bh;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/Bh;->Hw:Ljava/lang/String;

    iput-object p4, p0, Labcd/Bh;->v5:Ljava/lang/String;

    iput-object p5, p0, Labcd/Bh;->Zo:Labcd/Sk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x229cec4fdf9853bdL
    .end annotation

    const-wide v8, 0x5b709f5ed66e9327L    # 2.94968417755849E132

    :try_start_0
    sget-boolean v0, Labcd/Bh;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b709f5ed66e9327L    # 2.94968417755849E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    iget-object v1, p0, Labcd/Bh;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/Bh;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    iget-object v1, p0, Labcd/Bh;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/Bh;->Hw:Ljava/lang/String;

    iget-object v3, p0, Labcd/Bh;->v5:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Labcd/Bh;->Zo:Labcd/Sk$a;

    invoke-virtual/range {v0 .. v5}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Labcd/Ah;

    invoke-direct {v1, p0, v0, v6}, Labcd/Ah;-><init>(Labcd/Bh;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bh;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
