.class public Lcom/aide/engine/w;
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
.field private final FH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x1e0c0f3e1c1fa520L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/w;

    const-wide v1, -0x5175059ed6fb26adL  # -1.7358880066631906E-84

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x36439c4ff49890L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/w;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/w;->FH:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/w;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x10b8c3054ccf8068L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/w;->FH:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    if-nez v2, :cond_13

    const-string v0, "null"

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/w;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
