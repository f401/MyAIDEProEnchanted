.class public Lcom/aide/engine/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/s;


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


# instance fields
.field private final FH:Lcom/aide/engine/s;
    .annotation runtime Labcd/ru;
        field = 0x120a72ebc39ba80L
    .end annotation
.end field

.field private final Hw:Lcom/aide/engine/s;
    .annotation runtime Labcd/ru;
        field = -0x1af96b8c96f66985L
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1c7aaa68a8769043L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1d5529d069b1b367L    # -1.9781359397861844E167

    const-class v0, Lcom/aide/engine/v;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/engine/s;Lcom/aide/engine/s;Ljava/lang/String;)V
    .registers 14

    const-wide v8, 0x58d0111a329500a8L    # 6.48257934653235E119

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x58d0111a329500a8L    # 6.48257934653235E119

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/engine/v;->FH:Lcom/aide/engine/s;

    iput-object p1, p0, Lcom/aide/engine/v;->Hw:Lcom/aide/engine/s;

    iput-object p3, p0, Lcom/aide/engine/v;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/v;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1f18dc3c231ba141L    # 7.07307941577339E-159

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f18dc3c231ba141L    # 7.07307941577339E-159

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/v;->Hw:Lcom/aide/engine/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/engine/v;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/engine/v;->FH:Lcom/aide/engine/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
