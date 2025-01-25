.class public Lcom/aide/ui/build/javascript/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/e;
.implements Labcd/ze;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/javascript/a;

    const-wide v1, -0x3316fda177b8d4dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5c97276911b89d94L  # -4.172817648908765E-138

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private u7()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x26cf783380680b70L
    .end annotation

    const-wide v0, -0x1d46a7f722a220e4L  # -3.7362058862627063E167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->v5()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->Hw()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Labcd/ck;->j6(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/d;->j6(Z)V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    const-string v3, "Your code contains errors. Please fix them before running."

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V

    goto :goto_6b

    :cond_3e
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/main.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v4

    const/16 v5, 0xf

    invoke-static {v3, v4, v2, v5}, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6c

    :cond_6b
    :goto_6b
    return-void

    :catchall_6c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_74

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_74
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0xb3ac155ad89418L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x4b205b75c4ee203fL  # 7.833574014866474E53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x26cd35f09123fbb1L  # -4.851866244291483E121

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x29595f9de6113730L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/build/javascript/a;->gn()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo()Labcd/ze$a;
    .registers 5

    const-wide v0, 0x39f146783a790d00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v0, Labcd/ze$a;->Hw:Labcd/ze$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public gn()V
    .registers 5

    const-wide v0, -0x2ddfc833d2601218L  # -4.032783994172956E87

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/build/javascript/a;->u7()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x2e28729302fc99bcL  # 2.457914081845777E-86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x14

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x10b16bed17fd4fe9L  # -1.4487774710871855E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0x6322a9a33755c6a7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x2ee85482d3ef1cffL  # -4.4905016681778595E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
