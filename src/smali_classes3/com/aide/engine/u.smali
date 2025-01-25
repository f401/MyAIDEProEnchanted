.class public Lcom/aide/engine/u;
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
        field = 0xf14bd0fe8663720L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/u;

    const-wide v1, -0x482010d000bd1b38L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/engine/s;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xb68c05185a99b27L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/u;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/u;->FH:Lcom/aide/engine/s;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/u;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x238e79c543e41070L  # -2.037978298654023E137

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/engine/u;->FH:Lcom/aide/engine/s;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/u;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
