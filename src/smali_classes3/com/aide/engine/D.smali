.class public Lcom/aide/engine/D;
.super Ljava/lang/Object;


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
.field private final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1eae5e70739ad1a9L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2ea6cf0b47cd60b7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/D;

    const-wide v1, 0xb6bfdc5bd04a5L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/D;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x11ac74e8745b5240L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/D;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/D;->Hw:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/D;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x11ac74e8745b5240L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2ffd548642c8cd9L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/engine/D;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/D;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/D;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
