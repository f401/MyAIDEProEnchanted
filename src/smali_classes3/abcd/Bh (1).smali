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
    .registers 5

    const-wide v0, -0x5d17df730569d4b9L  # -1.58284387075899E-140

    const-wide v2, -0x40a2e0f983cfa00L

    const-class v4, Labcd/Bh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x229cec4fdf9853bdL
    .end annotation

    const-wide v0, 0x5b709f5ed66e9327L  # 2.94968417755849E132

    :try_start_5
    sget-boolean v2, Labcd/Bh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v2

    iget-object v3, p0, Labcd/Bh;->FH:Ljava/lang/String;

    iget-object v4, p0, Labcd/Bh;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v3

    iget-object v4, p0, Labcd/Bh;->FH:Ljava/lang/String;

    iget-object v5, p0, Labcd/Bh;->Hw:Ljava/lang/String;

    iget-object v6, p0, Labcd/Bh;->v5:Ljava/lang/String;

    const-string v7, ""

    iget-object v8, p0, Labcd/Bh;->Zo:Labcd/Sk$a;

    invoke-virtual/range {v3 .. v8}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Labcd/Ah;

    invoke-direct {v4, p0, v3, v2}, Labcd/Ah;-><init>(Labcd/Bh;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/Bh;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method
