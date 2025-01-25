.class Lcom/aide/engine/c$b$f;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/eb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
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
.field final FH:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$f;

    const-wide v1, -0x13895b85be4c1598L  # -3.0490259742413414E214

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1e4ae50f17c80c1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x15257396ebe67dc0L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$f;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$f;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$f;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$f;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x58582a3baab9c11L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$f;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$f;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x58582a3baab9c11L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public j6(Labcd/Da;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3efa07bc6e37a17L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$f;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3cd9b9d521976888L  # 1.4280747903259221E-15

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$f;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->Ev(Lcom/aide/engine/c;)Lcom/aide/engine/p;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/aide/engine/c$b$f;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->Ev(Lcom/aide/engine/c;)Lcom/aide/engine/p;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/aide/engine/p;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$f;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x3cd9b9d521976888L  # 1.4280747903259221E-15

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method
