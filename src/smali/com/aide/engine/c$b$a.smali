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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2162c4ce2a6750b4L    # 7.339187267992027E-148

    const-class v0, Lcom/aide/engine/c$b$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xa41cfcb74c98d8L
    .end annotation

    const-wide v4, -0xece5c56a57fb5efL    # -1.794725436208708E237

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xece5c56a57fb5efL    # -1.794725436208708E237

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, 0x58b170c27d994118L    # 1.759204905068125E119

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x58b170c27d994118L    # 1.759204905068125E119

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$a;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1530c14b87a720a8L
    .end annotation

    const-wide v2, 0xd9c98c825f6afa1L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd9c98c825f6afa1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/aide/engine/M;->j6(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x454f8051d29d600L
    .end annotation

    const-wide v2, -0x3435af028a1bc8dfL    # -1.2905509070823135E57

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3435af028a1bc8dfL    # -1.2905509070823135E57

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/aide/engine/M;->VH(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2107dba197c35f61L
    .end annotation

    const-wide v2, -0x20f4c6836aff9938L    # -6.962235149331906E149

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20f4c6836aff9938L    # -6.962235149331906E149

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x819511a17bf4050L
    .end annotation

    const-wide v2, -0x1534663146a05c63L    # -2.769165321345955E206

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1534663146a05c63L    # -2.769165321345955E206

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$a;->Hw:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aide/engine/M;->VH(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
