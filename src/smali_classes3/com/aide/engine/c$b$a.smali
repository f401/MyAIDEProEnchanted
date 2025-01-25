.class Lcom/aide/engine/c$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field private FH:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x2a1a2629365422b5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$a;

    const-wide v1, 0x2162c4ce2a6750b4L  # 7.339187267992027E-148

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa41cfcb74c98d8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xece5c56a57fb5efL  # -1.794725436208708E237

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x58b170c27d994118L  # 1.759204905068125E119

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$a;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x58b170c27d994118L  # 1.759204905068125E119

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1530c14b87a720a8L
    .end annotation

    const-wide v0, 0xd9c98c825f6afa1L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/aide/engine/M;->j6(Ljava/util/List;)V

    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x454f8051d29d600L
    .end annotation

    const-wide v0, -0x3435af028a1bc8dfL  # -1.2905509070823135E57

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/aide/engine/M;->VH(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2107dba197c35f61L
    .end annotation

    const-wide v0, -0x20f4c6836aff9938L  # -6.962235149331906E149

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x819511a17bf4050L
    .end annotation

    const-wide v0, -0x1534663146a05c63L  # -2.769165321345955E206

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/M;->VH(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method
